class GameController < ApplicationController
  def go_home
    render({:template => "game_templates/home"})
  end

  def roll_dice
    @rolls=[]
    @num_dice = params.fetch("numdie")
    @num_dice.to_i.times do
      die=rand(1..params.fetch("dieside").to_i)
      @rolls.push(die)
    end
    render({:template => "game_templates/flexible"})
  end
end
