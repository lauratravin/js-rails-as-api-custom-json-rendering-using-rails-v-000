class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    render json: @birds
  end
  def show
   bird = Bird.find_by(id: params[:id])
#   render json: bird
#   render json: bird.slice(:id, :name, :species)
#    render json: birds, except: [:created_at, :updated_at] alternative.

    render json: birds, only: [:id, :name, :species]

 end

end
