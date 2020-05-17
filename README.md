# Add a database to an application

## Set up

First of all, to get everything set up

* Fork this repo to your GitHub account
* Clone your forked repo to your machine
* `cd` into the directory and install the dependencies by doing `bundle`
* Start the server by doing `rackup`
* Explore the app in your browser!

### Running the tests
* Do `rspec` to run all the tests - some of them will fail!
* Using the tests to guide you, and adding more unit tests as needed, implement the missing features

### Adding a database

* Once all the feature and unit tests are passing, refactor the application to use a database.
* You could interact with the database in the same way that BookMark Manager does.
* You could consider using DataMapper, though that gem appears to be heading out of use and you might struggle to find documentation :grimacing:
* You could consider trying [Ruby Object Mapper](https://rom-rb.org/)
