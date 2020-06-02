# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ability.delete_all

Ability.create!(
  name: 'A Smile and a Word',
  page: 108,
  pool: 'Intellect',
  cost: "0",
  category: 'Meta',
  power: 'Low',
  kind: 'Enabler',
  foci: 'Speaks With a Silver Tongue',
  set: 'none'
)

Ability.create!(
  name: 'Able Assistance',
  page: 108,
  pool: 'None',
  cost: "0",
  category: 'Support',
  power: 'High',
  kind: 'Enabler',
  foci: 'Descends From Nobility, Entertains, Interpets the Law',
  set: 'none'
)

Ability.create!(
  name: 'Absorb Energy',
  page: 108,
  pool: 'Intellect',
  cost: "7",
  category: 'Special Attack',
  power: 'High',
  kind: 'Action',
  foci: 'Adept',
  set: 'Overcharge Device'
)

Ability.create!(
  name: 'Absorb Kinetic Energy',
  page: 108,
  pool: 'None',
  cost: "0",
  category: 'Protection',
  power: 'Low',
  kind: 'Enabler',
  foci: 'Absorbs Energy',
  set: 'Improved Absorb Kinetic Energy, Absorb Pure Energy, Energize Creature, Energize Crowd, Energize Object, Release Energy'
)

Ability.create!(
  name: 'Absorb Pure Energy',
  page: 108,
  pool: 'None',
  cost: "0",
  category: 'Protection',
  power: 'Mid',
  kind: 'Enabler',
  foci: 'Absorbs Energy',
  set: 'Improved Absorb Kinetic Energy, Energize Creature, Energize Crowd'
)

Ability.create!(
  name: 'Accelerate',
  page: 108,
  pool: 'Intellect',
  cost: "4+",
  category: 'Support',
  power: 'Mid',
  kind: 'Action',
  foci: 'Speaker',
  set: 'none'
  )

Ability.create!(
  name: 'Acrobatic Attack',
  page: 108,
  pool: 'Speed',
  cost: "1+",
  category: 'Special Attack',
  power: 'Mid',
  kind: 'Action',
  foci: 'Fights with Panache',
  set: 'none'
)

Ability.create!(
  name: 'Action Processor',
  page: 108,
  pool: 'Intellect',
  cost: "4",
  category: 'Task',
  power: 'Mid',
  kind: 'Action',
  foci: 'Fuses Mind and Machine',
  set: 'none'
)

Ability.create!(
  name: 'Adaptation',
  page: 108,
  pool: 'None',
  cost: "0",
  category: 'Environment',
  power: 'High',
  kind: 'Enabler',
  foci: 'Adept',
  set: 'none'
)

Ability.create!(
  name: 'Adroit Cypher Use',
  page: 108,
  pool: 'None',
  cost: "0",
  category: 'Meta',
  power: 'High',
  kind: 'Enabler',
  foci: 'Warrior, Adept, Explorer, Speaker',
  set: 'none'
)

Ability.create!(
  name: 'Advanced Command',
  page: 108,
  pool: 'Intellect',
  cost: "7",
  category: 'Control',
  power: 'High',
  kind: 'Action',
  foci: 'Descends from Nobility, Leads',
  set: 'none')
