---
title: "Monitoramento"
layout: page
path: "/monitoramento"
---

## Monitoramento

O monitoramento se divide em métricas, logs e instrumentalização.

Utilizamos o [APM](https://www.elastic.co/pt/apm/) da ElasticSearch para ajudar na missão de monitorar o que acontece nas aplicações da plataforma.

Ao instrumentalizar uma aplicação afim de monitorá-la é importante ter em mente o [modelo de dados](https://www.elastic.co/guide/en/apm/get-started/current/apm-data-model.html) utilizado pelo APM: Spans, Transactions, Errors, Metrics.

Todas as aplicações da plataforma precisam ter suas dependências externas monitoradas e tratadas para casos de erro.

Em geral, nas aplicações é necessário um agente para interagir com o servidor da elastic, utilizamos o [agente de nodejs](https://www.elastic.co/guide/en/apm/agent/nodejs/current/index.html).


## Aplicações monitoradas

* api-rest
* listener-match
* listener-solidarity
* listener-redes
* listener-redes-geolocation
* webhook-solidarity-count
* webhook-mautic-zendesk
* 