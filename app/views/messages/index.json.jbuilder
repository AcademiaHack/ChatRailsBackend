json.array! @messages do |message|

  json.id message.id
  json.message message.message
  json.user do
    json.username message.user.username
  end
end