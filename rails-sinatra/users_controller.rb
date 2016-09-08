class UsersController < ApplicationController

  def new
    @user = User.new
  end
  # /users/new

  # create
  def create
    @user = User.new
    @user.save
  end

  # index
  def index
    @users = User.all
  end

  # show
  def show
    @user = User.find(params[id])
  end

  # edit
  def edit
    @user = User.find(params[id])
  end

  # update
  def update
    @user = User.find(params[id])
    @user.update(params)
    #@user.name = params[name]
    #@user.hometown = params[hometown]
    #@user.save
  end

  # destroy
  def destroy
    @user = User.find(params[id])
    @user.destroy
  end

end


# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.
