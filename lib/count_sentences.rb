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
    splited = self.split(/\?|\.|\!/).reject { |e| e.nil? || e.empty? }
    splited.count
  end
end