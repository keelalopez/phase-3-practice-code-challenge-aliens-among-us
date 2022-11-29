e1 = Earthling.create(first_name: 'John', last_name: 'Smith', job: 'construction')
e2 = Earthling.create(first_name: 'Terry', last_name: 'Doe', job: 'construction')
e3 = Earthling.create(first_name: 'Betzy', last_name: 'Johnson', job: 'construction')

a1 = Alien.create(name: "CoolBeans", earth_disguise_name: "Todd", home_planet: "Marz", light_years_to_home_planet: 5)
a2 = Alien.create(name: "Tumblr", earth_disguise_name: "Ben", home_planet: "Pluto", light_years_to_home_planet: 20)
a3 = Alien.create(name: "Crystal", earth_disguise_name: "Crystal", home_planet: "Sum", light_years_to_home_planet: 2)

Visitation.create(date: DateTime.new(2009,9,1,17), alien_id: a1.id, earthling_id: e1.id)
Visitation.create(date: DateTime.new(2009,9,1,17), alien_id: a2.id, earthling_id: e1.id)
Visitation.create(date: DateTime.new(2009,9,1,17), alien_id: a3.id, earthling_id: e2.id)
Visitation.create(date: DateTime.new(2009,9,1,17), alien_id: a1.id, earthling_id: e3.id)