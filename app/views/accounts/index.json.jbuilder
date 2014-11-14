json.array!(@accounts) do |account|
  json.extract! account, :id, :first_name, :last_name, :username, :password, :secret_question, :secret_answer
  json.url account_url(account, format: :json)
end
