require_relative 'student'
require_relative 'person'
require_relative 'teacher'
require_relative 'rental'
require_relative 'book'

class App
  attr_accessor :books, :people, :rentals
  def initialize
    @books = []
    @rentals = []
    @people = []
  end

  def books_ist
    puts 'List of all the books'
    @books.each { |book| puts "Book Name: #{book.title}, Written by: #{book.author}" }
  end

  def people_list
    puts 'List of all the people:'
    @people.each do |person|
      if person.is_a?(Teacher)
        puts "[Teacher] ID: #{person.id}, Name: #{person.name}, Age: #{person.age}"
      elsif person.is_a?(Student)
        puts "[Student] ID: #{person.id}, Name: #{person.name}, Age: #{person.age}, " \
             "Parent Permission: #{person.parent_permission}"
      end
    end
  end

  def teacher_creation
    print 'Enter Teacher name: '
    name = gets.chomp
    print 'Enter Teacher specialization: '
    specialization = gets.chomp
    print 'Enter Teacher age: '
    age = gets.chomp.to_i
    teacher = Teacher.new(age, specialization, name, parent_permission: true)
    @people << teacher
    puts 'Teacher successfully registered'
  end

  def student_creation
    print 'Enter student name: '
    name = gets.chomp
    print 'Enter student age: '
    age = gets.chomp.to_i
    print 'Allowed by parents? [Yes/No]: '
    parent_permission = gets.chomp.downcase

    case parent_permission
    when 'yes'
      student = Student.new(name, age, true)
      @people << student
    when 'no'
      student = Student.new(name, age, false)
      @people << student
    else
      puts 'Invalid option, please reenter'
    end

    puts 'Student successfully registered'
  end

  def person_creation
    print 'If you want to register a new student, press 1. Press 2 to register a teacher: '
    entered_number = gets.chomp.to_i

    case entered_number
    when 1
      student_creation
    when 2
      teacher_creation
    else
      puts 'You have entered an invalid number'
    end
  end

  def book_creation
    print 'Enter book name: '
    title = gets.chomp
    print 'Enter writter name: '
    author = gets.chomp
    book = Book.new(title, author)
    @books << book
    puts 'Book created successfully'
  end

  def rental_creation
    puts 'Choose an index # of a book from the following list: '
    @books.each_with_index { |book, index| puts "#{index}) Title: #{book.title}, Written_By: #{book.author}" }
    selected_book = gets.chomp.to_i

    puts 'Choose an index # a person from the following list:'
    @people.each_with_index do |person, index|
      puts "#{index}) ID: #{person.id} Name: #{person.name} Age: #{person.age} "
    end
    selected_person = Integer(gets.chomp)

    print 'Date MM/DD/YYYY : '
    selected_date = gets.chomp.to_s

    rented = Rental.new(selected_date, @books[selected_book-1], @people[selected_person])
    # rental = Rental.new(selected_date, @books[selected_book - 1], @people[selected_person])
    @rentals << rented
    puts 'Book is successfully rented.'
  end

  def list_rentals_for_person(person_id)
    person = @people.find { |p| p.id == person_id }

    if person.nil?
      puts "Person with ID #{person_id} not found."
      return
    end

    rentals = @rentals.select { |rental| rental.person.id == person_id }

    puts "Rentals for person #{person.name}:"
    rentals.each do |rental|
      puts "Date: #{rental.date}, Book: #{rental.book.title}, Written_By: #{rental.book.author}"
    end
  end

  def invalid_option
    puts 'Invalid option selected'
  end

  def list_of_options
    puts 'OOP School Library!'
    puts 'Please enter the concern number:'
    puts '1 - List of books.'
    puts '2 - List of people.'
    puts '3 - Create a person (teacher / student).'
    puts '4 - Create a book.'
    puts '5 - Create a rental.'
    puts '6 - List of rentals for a given person ID.'
    puts '7 - Exit'
  end
end
