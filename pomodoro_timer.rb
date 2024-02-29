#!/usr/bin/ruby

def make_sound
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

def timer(sec, name = '')
  end_time = Time.now + sec
  print("====#{name} #{sec.to_i/60} min====\n")
  while(1)
    remaining_time = end_time - Time.now

    if remaining_time < 0
      return
    else
      if( remaining_time.to_i % 60 == 0)
        print("remaining time: #{remaining_time.to_i/60} min\n")
      end
      sleep(1)
    end
  end
end


def execute(intervals)
  while(1)
    intervals.each_with_index do |interval, i|
      timer(interval.to_f * 60, "Timer #{ ('A'..'Z').to_a[i]}")
      make_sound
    end
  end
end




if __FILE__ == $0
  execute(ARGV)
end
