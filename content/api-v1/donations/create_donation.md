+++
title = "Create Donation"
weight = 8
+++


> **POST** `/mobilizations/:mobilization_id/donations`


#### data payload json

| name | type | required | description |
| ------ | ----- | -------- | ------- |
| mobilization_id  | integer | yes | mobilization current |
| widget_id | integer | yes | widget of donation |
| payment_method | string | yes | payment method |
| amount | integer | yes | amount donation |
| customer.name | string | yes | customer name |
| customer.email | string | yes | customer email |
| customer.document_number | string | yes | customer document number (should be a valid CPF / CNPJ) |
| customer.phone.ddd | string | yes | customer ddd phone number |
| customer.phone.number | string | yes | customer phone number |
| customer.address.zipcode | string | yes | customer address zipcode |
| customer.address.street | string | yes | customer address street |
| customer.address.street_number | string | yes | customer address street number |
| customer.address.complementary | string | yes | customer address complementary |
| customer.address.neighborhood | string | yes | customer address neighborhood |
| customer.address.city | string | yes | customer address city |
| customer.address.state | string | yes | customer address state |

#### example request

```bash
curl -X POST \
  http://localhost:3010/mobilizations/1/donations \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/json' \
  -d '{
    "donation": {
    	"widget_id": 2,
        "amount": 2400,
        "payment_method": "boleto",
        "customer": {
          "name": "Customer",
          "email": "someemail@mamil.com",
          "document_number": "88985122878",
          "phone": {
            "ddd": "21",
            "number": "933448877"
          },
          "address": {
            "street": "Rua lorem ipsum",
            "street_number": 200,
            "neighborhood": "bairro",
            "zipcode": "33600000",
            "country": "Brasil",
            "state": "MG",
            "city": "lorem",
            "complementary": "comple"
          }
        }
      }
}'
```


#### example result

```
{
    "id": 3,
    "widget_id": 2,
    "created_at": "2018-01-08T15:32:30.427-02:00",
    "updated_at": "2018-01-08T15:32:31.129-02:00",
    "token": null,
    "payment_method": "boleto",
    "amount": 2400,
    "email": "someemail@mamil.com",
    "card_hash": null,
    "customer": {
        "name": "Customer",
        "email": "someemail@mamil.com",
        "document_number": "88985122878",
        "phone": "{\"ddd\"=>\"21\", \"number\"=>\"933448877\"}",
        "address": "{\"street\"=>\"Rua lorem ipsum\", \"street_number\"=>200, \"neighborhood\"=>\"bairro\", \"zipcode\"=>\"33600000\", \"country\"=>\"Brasil\", \"state\"=>\"MG\", \"city\"=>\"lorem\", \"complementary\"=>\"comple\"}"
    },
    "skip": false,
    "transaction_id": null,
    "transaction_status": "pending",
    "subscription": null,
    "credit_card": null,
    "activist_id": 1,
    "subscription_id": null,
    "period": null,
    "plan_id": null,
    "parent_id": null,
    "payables": null,
    "gateway_data": null,
    "payable_transfer_id": null,
    "converted_from": null,
    "synchronized": null,
    "local_subscription_id": null,
    "mailchimp_syncronization_at": null,
    "mailchimp_syncronization_error_reason": null,
    "checkout_data": {
        "name": "Customer",
        "email": "someemail@mamil.com",
        "document_number": "88985122878",
        "phone": {
            "ddd": "21",
            "number": "933448877"
        },
        "address": {
            "street": "Rua lorem ipsum",
            "street_number": 200,
            "neighborhood": "bairro",
            "zipcode": "33600000",
            "country": "Brasil",
            "state": "MG",
            "city": "lorem",
            "complementary": "comple"
        }
    },
    "cached_community_id": 8
}
```

