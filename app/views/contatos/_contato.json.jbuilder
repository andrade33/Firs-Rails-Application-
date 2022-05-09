json.extract! contato, :id, :nome, :endereco, :telefone, :created_at, :updated_at
json.url contato_url(contato, format: :json)
