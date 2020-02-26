# Restaurant Application

w/ Authentication

## Instructions

To try-out the live version of the application click this link:
[Restaurant App](https://radenar.github.io/restaurant-app-front/)
This repository live version is at the following link:
[Back-end](https://raden-restaurant-app.herokuapp.com/)

To run locally, run the following in terminal from the project directory:

```sh
bin/rails server
```

## Planning and Development process

1.  Entry Relationship Diagram and User Stories were made first
2.  The restaurant resource was then scaffolded and edited to be openread controller
3.  Front end work was done up to finishing restaurant functionality
4.  Reservations resource was then created
5.  Reservation relationships were renamed and changed to protected controller
6.  The rest of the front-end was finished (see link to repository at the bottom of page)

## Problem solving strategy

-   See what the error is in the browser/server terminal
-   If unknown error check the files starting with the route -> controller -> module -> serializer
-   Make sure resource can be seen in the browser at /resource-name

## Built With

-   [Ruby](https://www.ruby-lang.org/en/)
-   [Ruby on Rails](https://rubyonrails.org/)
-   [Postgres](https://www.postgresql.org/)

Front-end:

-   [jQuery](https://jquery.com/) - DOM Manipulation
-   [AJAX](https://api.jquery.com/category/ajax/) - AJAX used for API calls
-   [Javascript](https://developer.mozilla.org/en-US/docs/Web/JavaScript) - Language for site functionality
-   [Bootstrap](https://getbootstrap.com/) - Used for more advanced styling
-   [CSS3](http://www.css3.info/) - Used in conjunction with bootstrap for styling
-   [HTML5](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/HTML5) - Used for general structure of webpage

## Entry Relationship Diagram (ERD)

User -|-< Restaurant

| Restaurants  |             |
| ------------ | ----------- |
| id           | primary key |
| user_id      | foreign key |
| name         | string      |
| address      | string      |
| rating       | integer     |
| cuisine_type | string      |
| healthy      | boolean     |

Users -|-< Reservations >-|- Restaurants

| Reservations  |             |
| ------------- | ----------- |
| id            | primary key |
| user_id       | foreign key |
| restaurant_id | foreign key |
| time          | time        |
| date          | date        |

## User Stories

-   As a user, I want to be able to sign in.
-   As a user, I want to be able to sign up.
-   As a user, I want to be able to sign out.
-   As a user, I want to be able to change my password.

-   As a user, I want to be able to add a restaurant.
-   As a user, I want to be able to update information about a restaurant.
-   As a user, I want to be able to delete a restaurant.
-   As a user, I want to be able to see all the restaurants.

-   As a user, I want to be able to add a reservation.
-   As a user, I want to be able to see all reservations.
-   As a user, I want to be able to delete a reservation.

## Possible future additions/ Unsolved problems

-   Link to a 3rd party API to make actual reservations
-   Link to a 3rd party maps application (maybe google maps) to show location of restaurant

## Links to Repositories

[Front-end](https://github.com/RadenAR/restaurant-app-front)

[Back-end](https://github.com/RadenAR/restaurant-app-back)

## Author

-   Raden
