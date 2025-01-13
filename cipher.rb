# frozen_string_literal: true

def ceasar_cipher(phrase, shift)
  phrase_array = phrase.split('')
  phrase_array.map! do |char|
    if char.ord.between?(65, 90) || char.ord.between?(97, 122)
      char = char.ord + shift
      char -= 26 if char > 122 || (char > 90 && char < 97)
      char.chr
    else
      char
    end
  end
  phrase_array.join('')
end

puts ceasar_cipher('molweni apho kuni', 5)
