class Chihuahua < ActiveRecord::Base
  def mood_emoji
    " 😺"
  end

  def increase_time_alive
    if alive_time = nil
      alive_time = 0
    end
    alive_time = self.alive_time + 1
  end
end
