def bootup(name)
  puts "*********************************************************"
  puts "\sHi #{name}! My name is Ruby, and I am here to assist you."
  puts "\sWhat would you like me to do?"
  puts "\t1. Calculate"
  puts "\t2. Make List"
  puts "\t3. Sleep"
  puts "*********************************************************"
  print "Enter number or action: "
  answer = ""
  answer = gets.chomp.downcase
  if answer == "1" || answer == "calculate"
    print "Please write out your expression: "
    expression = gets.chomp
    print "The answer to your expression is... " 
    puts eval(expression)      
  end
  if answer == "2" || answer == "make list"
    list = []
    print "Please name your list: "
    list_name = gets.chomp
    print "Please enter an item for your list, '#{list_name}': "
    item = gets.chomp
    list.push(item)
    puts list.inspect
    next_item = ""
    until next_item == "done!" do
      print "Enter another item or type 'done!': "
      next_item = gets.chomp
      if next_item != "done!"
        list.push(next_item)
        puts list.inspect
      else
        puts "Your complete list, '#{list_name}', is as follows:"
        puts "\t---------------"
        for list_item in list
          puts "\t" + list_item
        end
        puts "\t---------------"
      end
    end
  end
  if answer == "3" || answer == "sleep"
    puts "Okay, talk to you later!"
  end
end

print "Enter your name: "
name = gets.chomp.capitalize!

bootup(name)