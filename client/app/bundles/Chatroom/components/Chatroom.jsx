import PropTypes from 'prop-types'
import React from 'react'
import MessagesList from './MessagesList'

export default class Chatroom extends React.Component {
  constructor(props, _railsContext) {
    super(props)
    let chatroom = JSON.parse(this.props.chatroom)
    this.state = {
      messages: chatroom.messages
    }
  }

  render() {
    return (
      <div>
        <MessagesList messages={this.state.messages} />
      </div>
    )
  }
}
