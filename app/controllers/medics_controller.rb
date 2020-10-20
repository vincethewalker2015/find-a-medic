class MedicsController < ApplicationController
  
  def index 
    @medics = Medic.all
  end
  
end