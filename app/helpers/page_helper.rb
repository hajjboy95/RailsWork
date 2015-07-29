module PageHelper

  def calendar(month,year)

    currentDate =  Date.new(year,month)
    m = currentDate.strftime("%B")
    dayOfTheWeek = currentDate.strftime("%w").to_i
    daysRemaining = Time.days_in_month(month,year)
    totalDays = daysRemaining

    prev_month = month - 1
    prev_yaer = year

    next_month = month + 1
    next_year = year

    if (prev_month <= 0)
      prev_month = 12
      prev_yaer = year - 1
    end

    if next_month > 12
      next_month = 1
      next_year = year + 1
    end




    days = %w(Sun Mon Tue Wed Thr Fri Sat)
    cal = ""
    cal += link_to "Prev" , calendar_path(:month =>prev_month, :year => prev_yaer)    #"/page/calendar?month=#{prev_month}&year=#{prev_yaer}"
    cal += m
    cal += link_to "Next" , calendar_path(:month =>next_month, :year => next_year)



    cal += "<table border = 1> <tr>"
    days.each do |day|
       cal+="<td> #{day} </td>"
    end

    #second row - first week of the month

    cal += "<tr>"
    dayOfTheWeek.times do
      puts ("dayOfTheWeek  = #{dayOfTheWeek}")# prints 3 for may because there are 3 days blank at the beginning
      cal+= "<td> &nbsp; </td>"
    end

    #print days of week starting with 1
    (7 - dayOfTheWeek).times do |day|
      cal+= "<td> #{day+1} </td>"
    end

    dayOfTheWeek = 7 - dayOfTheWeek-1

    cal += "</tr>"

    #loop to do in between rows

    puts ("daysReminaing = #{daysRemaining} ")
    totalDaysRemaining = daysRemaining - (dayOfTheWeek)
    puts ("total days remaining = #{totalDaysRemaining}")
    #cal += "#{totalDaysRemaining}"

    counter = 0
    for i in 0..5

      cal += "<tr>"
      daysRemaining = dayOfTheWeek + 8
      puts ("days reminaing = #{daysRemaining} , dayofTheWeek = #{dayOfTheWeek}")
    for day in (dayOfTheWeek+2)..daysRemaining

      break if day > totalDays
      cal += "<td>#{day}</td>"

    end
      dayOfTheWeek += 7

      cal += "</tr>"


  end



    return cal



  end




end
