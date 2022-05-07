# Minesweeper

Minesweeper is an application for creating sample board designs

## Requirements

- You need Ruby 3.0.0 version

- Rails version "~> 7.0.2", ">= 7.0.2.4"

- PostgreSQL. Versions 9.3 and up are supported.

## Installation

```ruby
rails db:create db:migrate

# Optional you can seed your database with default boards

rails db:seed # this will create 20 random boards for you

```

Start the server using 

```ruby
rails s
```

You can visit http://localhost:3000 to see the site

## Tests

```ruby
rspec 
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
