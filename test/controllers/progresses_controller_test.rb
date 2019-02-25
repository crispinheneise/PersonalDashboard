# frozen_string_literal: true

require 'test_helper'

class ProgressesControllerTest < ActionDispatch::IntegrationTest
  let(:goal) { goals(:one) }

  test 'should get new' do
    get new_progress_url
    assert_response :success
  end

  test 'should create progress' do
    assert_difference('Progress.count') do
      post progresses_url, params: { progress: { goal_id: goal.id, value: 10, date: Date.today } }
    end

    assert_redirected_to goals_url
  end

end
