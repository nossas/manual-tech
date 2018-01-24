+++
title = "Create DNS Hosted Zones"
weight = 13
+++

> **POST** `/communities/:community_id/dns_hosted_zones`

#### data payload json

| name | type | required | description |
| ------ | ----- | -------- | ------- |
| community_id | integer | yes | Community ID |
| dns_hosted_zone.domain_name | string | yes | custom domain |
| dns_hosted_zone.comment | string | yes | comments from dns |

##### Fields: Array of elements

#### example request

```bash
curl -X POST \
  http://localhost:3000/communities/13/dns_hosted_zones \
  -H 'access-token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYWRtaW4iLCJ1c2VyX2lkIjozMSwiaWF0IjoxNTE2NzUwNzM1LCJleHAiOjE1MTY4MzcxMzUsImF1ZCI6InBvc3RncmFwaHFsIiwiaXNzIjoicG9zdGdyYXBocWwifQ.XBKLTDk2mu497wU4FSZIuNVScDez5G4aIya2o9nArBs' \
  -H 'cache-control: no-cache' \
  -H 'Content-Type: application/json' \
  -d '{
    "community_id": "17",
    "dns_hosted_zone": {
      "domain_name": "nossas.org.br"
    }
  }'
```

#### example result

```bash
{
	"id": 133323,
	"community_id": 13,
	"domain_name": "nossas.org.br",
	"comment": null,
	"hosted_zone_id": "/hostedzone/Z1L9CT490EE5NAEAPOSL",
	"delegation_set_servers": [
		"ns-922.awsdns-512.net",
		"ns-145.awsdns-128.com",
		"ns-1830.awsdns-346.co.uk",
		"ns-1348.awsdns-440.org"
	],
	"ns_ok": false
}
```
