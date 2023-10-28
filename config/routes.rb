Rails.application.routes.draw do
  get("/", {:controller => "game", :action => "go_home"})
  get("/dice/:numdie/:dieside", {:controller => "game", :action => "roll_dice"})
end
