class CourseFinder::CLI


  def call
    CourseFinder::Scraper.courses
    puts ""
    puts "Welcome to the Finance Course Information App."
    puts ""
    puts CourseFinder::Course.overview
    puts ""
    puts "The following is a list of active courses."
    puts "-----------"
    course_list
    puts "-----------"
    puts ""
    menu
  end

  def menu
    puts "Please select a course from the list above by entering a number '1-17'. Or type 'exit'to quit the program."
    puts ""

    input = nil
    while input != "exit"
      input = gets.strip

      if input.to_i.between?(1, CourseFinder::Course.all.size)
        course = CourseFinder::Course.find(input.to_i)
        puts "#{course.id}.".colorize(:light_yellow)
        puts "#{course.description}".colorize(:light_green)
        puts "#{course.extra}".colorize(:light_red)
        puts ""
        puts "Select another course or enter 'menu' to return to the list of courses."
        puts ""

      elsif input == "menu"
        course_list
        puts ""
        puts "Make a selection or enter 'exit'."
        puts ""

      elsif input == "exit"
        puts ""
        puts "Goodbye!".colorize(:light_cyan)
        puts ""

      else
        puts "Invalid entry. Try again"
      end
    end
  end


  def course_list
    CourseFinder::Course.all.each_with_index do |c, i|
      puts "#{i+1}. #{c.id}"
    end
  end

end
