class ItemsController < ApplicationController
  def index
    # @items = Item.all
    @items = Item.where(repairing: false, completed: false)
  end

  def new

  end

  def create

  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

end