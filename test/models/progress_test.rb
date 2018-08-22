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

require 'test_helper'

class ProgressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
