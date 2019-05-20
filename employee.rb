class Employee 
  def initialize(name, salary, title, boss)
    @name = name
    @salary = salary
    @title = title
    @boss = nil
  end

  def bonus(multiplier)
    (employee salary) * multiplier
  end

end
# Manager < employee

class Manager < Employee

  def initialize
    @employees = []
    
  end

  def bonus(multiplier)
    @employees.each do |employee|
      sum = 0
      sum += employee.salary
      sum * multiplier
    end

  end


end
