# frozen_string_literal: true

module GoalsHelper
  def table_heading
    (0..6).map do |i|
      i.days.ago.strftime("%A")
    end
  end
  
  
  def progresses_for_last_week(goal)
    (0..6).map do |i|
      day = i.days.ago
      goal.progresses.find_by(date: (day.beginning_of_day..day.end_of_day))
    end
    
  end
  
  def output_progress(progress)
    progress ? progress.value : "-"
  end
end
