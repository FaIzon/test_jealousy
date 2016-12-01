class Test

  def initialize

    @questions = [
        "Если ваш партнер бросает взгляд на незнакомую женщину, вы устраиваете ему скандал прямо на улице?",
        "Если ваш партнер опаздывает на ужин, вы уверены, что он был с другой?",
        "Вы расспрашиваете его о работе, о коллегах?",
        "Вы считаете, что каждую свободную минуту должны проводить вместе?",
        "Он для вас — свет в окошке?",
        "Случается ли вам проверять его корреспонденцию и рыться в его вещах?",
        "Чем чаще он говорит о своих чувствах, тем меньше вы верите?",
        "Вы хотите, чтобы он интересовался только тем, чем интересуетесь вы?",
        "Вы всегда спрашиваете у него, куда он ходит и с кем встречается?",
        "Если вы на него обижены, то молчите по нескольку дней?",
        "Вас мучают мысли о его бывшей возлюбленной?",
        "Он утверждает, что не ревнует вас, потому что доверяет. Для вас это означает, что любовь прошла?"
    ]

    @points = 0
    @current_question = 0
  end


  # метод, которы задает пользователю очередной вопрос и спрашивает ответ
  # если еще остались незаданные вопросы - метод должен вернуть false
  # если задан последний вопрос теста – метод должен вернуть true
  #
  # В остальном этот метод повторяет алгоритм этого теста из 8 урока.
  def next_question
    # вывели очередной вопрос из массива
    puts @questions[@current_question]

    user_input = nil

    while (user_input != "yes" and user_input != "no")
      puts "Введите yes или no и Ввод"
      user_input = STDIN.gets.chomp.downcase
    end

    if user_input == "yes"
      @points += 1
    end

    # увеличиваем счетчик заданных вопросов
    @current_question += 1

    # проверяем, если больше вопросов нет, возвращаем false, иначе - true
    if @current_question >= @questions.size
      false
    else
      true
    end
  end

  def points
    @points
  end

end # конец класса
