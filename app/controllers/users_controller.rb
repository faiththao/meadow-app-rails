class UsersController < ApplicationController
    skip_before_action :authorize, only: :create

    def create
      user = User.create!(user_params)
      session[:user_id] = user.id
      render json: user, status: :created
    end

    def show
        render json: @current_user
    end

    def password=(new_password)
        self.password_digest = dumb_hash(new_password)
    end

    def authenticate(password)
        return nil unless dumb_hash(password) == password_digest
        self
    end

    private

    def user_params
        params.permit(:email, :password, :password_confirmation, :first_name, :last_name, :birthdate, :phone_number)
    end

    def dumb_hash(input)
        input.bytes.reduce(:+)
    end
end
