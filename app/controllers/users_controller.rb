class UsersController < ApplicationController

def show
 @user = User.find(params[:id])
 @email = @user.email
end

def follow
  @user = User.find(params[:id])
  current_user.followees << @user
  redirect_back(fallback_location: user_path(@user))
end

def unfollow
  @user = User.find(params[:id])
  current_user.followed_users.find_by(followee_id: @user.id).destroy
  redirect_back(fallback_location: user_path(@user))
end

end
