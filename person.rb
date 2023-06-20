class Person
    def initialize(id,  name = "unknown", age, parent_permission = true)
        @id = id
        @name = name
        @age = age
        @parent_permission = parent_permission
      end

    def of_age? 
        @age >= 18
    end  
        
    def can_use_services? 
        @age >= 18 || @parent_permission
    end  

end

n1 = Person.new(1, 19, 'Atif')
puts n1.of_age?