class TrainingsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @trainings = Training.all
  end
end
