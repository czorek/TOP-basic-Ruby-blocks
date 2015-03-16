class String
  # extend String class with helper methods 
  def is_upper?
    ('A'..'z').to_a.include? self and self == self.upcase
  end

  def is_lower?
    ('A'..'z').to_a.include? self and self == self.downcase
  end
end

def caesar_cipher(message, key)
  alphabet = ('a'..'z').to_a.join
  msg = message.split('')

  msg.map! do |letter|
    if letter.is_lower?
      alphabet[alphabet.index(letter) + key % 26]
    elsif letter.is_upper?
      alphabet[alphabet.index(letter.downcase) + key % 26].upcase
    else
      letter
    end
  end
  msg.join('')
end
