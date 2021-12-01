class PrototypesController < ApplicationController
  before_action :set_prototype, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
  end

  def new
    @prototype = Prototype.new
  end

  def create
    Prototype.create(prototype_params)
  end

  def destroy
    prototype = Prototype.find(params[:id])
    prototype.destroy
  end

  def edit
  end

  def update
  end

  def show
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end