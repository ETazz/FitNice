class UsersController < ApplicationController

# creates a user with user_params. saves it using knock authenticaiton from
# knock gem

    def create 
        @user = User.create(user_params)
        if @user.save
            auth_token = Knock::AuthToken.new payload: {sub: @user.id}
            render json: {username: @user.username, jwt: auth_token.token}, status: :created
        else
            render json: @user.errors, status: :unprocessable_entity
        end
    end

    # user sign in using params. when the user signs in the user receives 
    # a jwt token which is used to verfiy the user 

    def sign_in
        @user = User.find_by_email(params[:email])
        if @user && @user.authenticate(params[:password])
            auth_token = Knock::AuthToken.new payload: {sub: @user.id}
            render json: {username: @user.username, jwt: auth_token.token}, status: 200
        else 
            render json: {error: "Incorrect Email or Password"}, status: 404
        end
    end

    private 
    def user_params 
        params.permit(:user, :username, :email, :password, :password_confirmation)
    end
end
