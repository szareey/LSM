class LessonsController < ApplicationController

  # before_action :permission, only: [:new]

  def new
    @lesson = Lesson.new
    @course = MinistryCourse.first
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def create
   
   # TODO: add other required attributes for Lesson
   Lesson.create(
      # user_id: params[:user_id],
      lesson: params[:lesson],
      audio: params[:audio]
      # homework: params[:homework],
      # difficulty: params[:difficutly]
      )

    redirect_to :back
  end

end