require_relative 'calcul'

class Main
  def self.run
    puts 'Введите градусы:'
    value = gets.chomp
    value = value.to_i
    puts 'Введите шкалу из которой надо перевести:(C, F, K)'
    from = gets.chomp
    puts 'Введите шкалу в которую надо перевести:(C, F, K)'
    to = gets.chomp
    result = Calcul.convert(value, from, to)
    puts "Перевод из #{from} в #{to}: #{value} -> #{result}"
  end
end

Main.run
