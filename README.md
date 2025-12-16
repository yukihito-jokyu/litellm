# litellm

## 起動方法

LiteLLMをgemini/gemini-2.5-flashを元に起動する
```
task gemini-only
```

LiteLLMをconfig.yamlを元に起動する
```
task run-by-config
```

Dockerを元にLiteLLMを起動する
```
docker compose up -d
```
## アクセス方法

```
curl --location 'http://localhost:4000/v1/chat/completions' \
--header 'Content-Type: application/json' \
--data '{
    "model": "gemini-flash",
    "messages": [
        {
            "role": "user",
            "content": "こんにちは、テストです。何か面白いことを言って。"
        }
    ],
    "stream": true,
    "api_key": "api_key"
}'
```
