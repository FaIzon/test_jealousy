class ResultPrinter
  def print_result(test, test_answers)
    puts "\nРезультат теста (всего баллов - #{test.points})"

    if test.points >= 10
      puts test_answers[0]
    elsif test.points >= 5
      puts test_answers[1]
    else
      puts test_answers[2]
    end
  end
end
