class CardController < ApplicationController
  #has_many :card_fortunes
  #has_many :fortunes, through: :card_fortunes

  def index
    cards = Card.all
    render json: cards.as_json
  end

  def create
    card = Card.new()
    card.save
    render json: card.as_json
  end

  def show
    if params[:id] == "random"
      id = Card.pluck(:id).sample
    else
      id = params[:id]
    end
    card = Card.find_by(id: id)
    render json: card.as_json
  end

  def update
    card = Card.find_by(id: params[:id])
    card.name = params[:name] || card.name
    render json: card.as_json
  end

  def destroy
    card = Card.find_by(id: params[:id])
    card.destroy
    render json: { message: "Card successfully destroyed." }
  end
end
