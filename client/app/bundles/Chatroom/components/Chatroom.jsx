import PropTypes from 'prop-types'
import React from 'react'
import MessagesList from './MessagesList'
import MessageForm from './MessageForm'
import update from 'immutability-helper'

export default class Chatroom extends React.Component {
  constructor(props, _railsContext) {
    super(props)
    let chatroom = JSON.parse(this.props.chatroom)
    this.state = {
      messages: chatroom.messages,
      chatroomId: chatroom.id
    }
  }

  updateMessages(message) {
    const messages = update(this.state.messages,
                              {$push: [message]})
    this.setState({messages: messages})
  }

  componentDidMount() {
    App.chatroom = App.cable.subscriptions.create({
      channel: "ChatroomChannel",
      id: this.state.chatroomId
      },
      {
        received: function(data) {
          this.updateMessages(JSON.parse(data.message))
        }.bind(this)
      });
  }

  render() {
    return (
      <div>
        <MessagesList messages={this.state.messages} />
        <MessageForm chatroomId={this.state.chatroomId} />
      </div>
    )
  }
}
