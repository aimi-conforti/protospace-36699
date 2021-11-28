class PrototypesController < ApplicationController
  def index
  end

  def new
    @prototype = Prototype.new
  end

  def create
    Prototype.create(prototype_params)
  end

end