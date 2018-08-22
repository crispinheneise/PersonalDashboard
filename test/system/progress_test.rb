require 'application_system_test_case'

class ProgressTest < ApplicationSystemTestCase
  test 'visiting the  goal progress index' do
    visit goals_url
    
    within_table 'goals' do
      assert_same 8, actualfind('table th').count
    end
  end
end