task default: %w[all]

task :hello do
  puts "Welcome to AOC 2020 in Ruby"
end

task :all do
  Dir.glob("test/test_*.rb") do |test_file|
    ruby "#{test_file}"
  end
end

task :day1 do
  ruby "test/test_day01.rb"
end

task :day2 do
  ruby "test/test_day02.rb"
end

task :day3 do
  ruby "test/test_day03.rb"
end

task :day4 do
  ruby "test/test_day04.rb"
end
