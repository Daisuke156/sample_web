class LikesController < ApplicationController
  def create
    @like = Like.new(
      user_id: @current_user.id,
      menu_id: params[:menu_id]
      )
    @like.save
    redirect_to ("/menus/#{params[:menu_id]}")
  end
  
  def destroy
    @like = Like.find_by(
      user_id: @current_user.id,
      menu_id: params[:menu_id]
      )
    @like.destroy
    redirect_to ("/menus/#{params[:menu_id]}")
  end
  
end