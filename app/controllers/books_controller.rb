class BooksController < ApplicationController
  def new
  end

  def index
    @list=List.new
    @lists=List.all
  end

  def create
    list=List.new(list_params)
    list.save
    redirect_to top_path
  end

  def show
    @list= List.find(params[:id])
  end

  def edit
  end

  private
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
