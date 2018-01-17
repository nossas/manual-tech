+++
title = "Authenticate"
weight = 6
+++

### Authenticate

> **POST** `https://data.bonde.org/graphql`


#### Query Variables

| name | type | required | description |
| ------ | ----- | -------- | ------- |
| email  | string | yes | user email |
| password  | string | yes | user password |

#### Query Variables Example

```json
{
  "email": "gabriel@nossas.org",
  "password": "meurio2016"
}
```

#### example request
```js
mutation authenticate($email: String!, $password: String!) {
  authenticate(input: { email: $email, password: $password }) {
    jwtToken
  }
}
```

#### example result
```
{
  "data": {
    "authenticate": {
    "jwtToken": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYWRtaW4iLCJ1c2VyX2lkIjo4NywiaWF0IjoxNTE2MjA0MzgzLCJleHAiOjE1MTYyOTA3ODMsImF1ZCI6InBvc3RncmFwaHFsIiwiaXNzIjoicG9zdGdyYXBocWwifQ.nnAXXLxMXnszTB2Nuo_IbzcvgFMYRvhr7_7ZzIx95gg"
    }
  }
}

```
