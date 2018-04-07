class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :mealplanner, :review, :statistics]

  def home
  end

  def mealplanner
  end

  def review
  end

  def statistics
  end
end
