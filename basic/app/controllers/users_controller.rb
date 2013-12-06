class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def new #new user form
    @user = User.new
  end

  def create #actually create a user
  	@user = User.new(user_params)
  	if @user.save
  		flash[:message] = "The user was successfully added."
      redirect_to users_path
  		# redirect_to "/users"
  	else
      # flash[:errors] = @user.errors.full_messages
      # @errors = @user.errors.full_messages
      # redirect_to "/users/new"
      # redirect_to new_user_path
      render :new
  	end
  end

  def show #show individual user info
     @user = User.find(params[:id])
  end
  
  def edit #form to edit a user
    @user = User.find(params[:id])
  end

  def update #actually update a user's info
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:message] = "The user info was successfully updated."
      redirect_to users_path
    else
      # flash[:errors] = @user.errors.full_messages
      # redirect_to edit_user_path(@user)
      render :edit
    end
  end

  def destroy
    flash[:message] = "The user was successfully deleted."
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private
	def user_params
	   params.require(:user).permit(:first_name, :last_name, :email, :password)
	end

end
