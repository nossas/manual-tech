+++
title = "Request Reset Password"
weight = 34
+++

### Request Reset Password Token

> **POST** `http://localhost:3005/graphql`

> Under development

#### Query Variables

| name | type | required | description |
| ------ | ----- | -------- | ------- |
| email  | string | yes | user email |

#### Query Variables Example

```json
{
  "email": {
    "email": "hudson+1@bonde.org"
  }
}
```

#### example request
```js

mutation RequestResetPasswordToken($email: RequestResetPasswordTokenInput!){
  requestResetPasswordToken(input: $email) {
    clientMutationId
  }
}
```

#### example result
```
{
  "data": {
    "requestResetPasswordToken": {
      "clientMutationId": null
    }
  }
}
```
