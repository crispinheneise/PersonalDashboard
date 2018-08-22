# == Schema Information
#
# Table name: progresses
#
#  id         :integer          not null, primary key
#  value      :integer
#  goal_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  date       :datetime
#

class Progress < ApplicationRecord
  belongs_to :goal
end
