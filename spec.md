# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
    Complete
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Recipes)
      User has many Journals
- [x] Include at least one belongs_to relationship (x belongs_to y e.g. Post belongs_to User)   Journal belongs to user
- [x] Include at least one has_many through relationship (x has_many y through z e.g. Recipe has_many Items through Ingredients)
      User has many Emotions thru Journal
- [x ] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity)
        -emotion
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
        -User validates email uniqueness
        -Journal validates length of entry/thought_description
        -Emotion
          -validate uniqueness

- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
      On Thought index page- Day with Most Thoughts
- [x] Include a nested form writing to an associated model using a custom attribute writer (form URL, model name e.g. /recipe/new, Item) Thought form - emotions
- [x] Include signup (how e.g. Devise)
  Devise
- [x] Include login (how e.g. Devise) Devise
- [x] Include logout (how e.g. Devise) Devise
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
      http://localhost:3000/thoughts/24/emotions/35
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients)
      Inside the thought form create a new emo
- [x ] Include form display of validation errors (form URL e.g. /recipes/new)
  -Thought entry form needs 150 chars for entry to save
Confirm:s
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate


_____HELP_____
This is a mock up of how I want to build out my params
    params ={
          :user={
                :email => "email@email.com",
                :password => "password",
                      thoughts = {
                          :date => "this is the thought's date",
                          :thought_entry => "this is a thought",
                          :picture => "pictures are just long strings, isn't that weird?"
                                :emotion {
                                  :name => "stressed out"
                                  }
            }
          }

    }
