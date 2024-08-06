class ApplicationController < ActionController::API
  def authenticate_request
    header = request.headers['Authorization']
    if header.present?
      jwt_payload = JWT.decode(header.split(' ').last, Rails.application.credentials.devise_jwt_secret_key!).first
      @current_user = User.find(jwt_payload['sub'])
    else
      render json: {
        status: 401,
        message: "Couldn't find an active session."
      }, status: :unauthorized
    end
  end
end
