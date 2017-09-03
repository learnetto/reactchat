import React from 'react'

const Message = ({message}) => 
  <p>
    {message.user.name}: {message.body}
  </p>

export default Message
