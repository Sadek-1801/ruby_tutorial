def sandwich
  puts "top bread"
  yield
  puts "bottom bread"
end

sandwich do
  puts "butter, mutton, and tomato"
end


def tag(tagname, text)
  html = "<#{tagname}> #{text} </#{tagname}>"
  yield html
end

tag("p", "lorem") do |markup|
  puts markup
end

10.downto(1) do |n|
  if n == 1
    puts "#{n} bottle of beer on the wall"
  else
    puts "#{n} bottles of beer on the wall"
  end
end

5.downto(1) do |bottles|
  puts "#{bottles} bottle#{"s" if bottles != 1} of beer on the wall.",
       "#{bottles} bottle#{"s" if bottles != 1} of beer.",
       "Take one down, pass it around.",
       "#{bottles - 1} bottle#{"s" if bottles - 1 != 1} of beer on the wall.\n\n"
end
