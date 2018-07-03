# README

This is Noel Delgado's PolicyGenious Code Challenge. The task is described [here](https://docs.google.com/document/d/15f4hiBdM26FcEdJDLWt7tacP5Jic5StUlwv4JLxT9BU/edit#heading=h.btde6cpivf).

## Demo
Check out the demo [here](https://noel-delgado-pg-challenge.herokuapp.com/)

## Installing Rails

Follow these [instructions](http://installrails.com/) 

## Running Locally

Navigate to the folder where you want to place the files. In your terminal run these commands.

1. `$ git clone https://github.com/noeldelgadom/pg_code_challenge.git`
2. `$ cd pg_code_challenge/`
3. `$ bundle`
4. `$ rake db:create`
5. `$ rake db:migrate`
6. `$ rake db:seed`
7. `$ rails s`
8. Then visit http://localhost:3000/ in your browser.

## Tests

To run tests run `$ rails test`

## Tradeoffs / Design

I only had one main design debate and it was related to how to handle the 'increases' for the health conditions. One option was to add it as a schema attribute. The other option was to write it inside the set_quote method on the Client model. I went for adding it to the Conditions schema because it eliminated if/else logic that could make it slower. Also, in the future, there could be a view file with 'admin rights' that allows you to change the values without having to dig into the code.

There is one part that doesn't look very elegant. The client_params method on the clients_controller.rb file. The rails .permit method usually looks a lot better but it didn't work with the Client-Gender and Client-Condition model relations and the bootstrap dropdown list.

### Boom!
