class ChihuahuasController < ApplicationController
  def index
    @dogs = Chihuahua.all
  end

  def edit
    @dog = Chihuahua.find(params[:id])
  end

  def update
    @dog = Chihuahua.find(params[:id])

    @dog.alive_time += 1
    @dog.mood = "😿"
    @dog.save

    redirect_to edit_chihuahua_path(@dog.id)
  end
end
