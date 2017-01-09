# DeterminedMe
### A treelike goal planner.

## Setup & Install

- Clone this repo _(please Fork, so I can Pull all your great additions and fixes!)_
- Change into the repo directory (`cd determinedme`)
- run `bundle install`
- run `rails db:setup`
- run `rails s`
- navigate to `localhost:3000` in your web browser

## Background

### Planning
I began my planning by creating user stories through [Projects](https://help.github.com/articles/tracking-the-progress-of-your-work-with-projects/). I then used created wireframes for these features as wells as an entity relationship diagram (ERD). These diagrams are located in the `planning` directory of this repository.

### Future Goals
In my planning, I had hopes for self-imposed accountability through setting deadlines on goals. I was hoping to integrate scheduling assistance based on number of sub-goals and the timeframe given. I hope to continue to build these features. Another plan, that is evident in my wireframes is the ability to see a determination over time, so that a user can see progress and future work to be done.

### Resources

#### Authentication
- [Devise](https://github.com/plataformatec/devise)

#### Associations
- [acts_as_tree](https://github.com/amerine/acts_as_tree)

#### UI
- [dynamic_form](https://github.com/joelmoss/dynamic_form)
- [Bourbon](http://bourbon.io/)
- [Bitters](http://bitters.bourbon.io/)
- [Neat](http://neat.bourbon.io/)
- [Refills](http://refills.bourbon.io/)

#### Testing
- [rspec-rails](https://github.com/rspec/rspec-rails)
- [factory_girl_rails](https://github.com/thoughtbot/factory_girl_rails)
