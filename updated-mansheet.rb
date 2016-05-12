@menu = %w(Command\ line Search Exit)

@cheat_sheet = ['mv', 'cp', 'mkdir', 'ls', 'rm']

@menu.each_with_index { |intro, i| puts "#{i + 1}. " + intro}

# @cheat_sheet.each_with_index { |intro, i| puts "#{i + 1}. " + intro}
def search
  puts "What would you like to search for?"
  user_input = gets.strip
    puts `man #{user_input}`
end


while true
  @menu
  puts "choose"
  user_input = gets.strip
  if user_input == "1"
    @cheat_sheet.each_with_index { |intro, i| puts "#{i + 1}. " + intro}
    puts "choose an item of the list"
    user_input = gets.strip
    puts `man #{user_input}`
  end
  if user_input == "2"
    search
  end
  if user_input == "q"
    exit(0)
  end
  puts "do you want to continue, press enter or quit press (q)?"
  user_input = gets.strip
  exit(0) if user_input == 'q'
  @menu.each_with_index { |intro, i| puts "#{i + 1}. " + intro}
end