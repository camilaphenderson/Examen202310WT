# Mistery App

## 1. Instalation

First, be sure to be running the following versions of the tools

1. Ruby: 3.2.0 (check with `ruby -v`)
2. Node: 20.2.0 (check with `node -v`)
3. Rails: 7.0.4.3 (check with `rails -v`)

To run the app you should:

1. Install all dependencies:
    - `bundle install`
    - `yarn`
2. Create the database running `bin/rails db:create`
3. Compile the assets:
    - `yarn build:css`
    - `yarn build`
4. Run the app with `bin/rails s`

To check everything is working OK run the app and check that the navbar appears correctly and that the dropdown works.


## 2. Exam instructions

The world famous Marie Kondo, known for being an organizing consultant, needs the help of the best Software Engineers in the planet: students of the Web Technologies in Universidad de los Andes. She wants to build a web application to keep the stock of garments her clients have in their closets.

She needs you to work in an MVP (Minimum Viable Product) of the application, in which users will be able to load their garments so in a second version she can add organizing capabilities.

## Requirements

This existing app has Bootstrap installed as well as Devise gem (with a `User` model) to manage authentication. You will have to create a `Garment` model to be able to store the closets details. This model should be able to store the following attributes of the pieces:

- Name: String
- Brand: String
- Size: enum with sizes `S`, `M`, `L`
- Date of purchase: Date

All attributes are required (at database level and also model level) and should validated. Size cannot take a value other than the ones mentioned above, and date of purchase cannot be in the future.

You are asked to have a full working application with the `Garment` model and some CRUD operations. Because of time, you have to implement just the following operations:

- List of all garments from the user
- See a single piece of garment
- Create a new piece of garment

For this features you have to create the respective `routes`, `controller actions`, `views`, and of course the `model`. Be sure to avoid creating routes you will not use (using `exclude` in the routes file).

## Grading

The exam is graded on a 0 - 6 scale plus the base point to reach the classic 1 - 7 scale. The allocation of points is the following:

- 1 point: Model creation with correct fields and datatypes
- 1 point: Routes, with exclusion
- 2 points: Controller
- 2 points: Views using Bootstrap
