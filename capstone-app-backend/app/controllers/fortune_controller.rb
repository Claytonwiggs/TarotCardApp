class FortuneController < ApplicationController
  belongs_to :user
  has_many :card_fortunes
  has_many :cards, through: :card_fortunes

  def index
    fortunes = Fortune.all
    render json: fortunes.as_json
  end

  def create
    fortune = Fortune.new(
 #name: params[:name],
           #width: params[:width],
           #height: params[:height]
      )
    fortune.save
    render json: fortune.as_json
  end

  def show
    fortune = Fortune.find_by(id: params[:id])
    render json: fortune.as_json
  end

  def update
    fortune = Fortune.find_by(id: params[:id])
    #fortune.name = params[:name] || fortune.name
    #fortune.width = params[:width] || fortune.width
    #fortune.height = params[:height] || fortune.height
    #fortune.save
    render json: fortune.as_json
  end

  def destroy
    fortune = Fortune.find_by(id: params[:id])
    fortune.destroy
    render json: { message: "Fortune successfully destroyed." }
  end
end
