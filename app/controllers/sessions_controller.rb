class SessionsController < ::Devise::SessionsController
  skip_before_action :verify_signed_out_user
  before_action :authenticate_user!

  def create
    user = warden.authenticate!(auth_options)
    token = Tiddle.create_and_return_token(user, request)
    render json: { id: user.id, email: user.email, token: token }
  end

  def destroy
    if current_user
      Tiddle.expire_token(current_user, request)
      head :no_content
    else
      render json: {
        error: I18n.t(:unauthenticated, scope: [:devise, :failure])
      }, status: 401
    end
  end
end
