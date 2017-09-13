require 'pry'

def check_palindrome(input)
  if input.downcase == "quit"
    exit
  else
    arr = input.downcase.gsub(/\s+/, '').chars
    start = 0
    finish = arr.length-1

    while start < finish
      if arr[start] != arr[finish]
        puts "#{input} is not a palindrome"
        break
      else
        start += 1
        finish -= 1
      end
    end

    if start >= finish
     puts "#{input} is a palindrome!"
    end
  end
 
end

while true
  puts "Enter your string to check for a palindrome:"
  check_palindrome($stdin.gets.strip)
end