class PartiesController < ApplicationController
  def index
    @parties = Party.all
  end

  def show
    @party = Party.find(params[:id])
  end

  def new
    @party = Party.new
  end

  def create
    @party = Party.create(parties_params)
    @party.player_count = params[:character_id].length
    @party.save
    redirect_to parties_path
  end

  def edit
    @party = Party.find(params[:id])
  end

  def update
    @party = Party.find(params[:id])
    @party.update(party_params)
    redirect_to parties_path
  end

  def destroy
    @party = Party.find(params[:id])
    @party.destroy
    redirect_to parties_path
  end

  private
  def parties_params
    params.require(:party).permit(:name, :player_count, :character_id)
  end
end
