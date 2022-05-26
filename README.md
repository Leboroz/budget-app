![](https://img.shields.io/static/v1?label=BY&message=Leonardo&color=purple)
![](https://img.shields.io/badge/Microverse-blueviolet)

# Budget app

> This is a ruby on rails application that allows to create users and authenticates them using devise. When users are loged in the can create groups of transactions and see the total amout. Users can create transactions for one or many groups.

## Live [here](https://floating-meadow-19685.herokuapp.com/)

### Requirements
In order to work on this project, you need to have the following dependencies installed: 

- [Ruby](https://www.ruby-lang.org/en/) 
- [Postgresql](https://www.postgresql.org/)
- [Yarn](https://yarnpkg.com/)
- [bundler](https://rudbyonrails.org/)

## Built With

- Languages: _**Ruby 3.1.1, HTML, CSS**_
- Frameworks: _**Ruby On Rails**_, _**Bootstrap**_, _**SCSS**_
- Gems: _**Devise**_, _**Cancancan**_, _**RSpec**_, _**Capybara**_, _**FactoryBot**_, _**Faker**_
- Technologies used: _**Neovim**_

## Getting Started

### Clone this repository

```bash
$ git clone git@github.com:Leboroz/budget-app.git
$ cd budget-app
```

### Commands to run

Run 
```bash
$ bundle install 
```

To get all the gems required for the project

Then, run

```bash
$ yarn install 
```
To install packages such as style linters

To check linters locally, use
```bash
$ rubocop
$ npx stylelint "**/*.scss"
```

Once you have the project correctly set up, run 
```bash
$ bin/rails db:setup
```

To run all migrations, create the database for testing and for development, and insert some data into the database for you to visualize the changes

Finally, each time you make changes to the project, run 

```bash
$ bundle exec rspec /spec
```

In the root folder to check the consistency of the app. Please don't make changes to the tests unless completely necessary, and mention it in your PR description. 

Important note: Since this project uses Bootstrap for the styling, you need to run: 

```bash
$ ./bin/dev
```

For you to see the styling being applied in the browser during development

## Authors

 👤 **ALeonardoAlbornozA**


 Platform | Badge |
 --- | --- |
 **GitHub**:   | [@Leboroz](https://github.com/leboroz)
 **Twitter**:  | [@Leboroz](https://twitter.com/leboroz)
 **LinkedIn**: | [Leonardo Albornoz](https://linkedin.com/in/leboroz)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

## Show your support

Give a ⭐️ if you like this project!
