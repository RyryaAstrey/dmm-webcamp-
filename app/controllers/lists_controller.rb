class ListsController < ApplicationController
  def new
  end

  def index
    @list=List.new
    @lists=List.all
  end

  def create
    list=List.new(list_params)
    list.save
    redirect_to show_path(list.id)
  end

  def show
    @list= List.find(params[:id])
  end

  def edit
    @list= List.find(params[:id])
  end

  def update
    list= List.find(params[:id])
    list.update(list_params)
    redirect_to '/lists'
  end

  def destroy
    list = List.find(params[:id])
    list.destroy
    redirect_to '/lists'
  end

  private
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
