class Question

  attr_accessor :question, :answer

  def initialize(qa)
    @question = qa[0]
    @answer = qa[1]
  end

end