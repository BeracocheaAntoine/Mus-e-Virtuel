json.extract! musique, :id, :photo, :nom, :auteur, :date, :created_at, :updated_at
json.url musique_url(musique, format: :json)
