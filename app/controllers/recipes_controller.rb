class RecipesController < ApplicationController

    def index
      
      if session[:count] == nil
        session[:count] = 0
      end
      


      session[:count] += 1#a cookie amigical hash
      @counter = session[:count]
    



    @recipes = Recipe.all


  end

  def new
    
  end

  def create
    recipe = Recipe.new(
                        title: params[:title],
                        chef: params[:chef],
                        ingredients: params[:ingredients],
                        directions: params[:directions]
                        )
    recipe.save
    flash[:success] = "Recipe successfully created" 
    redirect_to "/recipes/#{recipe.id}"
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    recipe = Recipe.find(params[:id])

    recipe.assign_attributes(
                            title: params[:title],
                            chef: params[:chef],
                            ingredients: params[:ingredients],
                            directions: params[:directions]
                            )

    recipe.save
    flash[:success] = "Recipe successfully updated"
    redirect_to "/recipes/#{recipe.id}"
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    flash[:success] = "Recipe successfully deleted"
    redirect_to "/recipes"
  end
end



