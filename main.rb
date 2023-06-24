require_relative 'app'

def menu(app)
  app.list_of_options
  print '>>'
  gets.chomp.to_i
end

def selected_options(app, option)
  available_options = {
    1 => :books_ist,
    2 => :people_list,
    3 => :person_creation,
    4 => :book_creation,
    5 => :rental_creation,
    6 => :list_rentals_for_person,
    7 => :exit,
    default: :invalid_option
  }

  selection = available_options[option] || available_options[:default]

  if selection == :list_rentals_for_person
    puts 'Enter the person ID:'
    person_id = gets.chomp.to_i
    app.send(selection, person_id)
  else
    app.send(selection)
  end

  exit if option == 7
end

def main
  app = App.new

  loop do
    selected_options(app, menu(app))
    puts '\n.'
  end
end

main
