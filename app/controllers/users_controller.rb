# app/controllers/users_controller.rb
class UsersController < ApplicationController

  skip_before_action :authenticate_request, only: %i[login register]
   # POST /register

   
    def register
      @user = User.create(user_params)
     if @user.save
      response = { message: 'User created successfully'}
      render json: response, status: :created 
     else
      render json: @user.errors, status: :bad
     end 
    end

    def login
      authenticate params[:email], params[:password]
    end


    def test
      render json: {
            message: 'You have passed authentication and authorization test'
          }
    end

   def password_reset  
    user_email = params['email']
    @user = User.find_by(email: user_email)
    if @user
      password_recovery_token = SecureRandom.hex(32)
      @user.password_recovery_token = password_recovery_token
      @user.password_recovery_expiration = Time.now
      begin
        @user.update
        base_url = request.protocol + request.host_with_port
        
        ExampleMailer.sample_email(@user, base_url).deliver

        render json: {success: 'request reset password successful'}, status: :ok 
      rescue Exception => e
        render json: {error: 'Fail save user with temporal password recovery token'}, status: :internal_server_error
      end
    else
      render json: {error: 'User not found'}, status: :not_found
    end
  end
  
  
    private
  
    def user_params
      params.permit(
        :name,
        :email,
        :password
      )
    end


    def authenticate(email, password)
      command = AuthenticateUser.call(email, password)
  
      if command.success?
        render json: {
          access_token: command.result,
          message: 'Login Successful'
        }
      else
        render json: { error: command.errors }, status: :unauthorized
      end
     end  


  
  end