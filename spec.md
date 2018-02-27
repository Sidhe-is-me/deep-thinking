# Specifications for the Rails Assessment

Specs:
- x] Using Ruby on Rails for the project
    Complete
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Recipes)
      User has many Journals
- [x] Include at least one belongs_to relationship (x belongs_to y e.g. Post belongs_to User)
      Journal belongs to user
- [x] Include at least one has_many through relationship (x has_many y through z e.g. Recipe has_many Items through Ingredients)
      User has many Emotions thru Journal
- [x ] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity)
        -emotion
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
        -User validates email uniqueness
        -Journal validates length of entry/thought_description
        -Emotion
          -validate uniqueness

- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)

      per Corinna- possibly have /users/most_posts_on_date
      http://api.rubyonrails.org/classes/ActiveRecord/Scoping/Named/ClassMethods.html

- [ ] Include a nested form writing to an associated model using a custom attribute writer (form URL, model name e.g. /recipe/new, Item)

- [x] Include signup (how e.g. Devise)
  Devise
- [x] Include login (how e.g. Devise)
Deviseß
- [ ] Include logout (how e.g. Devise)
Devise
- [ ] Include third party signup/login (how e.g. Devise/OmniAuth)
  coded out every thing from the lesson. Can't get it to work.
- [ ] Include nested resource show or index (URL e.g. users/2/recipes)
- [ ] Include nested resource "new" form (URL e.g. recipes/1/ingredients)
- [ ] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:s
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate


_____HELP_____

Emotions -
  create method will not working
    undefined method emotion for #<Emotion:0x007fec8e5e4bd8>


  Facebook log in
    not working

  Report
    generate most used emotion and display at the top of the thought index
