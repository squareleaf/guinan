class ChihuahuasController < ApplicationController
  def index
    @dogs = Chihuahua.all
  end

  def update
    @dog = Chihuahua.find(params[:id])
    @dog.update_column(params)
  end
end
