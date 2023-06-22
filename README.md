# Mistery App

## Instalation

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
