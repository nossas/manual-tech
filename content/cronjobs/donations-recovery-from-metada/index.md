+++
title = 'donations recovery from metada'
weight = 63
+++



#### command:

- `bundle exec rake payments:recovery_from_metadata`

#### repo:

- `bonde-server`

#### info:

> Lista de gateway_transactions que existem em donations

> Atualiza as doações a partir da transaction (transação no pagarme)

> Faz uma transição de status `(state_machine[:donation])` para o status retornado do pagar.me

#### depends:

- models/donation 

> app/models/donation.rb

#### tests:

> spec/models/donation_spec.rb

