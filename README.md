#notification-cis

This gem is inspired by the notifications introduced in Windows 8.

Features
1. Notifications slide in and out from the upper right corner of the page
2. Configurable life span of the notification
3. Option to display a heading
4. Theme options (see CSS for built in themes)
5. Ability to make the notification sticky


### INSTALLTION

First thing you need to do is the installation , you can follow the below mentioned steps to install the gem inside your rails application.
You need to add sudo if you are not using rvm(ruby version manager)


Add this following line in your Gemfile.
```
gem 'notification-cis'
```

Then run,

```
bundle install
```
Run the generator to create the initial files.

```
  rails g notification_cis:install
```


Then add the below line in application.html.erb

```rhtml
  <% = flash_helper(flash)%>
```

### Reference Site

For more information you can refer to following site:

<a href="http://jquery-plugins.net/tag/notification">notification</a>
