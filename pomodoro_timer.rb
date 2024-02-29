#!/usr/bin/ruby

def alarm_sansannana
  short = 0.2
  long = 0.35

  print "\007"
  sleep(short)
  print "\007"
  sleep(short)
  print "\007"
  sleep(long)

  print "\007"
  sleep(short)
  print "\007"
  sleep(short)
  print "\007"
  sleep(long)

  print "\007"
  sleep(short)
  print "\007"
  sleep(short)
  print "\007"
  sleep(long)

  print "\007"
  sleep(short)
  sleep(long)
end

def timer(sec, prefix = '')
  end_time = Time.now + sec
  print("#{prefix} あと #{sec.to_i/60} 分でーす\n")

  while(1)
    remaining_time = end_time - Time.now

    if remaining_time < 0
      return
    else
      if( remaining_time.to_i % 60 == 0)
        print("#{prefix} remaining time: #{remaining_time.to_i/60} min\n")
      end
      sleep(1)
    end
  end
end


def execute(intervals)
  while(1)
    intervals.each_with_index do |interval, i|
      timer(interval * 60, "Timer #{i+1}")
      alarm_sansannana
    end
  end
end




if __FILE__ == $0
  execute([50, 5])
end
