# frozen_string_literal: true

module GoalsHelper
  def get_progress_value_by_date(goal, day)
    result = goal.progresses.where( done_on: day).sum(:value)
     if result != 0
       result
     else
       "-"
     end
    
    # .where(done_on: Date.today).sum(:value) #=> 0
  end
end
