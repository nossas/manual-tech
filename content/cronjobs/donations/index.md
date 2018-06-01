+++
title = 'donations'
weight = 61
+++



#### command:

- `bundle exec rake payments:sync_donations`

#### repo:

- `bonde-server`

#### info:

> Sincroniza todas as doações pontuais

> Campos atualizados

> - transaction_status
> - paybales 
> - gateway_data

#### depends:

- donation_service 

> app/services/donation_service.rb

#### tests:

> spec/services/donation_service_spec.rb

