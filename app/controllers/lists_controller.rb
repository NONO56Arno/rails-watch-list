class ListsController < ApplicationController
  def show
    @lists = List.find(params[:id])
  end

  def index
    @lists = List.all
  end
end
