# Mission Meals

###### Problem
On earth 1/3 of the food produced is wasted even though there are populations subjected to famine.

## Solution
Mission meals is a personalized food distribution system made to minimize waste and optimize production. We start a new system where everybody works 2 hours a day in food production and in exchange receives food through mission meals distribution. Each user has an account and chooses their meals for the weeks. The app tracks statistics on the consumption habits of the population and can be used to train AI to determine exactly how much to produce of each ingredient.

## Team Members
- [Nicolas Fan](https://github.com/nicfan139)
- Artur Vidal Maia
- Thomas Brunel Ouellet
- Jean Debruille
- [David Wawryko](https://github.com/digitalfabric92)

https://www.hackworks.com/en/missionhackMTL/teams/missionmeals

## Features
* Landing page
* Plan your meal
* Review your meal
* Confirmation page
* Statistics
* Default meal planning

## Setup
1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Run `bin/rake db:reset` to create, load and seed db
4. Run `bin/rails s` to start the server

## Future Developments
* Create new recipes
* Family orders
* Communities orders
* Birthdays special
* Diet specification
* Health specification

## Inspiration

In 1969, NASA landed men on the moon and returned them home safely again, guided by a computer system only a fraction as powerful as the phones in our pockets today. Now almost 50 years later, after decades of technological advancements that have stayed true to Moore’s Law, humans are once again ready to set foot on new planetary soil.

The International Organization for Galactic Exploration (IOGE) has just confirmed the discovery of a planet more Earth-like than Saturn’s moon Enceladus. In an unprecedented agreement between the United Nations, the World Economic Forum, and governments of all G8 countries, funding has been secured to send a group of 80,000 settlers to establish a New Earth colony.

The Settlement Project is an opportunity to demonstrate the reaches of human design and the capacity of technological advancement.

In order to mitigate risks for the Mission, an application process has been set up to determine the most suitable initiatives for the initial stages of The Settlement Project. Freed from the constraints of legacy systems and existing infrastructure on Earth, applicants will leverage their vast knowledge of cutting-edge technologies and their understanding of human interaction to propose projects to shape the New Earth.

http://www.missionhack.ca/

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x

## Ruby Gems
* Devise
* figaro
* jbuilder 2.0
* pg 0.21
* puma
* rails 5.1.5
* redis
* csv
* activerecord-reset-pk-sequence
* autoprefixer-rails
* bootstrap-sass 3.3
* font-awesome-sass 4.7
* sass-rails
* simple_form
* uglifier
* webpacker
