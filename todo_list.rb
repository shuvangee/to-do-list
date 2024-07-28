require_relative "task"

class To_Do_list
  def initialize
    @tasks = []
  end

  def run
    loop do
      puts "\n"
      puts "Welcome to the To Do List CLI!"
      puts "1. Add a task"
      puts "2. List all tasks"
      puts "3. Delete a task"
      puts "4. Exit"
      print "Choose an option: "
      option = gets.chomp.to_i
      puts "\n"
      case option
      when 1
        add_task
      when 2
        list_tasks
      when 3
        del_task
      when 4
        puts "Thank you for visiting the To Do List CLI. Goodbye!"
        break
      else
        puts "Invalid option. Please try again."
      end
    end
  end

  private
  
  def add_task
    
    print "Enter task title: "
    title = gets.chomp
    print "Enter details: "
    details = gets.chomp
    print "Enter date and time in following format ('3rd Feb 2001 04:05:06 PM'): "
    date_time = gets.chomp
    @tasks << Task.new(title, details, date_time)
    puts "Task added successfully!"
  end

  def list_tasks
    count=0
    puts "Tasks to do:"
    @tasks.each do |task|
      count+=1
      print "#{count}"
      puts task
    end
    
  end

  def del_task
    print "Enter the number you want to delete: "
    del_number=gets.chomp
    
    @tasks.delete_at(del_number.to_i-1)
    puts "DELETED!
    
    
    "
    list_tasks
  end
end
