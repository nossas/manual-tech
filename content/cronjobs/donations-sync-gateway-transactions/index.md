+++
title = 'donations-sync-gateway-transactions'
weight = 70
+++


#### command:

- `bundle exec rake payments:sync_gateway_transactions`

#### repo:

- `bonde-server`

#### info:

> Sincroniza todas as transações do pagar.me com nossa base

> Atualiza ou cria uma transação no gateway_transaction a partir do transaction.id

#### depends:

- Pagar.me

- models/gateway_transaction

> app/models/gateway_transaction.rb

#### tests:

> spec/models/gateway_transaction_spec.rb **no tests**

