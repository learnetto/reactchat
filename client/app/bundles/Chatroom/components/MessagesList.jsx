import React from 'react'
import Message from './Message'

const MessagesList = ({messages}) => 
  <div id="messages">
    {messages.map((message, i) => {
      return(<Message key={i} message={message} />)
    })}
  </div>

export default MessagesList
