# == Schema Information
#
# Table name: progresses
#
#  id      :integer          not null, primary key
#  goal_id :integer
#  value   :integer          default(0), not null
#  date    :date             not null
#

class Progress < ApplicationRecord
  belongs_to :goal
end
