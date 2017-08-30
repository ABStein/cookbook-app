class RecipesController < ApplicationController
  def one_recipe_action
    @recipe = Recipe.first
    render 'one_recipe_page.html.erb'
  end

  def all_recipes_action
    @recipes = Recipe.all
    render 'all_recipes_page.html.erb'
  end
end
