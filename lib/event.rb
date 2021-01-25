require 'pry'
require 'time'


class Event

  attr_accessor :start_date
  attr_accessor :duration
  attr_accessor :title
  attr_accessor :attendees



  def initialize(start_date,duration,title,attendees)
    
    @start_date = Time.parse(start_date)
    @duration = duration
    @title = title
    @attendees = attendees

  end



  def postpone_24h
    @start_date = @start_date + 24*60*60
  end



  def end_date
    @start_date + (@duration*60)
  end



  def is_past?
    @start_date < Time.now
  end



  def is_future?
    Time.now < @start_date
  end



  def is_soon?
    if (Time.now >= (@start_date - 30*60) and Time.now <= @start_date)
      then return true
      else return false
    end
  end



  def to_s
    puts
    puts "> Titre : #{@title}"
    puts "> Date de début : #{@start_date}"
    puts "> Durée : #{@duration}"
    puts "> Invités : #{@attendees.join(", ")}"
    puts
  end

end