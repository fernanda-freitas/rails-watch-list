class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.create(list_param)
    redirect_to lists_path
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path
  end

  private

  def list_param
    params.require(:list).permit(:name)
  end
end
