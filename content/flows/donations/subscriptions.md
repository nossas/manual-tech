+++
title = "Recorrentes"
weight = 102
+++

***
> As doações recorrentes podem ser feitas de duas maneiras:

- Boleto
- Cartão de Crédito

***

Assim que o usuário seleciona para fazer uma doação do tipo recorrente o sistema automaticamente já vai criar uma Assinatura/Subscription no nosso banco de dados para iniciar o fluxo:

#### Tipos de Pagamentos possíveis:

+ _paid_: A doação referente a essa assinatura quando baixada no sistema faz a transição da assinatura para paid, após isso já cria um agendamento para próxima cobrança do ciclo (30 dias) e envia a notificação de **paid_subscription**.
+ _processing/pending payment_ **apenas para pagamentos do tipo boleto**: A assinatura se mantém em pending até o pagamento da sua doação ser efetuado, quando em pending_payment envia uma notificação do tipo (slip_subscription) com um link para emitir o boleto.
+ _refused_: Quando a doação não é paga **refused** a assinatura faz uma transição de status para **unpaid**
  - Quando em **unpaid** é enviado uma notificação para o ativista informando que sua doação não foi processada e um link para alterar os dados de pagamento (caso necessário). Obs: Caso a mesma assinatura permaneça no status **unpaid** após 3 tentativas de cobrança, as notificações param de ser enviadas para o ativista.
  - Para cada pagamento recusado dessa assinatura é agendado uma nova tentativa de cobrança de 7 dias (esse intervalo de dias são configurados na comunidade)
  - Após um período de 90 dias (que é um intervalo de dias também configurado na comunidade) tentando cobrar essa assinatura, caso a mesma permaneça como **unpaid** e nenhuma doação criada para reprocessar o pagamento seja paga a mesma será cancelada pelo sistema.
+ _canceled_: Quando uma assinatura chega ao status de cancelada. O sistema para de cobrar as doações referente a mesma e notifica o ativista que a sua assinatura foi cancelada. Suspendendo qualquer atividade da assinatura.


