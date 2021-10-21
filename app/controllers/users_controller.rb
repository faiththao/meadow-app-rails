class UsersController < ApplicationController
    skip_before_action :authorized, only: :create

    def create
      user = User.create!(user_params)
      puts //////////////////////////////////////////
      if user.valid?
        # payload = {user_id: user.id}
        # token = encode_token(payload)
        render json: { user: user, status: :created, jwt: @token}
      else
        render json: { error: 'failed to create user', status: :not_acceptable}
      end
    end

    def show
        user = current_user
        render json: user, only: [:email, :first_name, :last_name, :birthdate, :phone]
        # puts render json: user, only: [:email, :first_name, :last_name, :birthdate, :phone]
        # byebug

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
        params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :birthdate, :phone_number)
    end

    def dumb_hash(input)
        input.bytes.reduce(:+)
    end
end
