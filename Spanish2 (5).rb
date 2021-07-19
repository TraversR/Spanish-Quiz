# Spanish Vocab
# Travers Rollston
# 10/9/2018


# Sets arrays for vocab & definitions


spanish_vocab = ['la boda', 'anirversario', 'cumpleaños', 'el día de fiesta',
                 'fiesta', 'invitado/a', 'Navidad', 'quinceñera', 'sorpesa', 'brindar', 'celebrar',
                 'cumplir años', 'dejar una propina', 'divertirse','graduarse','invitar',
                 'pagar la cuenta', 'pasarlo bien', 'pasarlo mal', 'regelar', 'reirse', 'relajarse', 'sonreir',
                 'sorpender', 'la alegria', 'la amistad', 'el amor', 'el divorcio', 'el estado civil',
                 'el matrimonio', 'la pareja', 'el/la recien casado/a', 'casado/a', 'divorciado/a', 'juntos', 'separado/a',
                 'soltero/a', 'viudo', 'cambiar', 'casarse', 'compreterse', 'divorciarse', 'enamorarse', 'llevarse bien',
                 'llevarse mal', 'odiar', 'romper', 'salir', 'separarse', 'tener una cita']
english_vocab = ['wedding', 'anniversary', 'birthday', 'holiday', 'party', 'guest',
                 'christmas', '15th birthday for girl', 'surprise', 'to toast',
                 'to celebrate', 'to have a birthday', 'to leave a tip', 'to have fun', 'to graduate',
                 'to invite', 'to pay the bill', 'to have a good time', 'to have a bad time', 'to give',
                 'to laugh', 'to relax', 'to smile', 'to surprise', 'happiness', 'friendship', 'love', 'divorce', 'marital status',
                 'married couple', 'couple', 'newlywed', 'married', 'divorced', 'together', 'separated', 'single', 'widowed',
                 'to change', 'to get married', 'to get engaged','to get divorced', 'to fall in love', 'to get along well',
                 'to get along badly', 'to hate', 'to break up', 'to go out', 'to separate', 'to have a date']

# Asks word in spanish to be translated from Spanish to English
puts "This program will have you translate spanish to english."
puts "If you get a word correct, you will get to move on to the"
puts "next word. If a word is incorrect, you are allowed 2 attempts"
puts "On the third attempt, the program will show you the word"
puts "that it is looking for, and ask you to type in that word."
puts "---------------------------------------------------------"
puts "---------------------------------------------------------"
points = 0
counter = 0
incorrect_counter = 0
until counter == spanish_vocab.size
  puts "Translate the following: #{spanish_vocab[counter]}"
  input = gets.downcase.chomp
  if input != english_vocab[counter]
    incorrect_counter += 1
    points -= incorrect_counter
    puts "You lost #{incorrect_counter} point(s)!"
    puts "the incorrect counter is now #{incorrect_counter}"
    if incorrect_counter == 3
      puts "The correct word is #{english_vocab[counter]}"
      else
    puts "This is incorrect try again."
    end
  elsif input == english_vocab[counter]
    puts "This is correct"
    counter += 1
    incorrect_counter = 0
    points += 1
    puts "You now have #{points} point(s)!"
  end
end
puts "You finished with #{points}!"
if
  points == spanish_vocab.size
  puts "You got every word correct on the first try."
end
puts "When you are ready to exit, press Enter."
inputtoend = gets