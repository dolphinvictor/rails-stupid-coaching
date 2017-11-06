class QuestionsController < ApplicationController
  def answer
    @question = params[:query]
    @coach_answer = coach_answer(@question)
  end

  def ask
  end

  private
  def coach_answer(your_message)
    if your_message == "I am going to work right now!"
      return ""
    elsif your_message.include? "?"
      return "Silly question, get dressed and go to work!"
    else return "I don't care, get dressed and go to work!"
    end
  end
end

# class RestaurantsController
#   def index
#     @category = params[:food_type]
#     @restaurants = RESTAURANTS.select {|r| r[:category] == @category }
#   end
# end
