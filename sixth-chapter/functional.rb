states = ["Kansas", "Nebraska", "North Dakota", "South Dakota"]

# urls: Imperative version

def imperative_urls(states)
  urls = []
  states.each do |state|
    urls << urlify(state)
  end
  urls
end

def functional_urls(states)
  states.map {|state| urlify(state)}
end

def urlify(string)
  string.downcase.split.join("-")
end

# puts functional_urls(states).inspect
# p imperative_urls(states)

def imperative_singles(states)
  singles = []
  states.each do |state|
    puts "#{state} = #{state.split.length}"
    if state.split.length == 1
      puts "#{state} = #{state.length}"
      singles << state
    end
  end
  singles
end

def functional_singles(states)
  states.select {|state| state.split.length == 1 }
end
puts functional_singles(states).inspect
# puts imperative_singles(states).inspect
