class ListsController < ApplicationController
  before_action :set_list, only: %i[show]
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(set_params)
    @list.save
    redirect_to lists_path
  end

  def show; end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def set_params
    params.require(:list).permit(:name)
  end
end
