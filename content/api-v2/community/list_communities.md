+++
title = "List Communities"
weight = 47
+++

### List Communities

> **POST** `http://localhost:3005/graphql`

> Requires authenticated user

> Get communities to current user

#### Query Variables
> NONE

#### Query Variables Example
> NONE

#### example request
```js
query allCommunities{
  allCommunities {
    edges {
      node {
        id
          name
          city
          description
          createdAt
          updatedAt
          mailchimpApiKey
          mailchimpListId
          mailchimpGroupId
          image
          recipientId
          facebookAppId
          fbLink
          twitterLink
          subscriptionRetryInterval
          subscriptionDeadDaysInterval
          emailTemplateFrom
          mailchimpSyncRequestAt
      }
    }
  }
}
```

#### example result
```
{
  "data": {
    "allCommunities": {
      "edges": [
      {
        "node": {
          "id": 1,
            "name": "Minha Sampa",
            "city": "São Paulo",
            "description": null,
            "createdAt": "2015-12-08T19:17:25.572446",
            "updatedAt": "2017-07-26T05:35:21.355345",
            "mailchimpApiKey": null,
            "mailchimpListId": null,
            "mailchimpGroupId": "212910928",
            "image": "https://s3.amazonaws.com/api/uploads/1484172706_11910346_1616322558617822_11212890351489_a.jpg",
            "recipientId": 7,
            "facebookAppId": null,
            "fbLink": null,
            "twitterLink": null,
            "subscriptionRetryInterval": 2,
            "subscriptionDeadDaysInterval": 90,
            "emailTemplateFrom": "Minha Sampa <contato@sampa.org.br>",
            "mailchimpSyncRequestAt": null
        }
      },
      {
        "node": {
          "id": 2,
          "name": "Minha Blumenau",
          "city": "Blumenau",
          "description": null,
          "createdAt": "2015-12-08T19:17:25.482992",
          "updatedAt": "2017-02-01T12:46:23.738734",
          "mailchimpApiKey": null,
          "mailchimpListId": null,
          "mailchimpGroupId": "129182098",
          "image": "https://s3.amazonaws.com/api/uploads/12121485440756_mblu.png",
          "recipientId": 3,
          "facebookAppId": null,
          "fbLink": null,
          "twitterLink": null,
          "subscriptionRetryInterval": 3,
          "subscriptionDeadDaysInterval": 120,
          "emailTemplateFrom": null,
          "mailchimpSyncRequestAt": null
        }
      }
      ]
    }
  }
}
```
