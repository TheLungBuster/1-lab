class Calcul
  def self.convert(value, from, to)
    case from
    when 'C'
      convert_from_c(value, to)
    when 'K'
      convert_from_k(value, to)
    when 'F'
      convert_from_f(value, to)
    end
  end

  def self.convert_from_c(value, to)
    case to
    when 'F'
      ((value * 9) / 5) + 32
    when 'K'
      value + 273
    when 'C'
      value
    end
  end

  def self.convert_from_k(value, to)
    case to
    when 'F'
      (value - 273) * 9 / 5 + 32
    when 'C'
      value - 273
    when 'K'
      value
    end
  end

  def self.convert_from_f(value, to)
    case to
    when 'C'
      (value - 32) * 5 / 9
    when 'K'
      (value - 32) * 5 / 9 + 273
    when 'F'
      value
    end
  end
end
