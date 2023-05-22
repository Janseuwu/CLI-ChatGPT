#!/usr/bin/bash

API_KEY=$OPENAI_API_KEY
echo $API_KEY

# api call
curl https://api.openai.com/v1/models \
  -H "Authorization: Bearer $API_KEY" \
  -H "OpenAI-Organization: org-ZhiuhxDQ0pi8qlmIIq4JXGhv"

curl https://api.openai.com/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $API_KEY" \
  -d '{
     "model": "gpt-3.5-turbo",
     "messages": [{"role": "user", "content": "Say this is a test!"}],
     "temperature": 0.7
   }'
