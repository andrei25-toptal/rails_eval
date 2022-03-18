class UsersController < ApplicationController
  def index
    @users = User.all.includes(:articles)
  end
end