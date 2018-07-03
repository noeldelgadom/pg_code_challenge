# README

## Noel Delgado

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

rails d model Gender
rails d model Condition
rails d scaffold Client

rails g model Gender name:string
rails g model Condition name:string increase:integer
rails g scaffold Client name:string age:integer gender:references condition:references quote:float
