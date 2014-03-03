class Place < ActiveRecord::Base
  validates_uniqueness_of :number_interface, :name

  def switch_state
    if state==true
      $arduino.digital_write number_interface, false
      self.state = false
    else
      $arduino.digital_write number_interface, true
      self.state = true
    end
  end

end
