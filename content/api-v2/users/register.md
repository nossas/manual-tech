+++
title = "Register"
weight = 33
+++

### Register (New User)

> **POST** `http://localhost:3005/graphql`

> A Graphql Function to create a new user and return valid token when successful

#### Query Variables

| name | type | required | description |
| ------ | ----- | -------- | ------- |
| first_name | string | yes | user first email |
| last_name | string | yes | user last name |
| email  | string | yes | user email |
| password  | string | yes | user password |

#### Query Variables Example

```json
{
  "user": {
    "data": "{ \"first_name\": \"John\", \"last_name\": \"Doe\", \"email\": \"john.doe@example.org\", \"password\": \"12345678\" }"
  }
}
```

#### example request
```js

mutation Register($user: RegisterInput!) {
  register (input: $user) {
    clientMutationId
      jwtToken
  }
}
```

#### example result
```
{
  "data": {
    "register": {
      "clientMutationId": null,
        "jwtToken": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiY29tbW9uX3VzZXIiLCJ1c2VyX2lkIjoxOTYsImlhdCI6MTUxOTIzOTQ4NiwiZXhwIjoxNTE5MzI1ODg2LCJhdWQiOiJwb3N0Z3JhcGhxbCIsImlzcyI6InBvc3RncmFwaHFsIn0.6Z4B_Wio7kO47d0-6nZBdK5Q4TQbcwcWu203K12P3OJ21"
    }
  }
}
```
