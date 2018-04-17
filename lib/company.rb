require 'csv'

class Company
  attr_reader :employees,
              :projects,
              :timesheets

  def initialize
    @employees = []
    @projects = []
    @timesheets = []
  end

  def load_employees(filename)
    employee_list = File.open('employees.csv')
      employee_list.each do |employee|
      @employees << employee.to_hash
    end
  end

  def load_projects(filename)
    projects_list = File.open('projects.csv')
      projects_list.each do |project|
      @projects << project.to_hash
    end
  end

  def company.load_timesheets(filename)
    timesheets_list = File.open('timesheets.csv')
      timesheets_list.each do |timesheet|
      @timesheets << timesheet.to_hash
    end
  end

end
