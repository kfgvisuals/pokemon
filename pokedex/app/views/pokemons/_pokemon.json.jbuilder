json.extract! pokemon, :id, :name, :level, :image, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)
