json.message @message.message
json.user do
  json.username @message.user.username
end
json.id @message.id