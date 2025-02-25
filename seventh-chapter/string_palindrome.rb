require './palindrome'

class String

  include Palindrome

  def louder
    capital_letter = upcase
  end

end
