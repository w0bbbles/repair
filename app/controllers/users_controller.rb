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
    puts @user.email
    @allitems = Item.where(user_id: params[:id])
    @items = Item.where(user_id: params[:id].to_i, repairing: false, completed: false)
    puts "===================================="
    p @items.name
    p @items
    @repairingitems = Item.where(user_id: params[:id].to_i,repairing: true, completed: false)
    @completeditems = Item.where(user_id: params[:id].to_i,repairing: false, completed: true)

    @repairingothers = Item.where(repairer: current_user.id, repairing: true, completed: false)
    @completedothers = Item.where(repairer: current_user.id, repairing: false, completed: true)
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