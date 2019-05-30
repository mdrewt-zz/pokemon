import React from 'react';
import ReactDOM from 'react-dom';
import ChatRoom from './ChatRoom.js';
import Game from './Game.js'

document.addEventListener('DOMContentLoaded', () => {
  const game = document.getElementById('game');
  const chat = document.getElementById('chat');
  ReactDOM.render(<Game />, game)
  ReactDOM.render(<ChatRoom />, chat);
});
