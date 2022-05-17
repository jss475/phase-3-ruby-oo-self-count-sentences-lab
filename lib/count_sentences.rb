require 'pry'

class String

  def sentence?
    if self[-1] == '.'
      true
    else
      false
    end
  end
 
  def question?
    if self[-1] == '?'
      true
    else
      false
    end
  end

  def exclamation?
    if self[-1] == '!'
      true
    else
      false
    end
  end

  def count_sentences
    no_empty = []
    split_up = self.split(/[.!?]/)
    split_up.each do |line|
      if(line != '')
        no_empty.push(line)
      end
    end
    no_empty.count
  end

end