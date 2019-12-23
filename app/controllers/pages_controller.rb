class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    today = Date.today()
    @trainings = Training.where(date: today)
  end
end
