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
    string_to_evaluate.gsub(/[^0-9A-Za-z]/, '').downcase.chars.uniq.count == letters_in_alphabet
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

=begin
Thought of using an alphabet hash to evaluate if string is pangram b/c hash is faster than array.
But walking through each char in the evaluated string makes is O(n)
So Pangram#is_pangram_via_alphabet_hash? should be O(n)
=end
puts Pangram.new("the quick brown fox jumps over the lazy dog").is_pangram_via_alphabet_hash?
puts Pangram.new("not pangram").is_pangram_via_alphabet_hash?
puts Pangram.new("f").is_pangram_via_alphabet_hash?

=begin
Thought of using an alphabet array to evaluate if string is pangram just to see if this would make it any slower.
Array#delete is O(n) https://apidock.com/ruby/Array/delete
Walking through each char in the evaluated string makes is O(n)
So Pangram#is_pangram_via_alphabet_array? should be O(n^2)
=end
puts Pangram.new("the quick brown fox jumps over the lazy dog").is_pangram_via_alphabet_array?
puts Pangram.new("not pangram").is_pangram_via_alphabet_array?
puts Pangram.new("f").is_pangram_via_alphabet_array?

=begin
I shifted my thinking of evaluating every char in alphabet to just the number of letters in alphabet.
If I can evaluate all the lowercased uniq chars and see if they add up to 26, then I can also solve the problem
String#gsub is O(n) https://stackoverflow.com/questions/20173389/time-complexity-of-gsub
No nested loops, so Pangram#is_pangram_via_sorted_string_and_count? should be O(n)
=end
puts Pangram.new("the quick brown fox jumps over the lazy dog").is_pangram_via_sorted_string_and_count?
puts Pangram.new("not pangram").is_pangram_via_sorted_string_and_count?
puts Pangram.new("f").is_pangram_via_sorted_string_and_count?
