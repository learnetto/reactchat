# React Chat

A chat app built with React.js and ActionCable in Ruby on Rails 5.1, built as part of a 2-part tutorial on [Learnetto](https://learnetto.com):

[How to build a chat app with Rails 5.1 ActionCable and React.js Part 1](https://learnetto.com/tutorials/how-to-build-a-chat-app-with-rails-5-1-actioncable-and-react-js-part-1)

[How to build a chat app with Rails 5.1 ActionCable and React.js Part 2](https://learnetto.com/tutorials/how-to-build-a-chat-app-with-rails-5-1-actioncable-and-react-js-part-2)

[See a live demo here](https://reactrooms.herokuapp.com)

Run the following commands on the commandline to get it working:

```
git clone https://github.com/learnetto/reactchat.git

cd reactchat

rails db:migrate

bundle && yarn

foreman start -f Procfile.dev
```

## Github Authentication

We use Github for authentication. So you will need to register a new OAuth application on Github.

Please make sure you set the authorization callback URL correctly. With the default devise and omniauth settings, add `/users/auth/github/callback` to your root URL.

For example, here are the settings for an app running on localhost port 3000:

Once you've set up your Github app, Github will provide you with a Client ID and secret. You need to add these to your app's environment as `GITHUB_APP_ID` and `GITHUB_APP_SECRET`.

For development, the easiest way is to put them in your `~/.bash_profile`, start a new terminal window and restart your Rails server.
