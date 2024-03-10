class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def home
    # homepage
  end
end

def list_params
  params.require(:list).permit(:name, :photo)
end
