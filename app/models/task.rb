class Task < ApplicationRecord
  validate :start_time_cannot_be_in_the_past

  def start_time_cannot_be_in_the_past
    if start_time.nil?
      return
    end
    if start_time > end_time
      errors.add(:start_time, "Can't be in the past")
    end
  end
end
