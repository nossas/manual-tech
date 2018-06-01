+++
title = 'payments'
weight = 72
+++


#### commands:

- `ruby -I . -r app/main -e Main.new.sync_recipients >STATUS<`

> STATUS

> * available
> * transferred
> * waiting_funds

#### repo:

- `bonde-payments`

#### info:

> Para cada recipient (chave para cada conta das comunidades usada no pagarme) pegamos todas operações de balanço (todas as movimentações financeiras)  e atualizamos o balance_operations

> Podendo ser atualizado um balance_operation já existente ou sendo criado um novo.

#### depends:

- Pagar.me

- models/recipient

> app/models/recipient.rb

- models/balance_operations

> app/models/balance_operations.rb

- lib/balance_sync

> lib/balance_sync.rb

#### tests:

>  **no tests**


### TODO

> * Create a tasks to execute commands

> * Create tests
