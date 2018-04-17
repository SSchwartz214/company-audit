require './test/test_helper'
require './lib/timesheet'

class TimesheetTest < Minitest::Test
  def test_instantiation
    timesheet = Timesheet.new('employee_id', 'project_id', 'date', 'minutes')

    assert_instance_of Timesheet, timesheet
  end

  def test_attributes
    timesheet = Timesheet.new('5', '7', '2015-01-01', '120')

    assert_equal 5, timesheet.employee_id
    assert_equal 7, timesheet.project_id
    assert_equal '2015-01-01', timesheet.date
    assert_equal 120, timesheet.minutes
  end
end
