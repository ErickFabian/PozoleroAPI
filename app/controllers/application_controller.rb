class ApplicationController < ActionController::API
  include Pundit

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  respond_to :json

  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  rescue_from ActionController::ParameterMissing, with: :missing_param_error

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: sign_up_permitted_attributes)
  end

  def not_found
    render json: {}, status: :not_found
  end

  def query_params(resource)
    policy(resource).query_params(params)
  end

  def missing_param_error(exception)
    render json: { error: exception.message }, status: :unprocessable_entity
  end

  def sign_up_permitted_attributes
    [
      :first_name,
      :last_name
    ]
  end
end
