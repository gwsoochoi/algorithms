class Fibo
  def initialize(n)
    @n = n
  end

  def result
    puts "#{cal}"
  end

  private
  attr_reader :n

  def cal
    a, b = 0, 1

    return a if n == a
    return b if n == b

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
