class ApplicationController < ActionController::API
    include Pundit

    private
  
    def authorize_user(policy_class)
      authorize current_user, policy_class: policy_class
    end
      
    def current_user
      # TODO: User faker for validations
      User.first
    end    
end
