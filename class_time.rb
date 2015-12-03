class Person

  def greet
    puts "Hi I'm a #{@type}"
  end

end

class Instructor < Person

  attr_accessor :type

  def initialize
    @type = "Instructor"
  end

  def teach
    puts "Im teaching"
  end

  def greet

  end

end

someone = Instructor.new
someone.teach
someone.greet
