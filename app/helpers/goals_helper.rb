# frozen_string_literal: true

module GoalsHelper
  
  def progresses_for_last_week(goal)
    (0..6).map do |i|
      day = i.days.ago
      goal.progresses.where(date: (day.beginning_of_day..day.end_of_day))
    end
  end


  def progress_class(goal, progresses)
    return nil unless progresses.any?
    progresses.sum(:value) < goal.value ? 'has-text-danger' : 'has-text-success'
  end
  
  def progress_value(progresses)
    return progresses.any? ? progresses.sum(:value) : '-'
  end
end
