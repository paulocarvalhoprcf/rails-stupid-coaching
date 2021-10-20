class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.blank?
      @answer = "What!? Say something, stupid!"
    elsif @question.downcase == "i am going to work" || "i'm going to work" || "i m going to work"
      @answer = "Great!"
    elsif @question == "?"
      @answer = "What!? I didn't understand anything you just said!"
    elsif @question.ends_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
