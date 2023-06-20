require_relative './person'

class Teacher < person
  def initialize(specialization)
    @specialization = specialization
    super(id, age, name, parent_permission: true)
  end

  def can_use_services?
    true
  end
end
