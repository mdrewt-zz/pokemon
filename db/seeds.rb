# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

type_fire = Type.find_or_create_by(name: 'Fire')
type_normal = Type.find_or_create_by(name: 'Normal')

species = Species.create_with(
  sprite_sheet_url: 'https://spng.pngfly.com/20180802/htz/kisspng-charmander-pikachu-gif-pok%C3%A9mon-pixel-art-pixilart-charmander-by-buttercup-buns-5b6305c307eb67.4655861815332161950324.jpg',
  sprite_sheet_data: {},
  base_hp: 39,
  base_speed: 65,
  base_attack: 52,
  base_sp_attack: 60,
  base_defense: 43,
  base_sp_defense: 50,
  primary_type_id: type_fire.id
).find_or_create_by(name: 'Charmander')

move_ember = Move.create_with(
  power: 40,
  accuracy: 100,
  type_id: type_fire.id,
  attack: 'sp_attack',
  defense: 'sp_defense'
).find_or_create_by(name: 'Ember')

move_tackle = Move.create_with(
  power: 40,
  accuracy: 100,
  type_id: type_normal.id,
  attack: 'attack',
  defense: 'defense'
).find_or_create_by(name: 'Tackle')

users = User.all
users.each do |user|
  if user.pokemon.empty?
    Pokemon.create(
      level: 1,
      exp: 0,
      curent_damage: 0,
      iv_hp: rand(32),
      iv_speed: rand(32),
      iv_attack: rand(32),
      iv_sp_attack: rand(32),
      iv_defense: rand(32),
      iv_sp_defense: rand(32),
      user_id: user.id,
      species_id: species.id,
      move_1_id: move_tackle.id,
      move_2_id: move_ember.id
    )
  end
end
