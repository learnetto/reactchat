$(document).on('turbolinks:load', function() {
  App.chatroom = App.cable.subscriptions.create({
    channel: "ChatroomChannel",
    id: $('#messages').attr('data-chatroom-id')
    },
    {
      received: function(data) {
        $('#messages').append(data.message);
      }
  });
});
