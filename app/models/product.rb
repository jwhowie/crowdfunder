class Product < ActiveRecord::Base
  belongs_to :user
  has_many :rewards
  has_many :pledges

  def get_time_remaining()
    time_in_seconds = (self.end_date - self.start_date).to_i

    days_float = (time_in_seconds/86400.0)
    days_truncated = days_float.truncate

    hours_float = (days_float - days_truncated)*24
    hours_truncated = hours_float.truncate

    minutes_float = (hours_float - hours_truncated)* 60
    minutes_truncated = minutes_float.round
    return "Hurry! There are only #{days_truncated} days #{hours_truncated} hours and #{minutes_truncated} minutes left in this campaign."
  end
end
