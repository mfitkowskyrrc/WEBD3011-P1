json.extract! pokemon, :id, :name, :dex_number, :abilities, :type, :height, :weight, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)
