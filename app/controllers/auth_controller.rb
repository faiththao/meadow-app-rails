class AuthController < ApplicationController
    skip_before_action :authorized, only: [:create, :auto_login]

    def create
        @user = User.find_by(email: user_login_params[:email])
        
        if @user && @user.authenticate(user_login_params[:password])
            # puts @user && @user.authenticate(user_login_params[:password])
        @token = encode_token({ user_id: @user.id })   
        # puts @token
        render json: { user: UserSerializer.new(@user), jwt: @token }, status: :accepted   
        else 
        render json: { message: 'Invalid username or password' }, status: :unauthorized
        end
    end

    def auto_login
        @token = params[:token]
        user = User.find(JWT.decode(@token, "put your password here", true, algorithm: 'HS256')[0]["user_id"])
        render json: user
    end

    private 

    def user_login_params
        params.require(:user).permit(:email, :password)
    end
end