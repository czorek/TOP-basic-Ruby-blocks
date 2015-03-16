class String
  # extend the String class to check if a alpha char is lower or upper
  
  def is_upper?
    ('a'..'z').to_a.join.include? self and self == self.upcase
  end

  def is_lower?
    ('a'..'z').to_a.join.include? self and self == self.downcase
  end
end

def caesar_cipher(message, key)
  alphabet = ('a'..'z').to_a.join
  arr = message.split('')

  arr.map! do |letter|
    if letter.is_upper?
      alphabet[alphabet.index(letter.downcase) + key % 26].upcase
    elsif letter.is_lower?
      alphabet[alphabet.index(letter) + key % 26]
    else not alphabet.include? letter
      letter
    end
  end
  arr.join('')
end
