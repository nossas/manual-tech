+++
title = "Register User"
weight = 15
date = 2018-01-08T09:57:16-02:00
+++

### Register Account

> **POST** `/register`


#### data payload json

| name | type | required | description |
| ------ | ----- | -------- | ------- |
| email  | string | yes | user email |
| first_name  | string | yes | user first name |
| last_name  | string | no | user last name |
| password  | string | yes | user password |
| avatar  | string | no | user avatar |

#### example request
```bash
curl -X POST \
  http://localhost:3010/register \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/json' \
  -d '{
    "user": {
        "first_name": "Usuario",
        "last_name": "de Teste",
        "email": "test24@email.com",
        "password": 123456
    }
}'
```


#### example result
```
{
  "id":10,
  "email":"test4@email.com",
  "first_name":"Usuario",
  "last_name":"de Teste",
  "uid":"test4@email.com",
  "provider":"email",
  "avatar_url":null,
  "thumb_url":null
}
```
