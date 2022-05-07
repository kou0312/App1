class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    list = List.new(list_params)
    list.save
    redirect_to'/top'
  end





  #ストロングパラメータ、一番下に書く
  private
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
