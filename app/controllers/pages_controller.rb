class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :mealplanner, :review, :statistics]

  def home
  end

  def mealplanner
    @breakfast_meals = Breakfast.all
    @lunch_meals = Lunch.all
    @dinner_meals = Dinner.all

    @ingredients = Ingredient.all
  end

  def review
  end

  def statistics
  end
end
