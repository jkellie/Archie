class Admin::TeamsController < ApplicationController
  
  def index
    #scope this later to current_provider.teams only
    @teams = Team.all
  end
  
end
