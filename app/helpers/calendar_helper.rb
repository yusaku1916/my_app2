module CalendarHelper
  def two_weeks_calendar(events)
    simple_calendar do |month, options|
      options[:start_date] ||= Date.today - 14.days
      options[:end_date] ||= Date.today + 14.days
      month_calendar(events: events, start_date: options[:start_date], end_date: options[:end_date])
    end
  end
end
