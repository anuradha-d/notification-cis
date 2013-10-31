require 'rails'

if ::Rails.version < "3.1" || !::Rails.application.config.assets.enabled
  module NotificationCis
    module Generators
      class InstallGenerator < ::Rails::Generators::Base

        desc "This generator installs  Jquery , CSS and Images"
        source_root File.expand_path('../../../../../app/assets', __FILE__)

        def copy_jquery_nested
          copy_file "javascripts/jquery.notifications.min.js", "public/javascripts/jquery.notifications.min.js"
          copy_file "stylesheets/jquery.notifications.css", "public/stylesheets/jquery.notifications.css"
          copy_file "images/notification_top_alert.png", "public/images/notification_top_alert.png"
          copy_file "images/notification_top_error.png", "public/images/notification_top_error.png"
          copy_file "images/notification_top_ok.png", "public/images/notification_top_ok.png"
        end
      end
    end
  end
else
  module NotificationCis
    module Generators
      class InstallGenerator < ::Rails::Generators::Base
        desc "This generator installs  Jquery , CSS and Images"
        source_root File.expand_path('../../../../../app/assets', __FILE__)
        def add_assets
          if detect_js_format.nil?
            copy_file "images/notification_top_alert.png", "app/assets/images/notification_top_alert.png"
            copy_file "images/notification_top_error.png", "app/assets/images/notification_top_error.png"
            copy_file "images/notification_top_ok.png", "app/assets/images/notification_top_ok.png"
            copy_file "javascripts/jquery.notifications.min.js", "app/assets/javascripts/jquery.nested.min.js"
          else
            insert_into_file "app/assets/javascripts/application#{detect_js_format[0]}", "#{detect_js_format[1]} require jquery.notifications.min\n", :after => "jquery_ujs\n"
          end
          if detect_css_format.nil?
            copy_file "stylesheets/jquery.notifications.css", "app/assets/stylesheets/jquery.notifications.css"
          else
            insert_into_file "app/assets/stylesheets/application#{detect_css_format[0]}", "#{detect_css_format[1]} require jquery.notifications\n", :after => "require_self\n"
          end

        end

        def detect_js_format
          return ['.js.coffee', '#='] if File.exist?('app/assets/javascripts/application.js.coffee')
          return ['.js', '//='] if File.exist?('app/assets/javascripts/application.js')
        end
        def detect_css_format
          return ['.css', '*='] if File.exist?('app/assets/stylesheets/application.css')
        end
      end
    end
  end
end
