class StaffMember
  include ActiveModel::Model
  attr_accessor :start_work_hour, :end_work_hour, :weekend_start_work_hour, :weekend_end_work_hour
  def initialize(regular_hours, weekend_hours)
  	@start_work_hour = regular_hours.first
  	@end_work_hour = regular_hours.last
    @weekend_start_work_hour = weekend_hours.first
    @weekend_end_work_hour = weekend_hours.last
  end
  def events; {} end
  def timezone; Time.find_zone("PST8PDT") end
  def start_hour; self.try(:start_work_hour) || '10:00' end
  def end_hour; self.try(:end_work_hour)   || '19:00' end
  def weekend_start_hour; self.try(:weekend_start_work_hour) || '10:00' end
  def weekend_end_hour; self.try(:weekend_end_work_hour)   || '19:00' end
  def start_hour_offset; ChronicDuration.parse([start_hour, ':00'].join) end
  def end_hour_offset; ChronicDuration.parse([end_hour, ':00'].join) end
end