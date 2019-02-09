class Array
  def middle
    middle_index = (self.length / 2).round
    self[middle_index]
  end
end

class String
  def plural(symbol)
    self.end_with?('s') ? self : "#{self}#{symbol}"
  end
end

class Main
  def main
    files = Dir.entries('.')
    puts files.select { |file| file.start_with?('.') }.sort.middle.plural('s').upcase
  end
end

Main.new.main
