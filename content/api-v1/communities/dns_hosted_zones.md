+++
title = "DNS Hosted Zones"
weight = 12
+++

> **GET** `/communities/:community_id/dns_hosted_zones`

#### data params
| name | type | required | description |
| ------ | ----- | -------- | ------- |
| community_id | integer | yes | Community ID |


#### example request

```bash
curl -X GET \
       http://localhost:3010/communities/300/dns_hosted_zones \
       -H 'cache-control: no-cache' \
       -H 'content-type: application/json'
```

#### example result

```
{
  "id": 1130,
    "community_id": 300,
    "domain_name": "beta.org.br",
    "comment": null,
    "hosted_zone_id": "/hostedzone/20210921810928DM",
    "delegation_set_servers": [
      "ns.awsdns-120.org",
      "ns.awsdns-3131.co.uk",
      "ns.awsdns-030.net",
      "ns.awsdns-10291.com"
    ],
    "ns_ok": true
}
```
