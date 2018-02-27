+++
title = "Create Community"
weight = 46
+++

### Create Community

> **POST** `http://localhost:3005/graphql`

> Requires authenticated user

#### Query Variables

| name | type | required | description |
| ------ | ----- | -------- | ------- |
| name | string | yes | name of community |
| city | string | yes | city of community |

#### Query Variables Example

```json
{
  "data": {
    "data": "{ \"name\": \"My Community\", \"city\": \"Belo Horizonte\"}"
  }
}
```

#### example request
```js
mutation CreateCommunity($data: CreateCommunityInput!){
  createCommunity(input: $data){
    json
  }
}
```

#### example result
```
{
  "data": {
    "createCommunity": {
      "json": "{\"id\":1002,\"name\":\"My Community\",\"city\":\"Belo Horizonte\",\"created_at\":\"2018-02-27T21:00:47.285032\",\"updated_at\":\"2018-02-27T21:00:47.285032\",\"mailchimp_api_key\":null,\"mailchimp_list_id\":null,\"mailchimp_group_id\":null,\"image\":null,\"description\":null,\"recipient_id\":null,\"facebook_app_id\":null,\"fb_link\":null,\"twitter_link\":null,\"subscription_retry_interval\":3,\"subscription_dead_days_interval\":90,\"email_template_from\":null,\"mailchimp_sync_request_at\":null}"
    }
  }
}
```
