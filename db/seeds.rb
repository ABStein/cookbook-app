recipe = Recipe.new(
                    title: "Hand Sandwich", 
                    chef: "Josh", 
                    ingredients: "left hand, rigth hand, lettuce, tomato, mayo, cheese", 
                    directions: "place ingredients on the left hand, put the rigth hand on top, enjoy"
                    )

recipe.save 

recipe = Recipe.new(
                    title: "Garbage lagsana", 
                    chef: "Bad Josh", 
                    ingredients: "old chinese food, socks, bannana peel, hot pepper", 
                    directions: "layer ingredients in a pan, preheat oven to 350, cook for 5 hours."
                    ) 

recipe.save