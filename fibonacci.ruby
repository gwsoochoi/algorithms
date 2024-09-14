class Fibo
  attr_reader :n
  def initialize(n)
    @n = n
  end

  def result
    puts "#{cal}"
  end

  def cal
    return 0 if n.zero?
    return 1 if n == 1

    a, b = 0, 1
    i = 2
    while i <= n
      a, b = b, a + b
      i += 1
    end
    i = 0
    b
  end
end

puts "Please input number:"
number = gets.chomp.to_i

fibo = Fibo.new(number)
fibo.result
