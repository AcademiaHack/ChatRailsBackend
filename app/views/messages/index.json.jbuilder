json.array! @messages do |message|

  json.message message.message
  json.user do
    json.username message.user.username
  end
end