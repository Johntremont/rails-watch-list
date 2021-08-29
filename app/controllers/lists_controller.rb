class ListsController < ApplicationController
  before_action :set_list, only: %i[show edit update destroy]
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(set_params)
    @list.save
    redirect_to list_path(@list)
  end

  def show; end

  def update
    if @list.update(set_params)
      redirect_to lists_path(@list)
    else
      render :edit
    end
  end

  def destroy
    if @list.destroy
      redirect_to lists_path
    else
      render :show
    end
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def set_params
    params.require(:list).permit(:name)
  end
end
