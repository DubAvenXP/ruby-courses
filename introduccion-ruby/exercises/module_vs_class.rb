# Class
#  - Class is a blueprint for creating objects
# Module
# - Module is a collection of methods, constants and classes
# - We can't create new instances of a module


module Reports
  class ExcelReporter
    def build
      puts 'Generating excel report'
    end
  end

  class EmailReporter
    def build
      puts 'Generating email report'
    end
  end
end

class Person
  def initialize(name, email)
    @name = name
    @email = email
  end
end


person_1 = Person.new('Juan', 'juan@gmail.com')
puts person_1.class