require './test/test_helper'
require './lib/employee'

class EmployeeTest < Minitest::Test
  def test_instantiation
    employee = Employee.new('5', 'Sally Jackson', 'Engineer', '2015-01-01', '2018-01-01')

    assert_instance_of Employee, employee
  end

  def test_attributes
    employee = Employee.new('5', 'Sally Jackson', 'Engineer', '2015-01-01', '2018-01-01')

    assert_equal '5', employee.employee_id
    assert_equal 'Sally Jackson', employee.name
    assert_equal '2015-01-01', employee.start_date
    assert_equal '2018-01-01', employee.end_date
  end
end
