class ChihuahuasController < ApplicationController
  def index
    @dogs = Chihuahua.all
  end

  def edit
    @dog = Chihuahua.find(params[:id])
  end

  def update
    @dog = Chihuahua.find(params[:id])
    if @dog.alive_time == nil
      @dog.alive_time = 0
      @dog.save
    end
    @dog.alive_time += 1
    @dog.save
    redirect_to chihuahuas_path
  end
end
