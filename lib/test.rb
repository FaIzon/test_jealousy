class Test
  attr_reader :points, :current_question

  def initialize
    @points = 0
    @current_question = 0
  end

  def read_from_file(file_name)
    begin
      File.readlines(file_name)
    rescue
      abort("Проверьте правильность имени файла #{file_name}")
    end
  end

  def next_question(questions)
    puts questions[current_question]

    user_input = nil

    while (user_input != "yes" and user_input != "no")
      puts "Введите yes или no и Ввод"
      user_input = STDIN.gets.chomp.downcase
    end

    if user_input == "yes"
      @points += 1
    end

    @current_question += 1

    (@current_question >= questions.size) ? false : true
  end
end
