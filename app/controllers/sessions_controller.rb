class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  # SIGN UP
  def signup
    parent = Parent.create(parent_params)
    if parent.valid?
      session[:uuid] = parent.uuid
      render json: {parent: parent}
    else
      render json: {error: "Email exists already! Try logging in"}, status: 409
    end
  end

  # LOGGING IN
  def login
    parent = Parent.find_by(email: params[:email])
    if parent  && parent.authenticate(params[:password])
      session[:uuid] = parent.uuid
      render json: {parent: parent}
    else
      render json: {error: "*Invalid username or password"}, status:401
    end
  end

  private

  def parent_params
    params.permit(:name,:email,:password, :session)
  end

end
