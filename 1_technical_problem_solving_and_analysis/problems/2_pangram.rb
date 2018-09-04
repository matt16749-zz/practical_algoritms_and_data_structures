=begin
A pangram is a phrase which contains every letter at least once,
such as “the quick brown fox jumps over the lazy dog”.
Write a function which determines if a given string is a pangram.
Please find at least three different strategies for solving this problem
=end

# Pangram is a sentence that contains all the letters of the alphabet.
# Method accepts string.
# Method outputs boolean.
# Get all the letters of the alphabet. Can either put in array or hash. Hash is faster
class Pangram
  attr_reader :alphabet_hash
  attr_reader :alphabet_array
  attr_reader :string_to_evaluate

  def initialize(string_to_evaluate)
    @string_to_evaluate = string_to_evaluate
    @alphabet_hash = {
      'a' => false,
      'b' => false,
      'c' => false,
      'd' => false,
      'e' => false,
      'f' => false,
      'g' => false,
      'h' => false,
      'i' => false,
      'j' => false,
      'k' => false,
      'l' => false,
      'm' => false,
      'n' => false,
      'o' => false,
      'p' => false,
      'q' => false,
      'r' => false,
      's' => false,
      't' => false,
      'u' => false,
      'v' => false,
      'w' => false,
      'x' => false,
      'y' => false,
      'z' => false
    }
    @alphabet_array = ('a'..'z').to_a
  end

  def is_pangram_via_alphabet_hash?
    convert_alphabet_hash_based_off_string_chars
    alphabet_values = alphabet_hash.values.uniq
    alphabet_values.count == 1 && alphabet_values.first == true
  end

  def is_pangram_via_alphabet_array?
    remove_char_from_alphabet_array
    alphabet_array.empty?
  end

  def is_pangram_via_sorted_string_and_count?
    letters_in_alphabet = 26
    string_to_evaluate.gsub(/[^0-9A-Za-z]/, '').downcase.chars.sort.uniq.count == letters_in_alphabet
  end

  private

  def convert_alphabet_hash_based_off_string_chars
    string_to_evaluate.each_char do |char|
      alphabet_hash[char] = true
    end
  end

  def remove_char_from_alphabet_array
    string_to_evaluate.each_char do |char|
      alphabet_array.delete(char)
    end
  end
end

puts Pangram.new("the quick brown fox jumps over the lazy dog").is_pangram_via_alphabet_hash?
puts Pangram.new("not pangram").is_pangram_via_alphabet_hash?
puts Pangram.new("f").is_pangram_via_alphabet_hash?

puts Pangram.new("the quick brown fox jumps over the lazy dog").is_pangram_via_alphabet_array?
puts Pangram.new("not pangram").is_pangram_via_alphabet_array?
puts Pangram.new("f").is_pangram_via_alphabet_array?

puts Pangram.new("the quick brown fox jumps over the lazy dog").is_pangram_via_sorted_string_and_count?
puts Pangram.new("not pangram").is_pangram_via_sorted_string_and_count?
puts Pangram.new("f").is_pangram_via_sorted_string_and_count?
