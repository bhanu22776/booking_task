# README

schedule = StaffMemberSchedule.new(since: 1.day.from_now, till: 2.days.from_now, staff_member: StaffMember.new, duration: 45.minutes);
schedule.openings

Running the code above in the console will return chunks of 45 min intervals from to date
starting from 10 till 19

1. Extend the code to support configurable different opening hours for per staff member
2. Allow support for different hours in the weekend


Solution:

staff_member = StaffMember.new(['12:00', '21:00'], ['08:00', '17:00'])

	Here, ['12:00', '21:00'] are work hours for regular week days and ['08:00', '17:00'] are work hours for weekends.

schedule = StaffMemberSchedule.new(since: 1.day.from_now, till: 2.days.from_now, staff_member: staff_member, duration: 45.minutes)
schedule.opening_hours

Run the above code in console,

The code will return the chunks of 45 min time intervals in PST timezone for next day within the given time values. The code managed for both weekdays and weekends.