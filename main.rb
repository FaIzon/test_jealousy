require_relative "lib/result_printer"
require_relative "lib/test"

puts "Тест ревнивы ли Вы. Версия 0.1\n\n"

test = Test.new

file_name = "#{File.dirname(__FILE__)}/data/questions.txt"
questions = test.read_from_file(file_name).to_a

file_name = "#{File.dirname(__FILE__)}/data/answers.txt"
test_answers = test.read_from_file(file_name).to_a

result_printer = ResultPrinter.new

while test.next_question(questions)  do
end

result_printer.print_result(test, test_answers)

