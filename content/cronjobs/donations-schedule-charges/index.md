+++
title = 'donations schedule charges'
weight = 65
+++



#### command:

- `bundle exec rake subscriptions:schedule_charges`

#### repo:

- `bonde-server`

#### info:

> Pega todas as assinaturas (subscriptions) e verifica quais podem ser processadas (próxima cobrança)

> Processa a próxima cobrança (caso exista)

#### depends:

- models/subscription

> app/models/subscription.rb

- subscription_worker

> app/workers/subscription_worker.rb

#### tests:

> spec/models/subscription_spec.rb
