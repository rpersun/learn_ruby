def translate(sentence)
  words = sentence.split(" ")
  
  fullans = ""
  number_of_words = words.count
  words.each do |word|  
    letters = word.split(//)
    #letters[0..1].join.upcase
    
    if %w(a e i o u).include? letters[0]
      ans = letters.join + 'ay'
      
    else
      case 
        # looking for QU
      when letters[0..1].join.upcase == 'QU'
        first = letters[0..1].join
        letters.slice!(0,2)
        ans = letters.join + first + "ay"

        # looking for squ
      when letters[0..2].join.upcase == 'SQU'
        first = letters[0..2].join
        letters.slice!(0,3)
        ans = letters.join + first + "ay"

        #first three characters are consonants
      when  letters[0] =~ /[^aeiou]/ && letters[1] =~ /[^aeiou]/ && letters[2] =~ /[^aeiou]/
          first = letters[0..2].join
        letters.slice!(0,3)
        ans = letters.join + first + "ay"

        #first two letters are consonants
      when  letters[0] =~ /[^aeiou]/ && letters[1] =~ /[^aeiou]/
          first = letters[0..1].join
        letters.slice!(0,2)
        ans = letters.join + first + "ay"

        #first letter is a consonant
      when  letters[0] =~ /[^aeiou]/ 
          first = letters[0]
        letters.slice!(0,1)
        ans = letters.join + first + "ay"
      end
    end
    if number_of_words > 1
      fullans += ans + " "
    else
      fullans += ans 
    end
  end
  fullans.rstrip
end





