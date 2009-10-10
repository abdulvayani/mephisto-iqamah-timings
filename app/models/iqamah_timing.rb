class IqamahTiming < ActiveRecord::Base
  validates_presence_of :name, :time
  
  def is_maghrib?
    self.is_maghrib
  end
  
  def time_output
    self.is_maghrib? ? "ON TIME" : self.time.strftime("%i:%M %p")
  end
  
  def to_liquid
    IqamahTimingDrop.new self
  end
      
end