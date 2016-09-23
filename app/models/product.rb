class Product < ActiveRecord::Base
  belongs_to :user
  has_many :rewards
  has_many :pledges

  def get_time_remaining()

    current_time = Time.new #assigns var to current time
    
    time_in_seconds = (self.end_date - current_time).to_i

    days_float = (time_in_seconds/86400.0)
    days_truncated = days_float.truncate

    hours_float = (days_float - days_truncated)*24
    hours_truncated = hours_float.truncate

    minutes_float = (hours_float - hours_truncated)* 60
    minutes_truncated = minutes_float.round
    return "Hurry! There are only #{days_truncated} days #{hours_truncated} hours and #{minutes_truncated} minutes left in this campaign."
  end


  def percent_pledged #returns the % of goal completed
    if self.pledges.empty? #checks a prodcut's pledge to see if it is empty or not
      return "This campaign doesn't have any pledges - be the first!" #returns string if campaign has no pledges
    else
      total_pledges = 0 #sets value of total_pledges to zero
      self.pledges.each do |pledge| #loops over each product's pledge
        total_pledges += pledge.amount #adds each product's pledge to total_pledges
    end

    pledges = total_pledges * 1.0 #assigns total_pledges to pledges var and converts pledges to float

    percent_of_goal_float = (pledges/ self.goal) * 100 #calculates what percentage of the project goal has been pledged

    percent_of_goal_int = percent_of_goal_float.to_int #converts percent_of_goal_float to an integer

    return "So far, this campagin meets %#{percent_of_goal_int} of its goal!" #returns string displaying percentage of product's goal met
    end
  end
end
