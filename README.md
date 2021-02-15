# Assignment 5: Using external APIs

Use the pokemon API https://pokeapi.co/ to make external API calls to the pokemon API. Display some information (doesn't have to be a lot) of information about pokemon. 

Make an index view that calls info from the API rather than a database. Use the built-in pagination to allow paginating through the index/list view of the pokemon

Learning Goals:
Making HTTP GET Requests to an external API.
Parsing the JSON response
Displaying that data
Figure out how to use PokeAPI's pagination.
Using Query parameters
Creating links in your rails application

A basic principle of web development is that each database row has an ID. This ID is displayed in the URL for reliable results. 

https://guides.rubyonrails.org/routing.html

GET	/admin/articles/:id	articles#show	article_path(:id)

Here, the :id value in the URL is used to query for that pokemon.

This ensures that your pages are visible to the end user and predictably, /pokemon/1 will return bulbasaur.

I recommend HTTParty gem for this.

https://github.com/jnunemaker/httparty

response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')

puts response.body, response.code, response.message, response.headers.inspect

add 'httparty" to your gemfile 
run bundle install

Use the syntax above to make GET requests to the pokemon API

I think you need to use query params to paginate - those are in the format 

https://pokeapi.co/api/v2/pokemon?offset=0&limit=20

The offset value is where you should begin counting, limit is the number of pokemon you want the API to return at a time. 

So the second page is

offset=20&limit=20

Third page:

offset=40&limit=20

So you should be able to click a link and flip through the pokemon, then display pokemon by clicking on them.

https://stackoverflow.com/questions/7316656/how-to-get-a-query-string-from-a-url-in-rails

You can probably just have the same query string in your own URL. So create a link (plain HTML is okay if using the Rails link helper is too hard)

https://www.rubyguides.com/2019/05/rails-link_to-method/

You don't really need a database for this assignment. So you will need to create your own Rails views/controllers from scratch.

https://www.theodinproject.com/courses/ruby-on-rails/lessons/routing

Look at Odin Project to figure out how to do that and ask me if you have any questions.

