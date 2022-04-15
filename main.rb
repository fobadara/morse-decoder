# Buggy code: The final output should be "A BOX FULL OF RUBIES"
#   instead we are getting a lot of gibberish
# Add alphabets and morse characters to hash as key value pairs
@morse_code = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
  '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
  '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
  '--' => 'M', '-.' => 'N', '---' => 'O', '.---.' => 'P',
  '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
  '-.--' => 'Y', '--..' => 'Z', ' ' => '', '   ' => ' '
}

def decode_character(character)
  # Replace character with values in hash
  @morse_code[character]
end

puts decode_character('.-')

def decode_word(word)
  # Split word into characters
  characters = word.split(/ /)
  # puts characters
  # Decode each character
  characters.map! { |character| decode_character(character) }
  # Join characters into word
  characters.join
end

puts decode_word('-- -.--')

def decode_sentence(sentence)
  # Split sentence into words
  words = sentence.split('')
  # Decode each word
  words.map! { |word| decode_word(word) }
  # Join words into sentence
  words.join(' ')
end

puts decode_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
