+++
title = "Authenticate"
weight = 32
+++

### Authenticate

> **POST** `http://localhost:3005/graphql`


#### Query Variables

| name | type | required | description |
| ------ | ----- | -------- | ------- |
| email  | string | yes | user email |
| password  | string | yes | user password |

#### Query Variables Example

```json
{
  "email": "email@domain.com",
  "password": "my_pass"
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
		"jwtToken": "3fe397575565365108556c3e5549f139e8078a8ec8fd2675a83de96289b30550a266ac04488d7086322efbe573738e7b3ae005b2e3d9afd718aa337fa5e329cf"
    }
  }
}

```
