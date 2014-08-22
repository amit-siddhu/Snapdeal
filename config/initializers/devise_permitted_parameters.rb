module DevisePermittedParameters
  extend ActiveSupport::Concern

  included do
    before_filter :configure_permitted_parameters
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name

    devise_parameter_sanitizer.for(:sign_up) << :conf_username
    devise_parameter_sanitizer.for(:account_update) << :conf_username

    devise_parameter_sanitizer.for(:sign_up) << :conf_password
    devise_parameter_sanitizer.for(:account_update) << :conf_password

    devise_parameter_sanitizer.for(:sign_up) << :jira_username
    devise_parameter_sanitizer.for(:account_update) << :jira_username

    devise_parameter_sanitizer.for(:sign_up) << :jira_password
    devise_parameter_sanitizer.for(:account_update) << :jira_password
  end

end

DeviseController.send :include, DevisePermittedParameters
