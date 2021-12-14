require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split(/\.|\?|!/).filter { |sentence| !sentence.empty? }.size
    # split at a period or question mark or exclamation mark and filter/add any to the array that aren't empty. 
  end
end

pp "frightful.".sentence?