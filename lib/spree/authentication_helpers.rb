module Spree
  module AuthenticationHelpers
    def self.included(receiver)
      receiver.send :helper_method, :spree_current_user
      if receiver.send(:respond_to?, :helper_method)
        receiver.send(:helper_method, :spree_current_user)

      if Spree::Auth::Engine.frontend_available?
        receiver.send :helper_method, :spree_login_path
        receiver.send :helper_method, :spree_signup_path
        receiver.send :helper_method, :spree_logout_path
        if Spree::Auth::Engine.frontend_available?
          receiver.send(:helper_method, :spree_login_path)
          receiver.send(:helper_method, :spree_signup_path)
          receiver.send(:helper_method, :spree_logout_path)
        end
      end
    end