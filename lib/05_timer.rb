# https://stackoverflow.com/questions/28908214/converting-seconds-into-hours-only-using-ruby-in-built-function-except-the-day
def time_string(seconds)
  return Time.at(seconds).utc.strftime "%H:%M:%S"
end
