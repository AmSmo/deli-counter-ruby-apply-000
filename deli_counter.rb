# Write your code here.

# presents the entirety of the line
def line(store)
  if empty?(store)
    puts "The line is currently empty."
  else
    line_string = ""
    # count = 1
    store.each do |customer|
      line_string +=" #{store.find_index(customer) + 1}. #{customer}" 
      #find_index may not work if two customers named the same, so count was the original plan
      # count += 1
    end
    puts "The line is currently:#{line_string}"
  end
end

# adds to the line and gives name, also adjusts from 0 indexing
# def take_a_number(store, name)
#   store << name
#   puts "Welcome, #{name}. You are number #{store.size} in line."
#   #again find_index is problematic if two customers have the same name, another way to do this would be to do size
# end


count= 0
def take_a_number(store)
    count += 1
    store.push(count)
    puts "Currently serving #{store[-1]}"
end

# takes out first person in list and serves them
def now_serving(store)
  if empty?(store)
    puts "There is nobody waiting to be served!"
  else
    current_customer = store.shift
    puts "Currently serving #{current_customer}."
  end
end

# trying not to repeat lines of code, even if it is one line
def empty?(store)
  store.size == 0
end