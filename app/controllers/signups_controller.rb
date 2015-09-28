class SignupsController < ApplicationController
  def new
  	@signup = Signup.new
  end

	def create
    @signup = Signup.new(signup_params)
    if @signup.save
      session[:signup_id] = @signup.id
    	redirect_to thanks_path
    end
  end
 
  private 
    def signup_params
      params.require(:signup).permit(:firstname, :email)
    end
 
end
