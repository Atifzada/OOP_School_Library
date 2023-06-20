require_relative './person'

class Teacher < Person
  def initialize(age, _name = 'Unknown', parent_permission: true)
    super(age, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
