class ListsController < ApplicationController
  def index
    List.all
  end

  def new
    @list = List.new
  end
end
