module ExtArray
  def middle(array)
    middle_index = (array.length / 2).round
    array[middle_index]
  end
end

class Main
  include ExtArray

  def plural(str, symbol)
    str.end_with?('s') ? str : "#{str}#{symbol}"
  end

  def main
    files = Dir.entries('.')
    dot_sorted_files = files.select { |file| file.start_with?('.') }.sort
    middle_file = middle(dot_sorted_files)
    puts plural(middle_file, 's').upcase
  end
end

Main.new.main
