require 'notification_cis/view_helpers'
module NotificationCis
  class Railtie < ::Rails::Railtie
    initializer "notification_cis.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end