# Eric Roberts Movie Database

The goal: learn MySQL while having fun.
The result: An (aggressively-styled) web app dedicated to the *most prolific* actor - Eric Roberts. 

The Python Flask back end interacts with a MySQL database to store and manage information about movies, actors, characters, and genres related to Eric Roberts. Surprisingly, he has not starred in all Hollywood movies.

![Eric Roberts Database Logo](code/static/ericRobertsBust.jpg)


## Features

- Browse and search movies by title, year, and genre
- View movie details including associated actors and characters
- Add, update, and delete movies in the database
- Manage actors, characters, and genres associated with movies
- Utilizes a relational database schema with tables for movies, actors, characters, genres, and their relationships

## Database Schema

The database schema consists of the following tables:

- `movies`: Stores movie information such as title, release year, and associated genre
- `actors`: Stores actor information including their primary name
- `characters`: Stores character information and their associated actor and movie
- `genres`: Stores genre information
- `actors_movies`: Represents the many-to-many relationship between actors and movies

The schema includes appropriate primary keys, foreign keys, and unique constraints to ensure data integrity and maintain the relationships between entities.

## SQL Queries

The application utilizes various SQL queries to interact with the database:

- SELECT queries to retrieve movie, actor, character, and genre data based on user-specified criteria
- INSERT queries to add new movies, actors, characters, and their relationships
- UPDATE queries to modify existing movie information
- DELETE queries to remove movies and actor-movie relationships

## Setup and Installation

1. Clone the repository
        - https://github.com/davidcornett/ER-database.git
2. Set up a MySQL database and import `Eric_Roberts.sql`
3. Configure the database connection in the application:
        - Open `db_connector.py` and update the database connection details
4. Install the required Python dependencies:
        pip install -r requirements.txt
5. Run the Flask application:
        python3 app.py
