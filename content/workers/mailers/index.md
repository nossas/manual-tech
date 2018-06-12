+++
title = 'mailers'
weight = 94
+++

#### command:

- `bundle exec sidekiq -q default -q mailers -c 5`

#### repo:

- `bonde-server`

#### info:

> Cria uma fila para o Active Mailer no sidekiq

> Usado para envio de emails assíncrono

> O email é criado e disparado para uma fila no mailers que será executado em background não sendo necessário que o user fica esperando o envio de email.

#### dependes:

- gem sidekiq

#### tests:

- **no tests**
