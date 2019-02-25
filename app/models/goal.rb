# frozen_string_literal: true

# == Schema Information
#
# Table name: goals
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  value      :integer          default(0), not null
#


class Goal < ApplicationRecord
    has_many :progresses
end
