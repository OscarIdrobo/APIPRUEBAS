# app/controllers/users_controller.rb
class UsersController < ApplicationController
  skip_before_action :authorize_request, only: :create
    # POST /signup
  # return authenticated token upon signup
  def create
    puts  "crear"
    user = User.create!(user_params)
    auth_token = AuthenticateUser.new(user.email, user.password).call
    #response = { message: Message.account_created, auth_token: auth_token }
    response = { message: "PRUEBA" }
    json_response(response, :created)
  end

  private

  def user_params
    puts  "PARAMETERS"
    params.permit(
      :name,
      :email,
      :password,
      :password_confirmation
    )
  end
end
