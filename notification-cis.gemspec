Gem::Specification.new do |s|
  s.name        = 'notification-cis'
  s.version     = '0.0.3'
  s.date        = '2013-10-31'
  s.summary     = "This gem is inspired by the notifications introduced in Windows 8. Notifications slide in and out from the upper right corner of the page. Configurable life span of the notification.Option to display a heading. Theme options (see CSS for built in themes).Ability to make the notification sticky"
  s.description = "This gem is inspired by the notifications introduced in Windows 8."
  s.authors     = ["Anuradha"]
  s.email       = 'anuradha.d@cisinlabs.com'
  s.files       = Dir["{lib,app}/**/*", "[A-Z]*"]
  s.homepage    =
    'http://rubygems.org/gems/notification-cis'
  s.require_paths = ["lib"]  

  s.license       = 'MIT'
  s.rubyforge_project = "jquery-rails"
  s.required_rubygems_version = ">= 1.3.6"
  s.add_dependency "jquery-rails"
  s.add_dependency "railties"
end
