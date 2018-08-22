# frozen_string_literal: true

module GoalsHelper
  def progress_class(progress)
    return nil unless progress
    progress.value < progress.goal.value ? 'has-text-danger' : 'has-text-success'
  end
  
  def progress_value(progress)
    return progress.present? ? progress.value : '-'
  end
end
