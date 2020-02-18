class TrainingsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
  end

  def show
    @trainings = Plan.all.map do |plan|
      plan.trainings.where("date >= ?", Date.today).order("date ASC").limit(1)[0]
    end
  end
end
