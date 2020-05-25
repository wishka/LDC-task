time = Time.new

arr_time = {'1' => 'Monday', '2' => 'Tuesday', '3' => 'Wednesday', '4' => 'Thursday', '5' => 'Friday',
         '6' => 'Saturday', '7' => 'Sunday'}
week_day = time.wday.to_s

arr_time[week_day]
