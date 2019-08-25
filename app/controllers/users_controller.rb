class UsersController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    @items = Item.where(repairing: false)
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @brokenitems = Item.where(user_id: params[:id], repairing: false, completed: false)
    @underrepair = Item.where(user_id: params[:id], repairing: true, completed: false)
    @repaireditems = Item.where(user_id: params[:id], repairing: false, completed: true)
    @fixingitems = Item.where(repairer: params[:id], repairing: true, completed: false)
    @itemsfixed = Item.where(repairer: params[:id], repairing: false, completed: true)
    @reviews = Review.where(repairer_id: params[:id].to_i)


    # @allitems = Item.where(user_id: params[:id])
    # @repaireditems = Item.where(repairer: params[:id])
    # p "my repaired items"
    # p @repaireditems
    # p @repaireditems[0].user_id
    # @items = Item.where(user_id: params[:id].to_i, repairing: false, completed: false)
    # puts "===================================="
    # p @items.name
    # p @items
    # @repairingitems = Item.where(user_id: params[:id].to_i,repairing: true, completed: false)
    # @completeditems = Item.where(user_id: params[:id].to_i,repairing: false, completed: true)

    # @repairingothers = Item.where(repairer: current_user.id, repairing: true, completed: false)
    # @completedothers = Item.where(repairer: current_user.id, repairing: false, completed: true)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update

  end

  def destroy

  end

  def test

  end

end