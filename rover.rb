class Rover

  # attr_accessor :pos_x, :pos_y, :direction

  def initialize
    @pos_x = 0
    @pos_y = 0
    @direction = "N"
  end

  def where_are_you
    puts "I am at #{@pos_x}, #{@pos_y}, facing #{@direction}"
  end

  def take_commands(commands)
    array_of_commands = commands.split("")
    array_of_commands.each do |command|
      case command
      when "M"
        move
      when "L"
        turn_left
      when "R"
        turn_right
      else
        puts "sorry the #{command} command whsn't recognized"
      end
    end
  end

  def move
    case @direction
    when "N"
      @pos_y += 1
    when "E"
      @pos_x += 1
    when "S"
      @pos_y -= 1
    when "W"
      @pos_x -= 1
    end
  end

  def turn_left
    case @direction
    when "N"
      @direction = "W"
    end
  end

  def turn_right
  end

end

class MissionControl
  def initialize
    @rover = Rover.new
  end
end

rover1 = Rover.new
rover1.take_commands("MLRR2Z1.")
rover1.where_are_you

