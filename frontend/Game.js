import React from 'react';

class Game extends React.Component {
  constructor (props) {
    super(props);
    // this.state = { messages: [] };
    // this.bottom = React.createRef();
  }

  // componentDidMount () {
  //   App.cable.subscriptions.create(
  //     { channel: 'ChatChannel' },
  //     {
  //       received: data => {
  //         switch (data.type) {
  //           case 'message':
  //             this.setState({
  //               messages: this.state.messages.concat(data.message)
  //             });
  //             break;
  //           case 'messages':
  //             this.setState({ messages: data.messages });
  //             break;
  //         }
  //       },
  //       speak: function (data) { return this.perform('speak', data); },
  //       load: function () { return this.perform('load'); }
  //     }
  //   );
  // }

  render () {
    return (
      <div className='chatroom-container'>
        <h1>test</h1>
      </div>
    );
  }
}

export default Game;
