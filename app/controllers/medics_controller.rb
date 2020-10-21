class MedicsController < ApplicationController
  
  def index 
    
  end

  def show 
    @medic = Medic.find(params[:id])
  end

  def search 
    if params[:medic].present?
      @medics = params[:medic].present?
      @medics = Medic.search(params[:medic])
      if @medics && @medics.count > 0
        respond_to do |format|
        format.js { render partial: 'medics/medic_result' }
        end
        else
        respond_to do |format|
        flash.now[:danger] = "There are no result's found for this request.."
        format.js { render partial: 'medics/medic_result' }
        end
        end
        else
        respond_to do |format|
        flash.now[:danger] = "Please enter a Todo name or description to search"
        format.js { render partial: 'medics/medic_result' }
      end
    end
  end
  
end