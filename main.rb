require_relative "test"
require_relative "result_printer"

puts "Тест ревнивы ли Вы. Версия 0.1\n\n"

test = Test.new
result_printer = ResultPrinter.new

while test.next_question == true do

end

result_printer.print_result(test)
