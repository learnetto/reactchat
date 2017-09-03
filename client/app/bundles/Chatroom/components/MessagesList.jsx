import React from 'react'
import Message from './Message'

const MessagesList = ({messages}) => 
  <div id="messages">
    {messages.map((message, i) => {
      return(<Message key={i} message={message} />)
    })}
    <span id="messagesBottom"></span>
  </div>

export default MessagesList
