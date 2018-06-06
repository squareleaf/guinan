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

    if params['pet'] || params['feed'] || params['walk']
      @dog.mood = "😺"
    else
      @dog.mood = "😿"
    end

    @dog.save

    redirect_to edit_chihuahua_path(@dog.id)
  end
end
