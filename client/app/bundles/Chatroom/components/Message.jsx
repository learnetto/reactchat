import React from 'react'

const Message = ({message}) => 
  <p className={message.className}>
    {message.user.name}: {message.body}
  </p>

export default Message
