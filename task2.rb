class Main
  def main
    files = Dir.entries('.')
    dot_sorted_files = files.select { |file| file.start_with?('.') }.sort
    middle_file = middle(dot_sorted_files)
    plural(middle_file, 's').upcase
  end

  private

  def plural(str, symbol)
    str.end_with?('s') ? str : "#{str}#{symbol}"
  end

  def middle(array)
    middle_index = (array.length / 2).round
    array[middle_index]
  end
end

puts Main.new.main
