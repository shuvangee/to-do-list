require 'date'

class Task
  attr_accessor :title, :details, :date_time
  
  def initialize(title, details, date_time)
    @title = title
    @details = details
    @date_time = date_time
  end


  def to_s
    
    ". Title: #{@title} \nDetails: #{@details}\nDate and Time: #{@date_time}\n"
  end
end
