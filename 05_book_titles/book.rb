class Book
# write your code here
  attr_accessor :title
  # def initialize(title)
  #   @title = title
  # end


  def title
    
    new_title = @title.split(' ')
    new_title[0].capitalize!
    new_title.each do |word|
      word.downcase
      if word == 'a' || word == 'and' || word == 'the' || 
        word == 'of' || word == 'an' || word == 'or' || word == 'in'
        word = word
      else
        word.capitalize!
      end
    end
    new_title.join(" ")
  end
end

