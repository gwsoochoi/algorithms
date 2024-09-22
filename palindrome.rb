class Palindrome
  def initialize(word)
    @word = word
  end

  def is_pal?
    i = 0
    result = true
    length = chars.length

    while i < length
      a = chars[i]
      b = chars[length - 1 - i]

      if a != b
        result = false
        break;
      end

      i += 1;
    end

    result
  end

  private

  attr_reader :word, :chars
  def chars
    @chars ||= word.chars
  end
end

puts "Please input word:"
s = gets.chomp.to_s

pal = Palindrome.new(s)
puts pal.is_pal?
