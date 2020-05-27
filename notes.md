# Starting a new rails project

- rails new <app_name>

# associations/models

- books
- users
- reviews

- has many relationship 
    - book has many users 

- belongs to relationship
    - reviews belongs to users/books(join) many to many

- has many through 
    - users have many books through reviews
    - books have many users through reviews

# validations

- users => important
    - username, presence, uniqueness

- books - validate presence of a title

- reviews - validate presence of content


# scope methods

- live in model
- class method

- activerecord query methods:
    - where
    - find
    - order
    - all 

- scope method is going to be responsible for returning a set of data based on what that method's goal is

- syntax

    scope :method_name, -> { activerecord_method(column: 'value') }

    # reviews table has a rating column, i want to return all the books with a rating of 5 

    scope :high_ratings, -> { where(rating: 5) }

- you're going to call in the controller Class.scope_method_name
    - @5_star_books = Review.high_ratings

- long way scope method 

    def self.high_ratings
        where(rating: 5)
    end

- user authentication 
    - users controller is responsible for creating our user object => signing up 


- sessions controller responsible for logging our users in/ logging out 