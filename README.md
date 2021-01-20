# Marley Spoon Code Challenge

The repository contains my code for the Marley Spoon coding challange. I am assuming that you already know what the challange is but still I will describe it briefly.

# The Challenge
Create a project that displays the list and detailed view of recipes that are provided by the contentful api.

## Running the project

All the keys are added including production in the app so that it can be run easily. The keys are added to run the app easily with minimum effort. There is no need to hide these keys because it is a demo project.

### Using Docker Compose
Please install Docker Compose (https://docs.docker.com/compose/) if you haven't already.

Now run the command:
docker-compose up

All dependencies will be installed themselves. You can access the app from the browser by typing: http://localhost:3000/


### Without Docker Compose
To run the app without Docker Compose install all the dependencies including:
ruby: 2.6.6
node.js

After installing the dependencies run this command:
rails s

It will start the server and then you can access http://localhost:3000/

## Testing
Run the following command to run the test cases:
rpsec spec/

# About the Tech
It is a Ruby on Rails project. 
The ruby verion is 2.6.6 and the rails version is 6.1.1. 
It makes use of asset pipeline. 
A little bit of jquery is also used.
DB and ActiveRecord is not used because it makes use of the contentful API.


# Notes
Currently it is a small project which only includes displaying information from the Contentful API but to make it extendable Models are used and the structure is welldefined.

Also, food is a big part of our lives and we should be creative with it and cherrish it ;)

# What's Next?
- Some other information is available in the API that can be used to extend the project e.g. FAQs, About page etc.
- List of ingredients can be added with recipes
- It depends on the business model but it can be extended to take cooked food orders or ingredients orders.
- Recipes can have search option.
- Recipes from different areas of the world can be included and can be separated by region and categories.
- Videos can be added to guide people how to cook the food
