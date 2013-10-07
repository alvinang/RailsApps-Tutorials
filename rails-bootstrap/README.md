## Summary

This app allow users to select their favorite images & provide their comments. Comments are stored in google docs.
It generated using the [Rails-Bootstrap](https://tutorials.railsapps.org/tutorials/rails-bootstrap) tutorial on railsapp.org.

### Differences

I updated this to [Bootstrap 3](http://getbootstrap.com/) instead.

### Bugs

[Simple Form](https://github.com/plataformatec/simple_form) gem is not fully updated with Bootstrap 3 yet.
Hence, the radio buttons on the modal is not inline. Hopefully that will be fixed when you check this out.

### Installation

Close this application and after bundle install, you need to setup Figaro.

```bash
rails generate figaro:install
```

Then, go to your `config/application.yml` file. Add:

```ruby
GMAIL_USERNAME: username@gmail.com
GMAIL_PASSWORD: password
```
Upon completion, the app should be ready to go.

### Hosting

This app is currently hosted on [Heroku](http://aa-rails-bootstrap.herokuapp.com/).


Questions? Feel free to contact me at via github or [email](mailto:alvinangbs@gmail.com).