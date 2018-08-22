require 'test_helper'

class GoalsTest < ActionDispatch::IntegrationTest
  before :each do
    @goal = Goal.first
    @progress = []
    (0..2).each do |num|
      @progress << Progress.create(value: Random.rand(20), goal: @goal, date: num.days.ago)
    end
    @progress << Progress.create(value: 5, goal: @goal, date: 4.days.ago)
    @progress << Progress.create(value: 12, goal: @goal, date: 5.days.ago)
    @progress << Progress.create(value: 10, goal: @goal, date: 6.days.ago)
    @progress << Progress.create(value: 10, goal: @goal, date: 7.days.ago)
  end

  test "visiting index has goal and progress" do
    get root_path
    assert_response :success
    assert_select 'td', 8
  end
  
  test "visiting index shows goal name" do
    get root_path
    assert_response :success
    assert_select 'td', 8
    assert_select 'td' do |elements|
      assert_includes elements[0].text, @goal.name
    end
  end
  
  test "visiting index shows progress values" do
    get root_path
    assert_response :success
    assert_select 'td', 8
    assert_select 'td' do |elements|
      assert_includes elements[1].text, @progress[0].value.to_s
      assert_includes elements[2].text, @progress[1].value.to_s
      assert_includes elements[3].text, @progress[2].value.to_s
      assert_includes elements[4].text, '-'
      assert_includes elements[5].text, @progress[3].value.to_s
      assert_includes elements[6].text, @progress[4].value.to_s
      assert_includes elements[7].text, @progress[5].value.to_s
    end
  end
  
end
