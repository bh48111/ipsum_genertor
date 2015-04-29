require 'bundler'
Bundler.require

get '/' do
  erb :main
end

post '/' do
  number_of_paragraphs = params["paragraphs"].to_i


  # generate the ipsum and store it in an instance variable
  text_options = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"," "]

  @the_paragraph = ""
  @the_paragraph = @the_paragraph + "abc"

  z = 0
  while z < number_of_paragraphs
    paragraph = rand(500...1000)

    i=0
    while i<paragraph

      random_word_length = rand(1...100)
      random_add_random_letters_string = rand(1...1000)
      which_number_for_the_variable_above = 10

      a = 0
      if random_word_length.between?(0,5)
        #add 1 letter word
        while a < 1
        @text = text_options.sample
        @the_paragraph = @the_paragraph + @text
        a = a+1
        end
        @the_paragraph = @the_paragraph + " "
        if random_add_random_letters_string == which_number_for_the_variable_above
          @the_paragraph = @the_paragraph + "randomletters"
        end
      elsif random_word_length.between?(5,15)
        #add 2 letter word
        while a < 2
          @text = text_options.sample
          @the_paragraph = @the_paragraph + @text
          a = a+1
        end
        @the_paragraph = @the_paragraph + " "
        if random_add_random_letters_string == which_number_for_the_variable_above
          @the_paragraph = @the_paragraph + "randomletters"
        end
      elsif random_word_length.between?(15,25)
        #add 3 letter word
        while a < 3
          @text = text_options.sample
          @the_paragraph = @the_paragraph + @text
          a = a+1
        end
        @the_paragraph = @the_paragraph + " "
        if random_add_random_letters_string == which_number_for_the_variable_above
          @the_paragraph = @the_paragraph + "randomletters"
        end
      elsif random_word_length.between?(25,35)
        #add 4 letter word
        while a < 4
          @text = text_options.sample
          @the_paragraph = @the_paragraph + @text
          a = a+1
        end
        @the_paragraph = @the_paragraph + " "
        if random_add_random_letters_string == which_number_for_the_variable_above
          @the_paragraph = @the_paragraph + "randomletters"
        end
      elsif random_word_length.between?(35,45)
        #add 5 letter word
        while a < 5
          @text = text_options.sample
          @the_paragraph = @the_paragraph + @text
          a = a+1
        end
        @the_paragraph = @the_paragraph + " "
        if random_add_random_letters_string == which_number_for_the_variable_above
          @the_paragraph = @the_paragraph + "randomletters"
        end
      elsif random_word_length.between?(45,55)
        #add 6 letter word
        while a < 6
          @text = text_options.sample
          @the_paragraph = @the_paragraph + @text
          a = a+1
        end
        @the_paragraph = @the_paragraph + " "
        if random_add_random_letters_string == which_number_for_the_variable_above
          @the_paragraph = @the_paragraph + "randomletters"
        end
      elsif random_word_length.between?(55,65)
        #add 7 letter word
        while a < 7
          @text = text_options.sample
          @the_paragraph = @the_paragraph + @text
          a = a+1
        end
        @the_paragraph = @the_paragraph + " "
        if random_add_random_letters_string == which_number_for_the_variable_above
          @the_paragraph = @the_paragraph + "randomletters"
        end
      elsif random_word_length.between?(65,75)
        #add 8 letter word
        while a < 8
          @text = text_options.sample
          @the_paragraph = @the_paragraph + @text
          a = a+1
        end
        @the_paragraph = @the_paragraph + " "
        if random_add_random_letters_string == which_number_for_the_variable_above
          @the_paragraph = @the_paragraph + "randomletters"
        end
      elsif random_word_length.between?(75,85)
        #add 9 letter word
        while a < 9
          @text = text_options.sample
          @the_paragraph = @the_paragraph + @text
          a = a+1
        end
        @the_paragraph = @the_paragraph + " "
        if random_add_random_letters_string == which_number_for_the_variable_above
          @the_paragraph = @the_paragraph + "randomletters"
        end
      elsif random_word_length.between?(85,95)
        #add 10 letter word
        while a < 10
          @text = text_options.sample
          @the_paragraph = @the_paragraph + @text
          a = a+1
        end
        @the_paragraph = @the_paragraph + " "
        if random_add_random_letters_string == which_number_for_the_variable_above
          @the_paragraph = @the_paragraph + "randomletters"
        end
      elsif random_word_length.between?(95,100)
        #add random length letter word
        #currently does nothing
      end

      @text = text_options.sample
      #puts @text
      @the_paragraph = @the_paragraph + @text
      i = i+1
    end
    @the_paragraph = @the_paragraph + "<br><br>"

    puts i

    z = z+1
  end

  erb :result
end