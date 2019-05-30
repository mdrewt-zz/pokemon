class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_for 'chat_channel'
  end

  def speak(data)
    socket = { message: data['message'], type: 'message' }
    ChatChannel.broadcast_to('chat_channel', socket)
  end

  def unsubscribed; end
end
