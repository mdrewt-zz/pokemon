import React from 'react';
import MessageForm from './MessageForm.js';

class ChatRoom extends React.Component {
  constructor (props) {
    super(props);
    this.state = { messages: [] };
    this.bottom = React.createRef();
  }

  componentDidMount () {
    App.cable.subscriptions.create(
      { channel: 'ChatChannel' },
      {
        received: data => {
          switch (data.type) {
            case 'message':
              this.setState({
                messages: this.state.messages.concat(data.message)
              });
              break;
            case 'messages':
              this.setState({ messages: data.messages });
              break;
          }
        },
        speak: function (data) { return this.perform('speak', data); },
        load: function () { return this.perform('load'); }
      }
    );
  }

  componentDidUpdate () {
    this.bottom.current.scrollIntoView();
  }

  render () {
    const messageList = this.state.messages.map((message, idx) => {
      return (
        <p key={idx}>
          {message}
          <div ref={this.bottom} />
        </p>
      );
    });
    return (
      <div className='chatroom-container'>
        <div>ChatRoom</div>
        <div className='message-list'>{messageList}</div>
        <MessageForm />
      </div>
    );
  }
}

export default ChatRoom;
