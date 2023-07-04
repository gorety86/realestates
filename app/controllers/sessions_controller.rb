class SessionsController < ApplicationController

     rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def login
        email = params[:email]
        password = params[:password]
        user = User.find_by(email: email)
         user && user.authenticate(password)
        render json: {success: "login success"}
        end

    def logout
        session.delete :user_id
        render json: {success: "Logout success"}
    end

    private
    def render_not_found_response
         render json: { errors: "wrong email/password" }, status: :not_found
     end
end