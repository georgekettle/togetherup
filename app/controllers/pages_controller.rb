#TO DOs
#ADD BEST STREAK FUNCTIONALITY! -MAYBE TO DB
#DAY MAY NOT BE SPECIFIED FREQ_INTERVAL (SEE LINE 29)

class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  
  def home
  end

 
  def profile
    @user = current_user
    @current_streak = get_current_streak(@user)
  end


 private

 def find_log_by_date(user, day)
  user.logs.find { |log| log.date == day }
end

def get_current_streak(user)
  date = Date.today
  log = user.logs.last
  count = 0
  until log.nil?
    date = date.prev_day
    # THIS NEEDS TO BE ADJUSTED IF FREQ_INTERVAL IS NOT 'DAYS'
    count +=1
    log = find_log_by_date(user, date)
  end
  count

end


end
