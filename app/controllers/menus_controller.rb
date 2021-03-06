class MenusController < ApplicationController
  
  def index
    @menus = Menu.all
  end
  
  def new
    @menu = Menu.new
  end
  
  def create
    @menu = Menu.new(menu_params)
    @menu.save
    redirect_to action: :index
  end
  
  def edit
    @menu = Menu.find(params[:id])
  end
  
  def update
    @menu = Menu.find(params[:id])
    @menu.update_attributes(menu_params)
    redirect_to action: :index
  end
  
  def destroy
    Menu.find_by(id: params[:id]).destroy
    redirect_to action: :index
  end
  
  def show
    @menu = Menu.find_by(id: params[:id])
  end
  
  private
    def menu_params
      params.require(:menu).permit(:name, :price, :calorie, :category)
    end
  
end
