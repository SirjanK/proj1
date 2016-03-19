class PokemonController < ApplicationController
  def capture
    poke = Pokemon.where(id: params[:id]).first
    poke.trainer_id = current_trainer.id
    poke.save
    redirect_to(root_path)
  end

  def damage
    poke = Pokemon.where(id: params[:hit]).first
    poke.health = poke.health - 10
    poke.save

    if poke.health <= 0
      poke.delete
    end

    redirect_to(current_trainer)
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    poke = Pokemon.create(poke_params)
    poke.health = 100
    poke.level = 1
    poke.trainer_id = current_trainer.id
    poke.save
    redirect_to(current_trainer)
  end

  def poke_params
    if @pokemon
      params.require(:pokemon).permit(:name)
    end
  end
end
