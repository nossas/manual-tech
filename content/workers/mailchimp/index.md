+++
title = 'mailchimp'
weight = 92
+++

#### command:

- `bundle exec sidekiq -c 5 -q mailchimp_synchro`

#### repo:

- `bonde-server`

#### info:

> Sincronização com mailchimp

> Criação/Edição/Exclusão de segmentos no mailchimp quando necessário

#### dependes:

- mailchimp_sync_worker

- Module mailchimpable

#### tests:

- spec/workers/mailchimp_sync_worker_spec.rb
- spec/models/concerns/mailchimpable_spec.rb
