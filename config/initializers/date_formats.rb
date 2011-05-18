Date::DATE_FORMATS[:human_friendly] = lambda { |date| date.strftime("%a #{date.day.ordinalize} %b %Y") }
Date::DATE_FORMATS[:weekday_and_day] = lambda { |date| date.strftime("%a #{date.day.ordinalize}") }
Date::DATE_FORMATS[:period] = "%Y-%m"