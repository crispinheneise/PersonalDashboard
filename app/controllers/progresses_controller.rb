class ProgressesController < ApplicationController
  def new
    @progress = Progress.new
  end
  
  def create
    @progress = Progress.create!(progress_params)
    
    respond_to do |format|
      format.html { redirect_to goals_path }
    end
  end
  
  private
  
  def progress_params
    params.require(:progress).permit(:goal_id, :value, :date)
  end
end
