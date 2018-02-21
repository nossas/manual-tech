+++
title = "Change Password"
weight = 35
+++

### Change Password

> **POST** `http://localhost:3005/graphql`

> When logged

#### Query Variables

| name | type | required | description |
| ------ | ----- | -------- | ------- |
| reset_password_token | string | yes | user reset password token |
| password | string | yes | user new password |
| password_confirmation | string | yes | user confirm new password |

#### Query Variables Example

```json
{
  "user": {
    "data": "{ \"reset_password_token\": \"1f33181c-345d-40bb-ad92-66154b57b3b3\", \"password\": \"123456789\", \"password_confirmation\": \"123456789\"}"
  }
}
```

#### example request
```js
mutation ChangePassword($user: ChangePasswordInput!){
	changePassword(input: $user){
    clientMutationId
    jwtToken
  }
}
```

#### example result
```
{
  "data": {
    "changePassword": {
      "clientMutationId": null,
        "jwtToken": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiY29tbW9uX3VzZXIiLCJ1c2VyX2lkIjoxOTYsImlhdCI6MTUxOTI0NjE1NiwiZXhwIjoxNTE5MzMyNTU2LCJhdWQiOiJwb3N0Z3JhcGhxbCIsImlzcyI6InBvc3RncmFwaHFsIn0.gqGJ5Zt3jrlJCLTn6y7Z7UvuK4WXp81is2JZ9TH6Y5w"
    }
  }
}
```
