# frozen_string_literal: true

def upper_treatment(char, jumps)
  return char unless char.match?(/[A-Z]/)

  ascii = char.ord
  ascii + jumps <= 90 ? ascii + jumps : ascii - 26 + jumps
end

def lower_treatment(char, jumps)
  ascii = char.ord
  ascii + jumps <= 122 ? ascii + jumps : ascii - 26 + jumps
end

def caesar_cipher(string, jumps)
  string.split('').reduce do |acc, char|
    acc += char.upcase == char ? upper_treatment(char, jumps).chr : lower_treatment(char, jumps).chr
  end
end

puts caesar_cipher('What a string!', 5)
