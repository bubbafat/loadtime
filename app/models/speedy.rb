class Speedy < ActiveRecord::Base
  attr_accessible :final, :first, :ipaddress, :mobile, :useragent, :elapsed
    
  def avg
    @avg
  end

  def avg= avg
    @avg = avg
  end
  
  def as_json(options={})
    super.as_json(options).merge(
      {
        :elapsed => elapsed,
        :avg => avg
      }
    )
  end
end
