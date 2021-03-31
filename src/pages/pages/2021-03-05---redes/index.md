---
title: "Redes"
layout: page
path: "/redes"
---

## Como adicionar novos grupos

É preciso adicionar dois registros na tabela rede_groups um com a coluna `is_volunteer` com o valor `false` e outro com o `true`.

É preciso estar ligado a uma widget de formulário.

É preciso configurar manualmente o form mapping.

```
{
    "form_mapping": [
        {
            "uid": "field-1595970086974-77",
            "name": "first_name"
        },
        {
            "uid": "field-1597755952055-88",
            "name": "last_name"
        },
        {
            "uid": "field-1595970105073-90",
            "name": "email"
        },
        {
            "uid": "field-1597755994466-67",
            "name": "whatsapp"
        },
        {
            "uid": "field-1597756180484-11",
            "name": "zipcode"
        },
        {
            "uid": "field-1597755994466-67",
            "name": "phone"
        },
        {
            "uid": "field-1597756114536-47",
            "name": "extras.birth_date"
        },
        {
            "uid": "field-1597930923152-71",
            "name": "extras.remote_terms"
        }
    ]
}
```

Dessa forma o listener de redes consegue mapear as informações fornecidas pelo usuário no formulário dentro do módulo de redes.

É possível existir múltiplos grupos, uma para cada formulário e mesmo assim o match continuar funcionando.

```bash
INSERT INTO public.rede_groups(
	created_at, updated_at, name, is_volunteer, community_id, widget_id, metadata, settings)
	VALUES (now(), now(), 'Psicólogas - Fase 2', true, 261, 65282, '{"form_mapping":[{"uid":"field-1605817077183-40","name":"first_name"},{"uid":"field-1605817086654-16","name":"last_name"},{"uid":"field-1605817095386-76","name":"extras.register_occupation"},{"uid":"field-1605817114771-30","name":"email"},{"uid":"field-1605817149115-44","name":"whatsapp"},{"uid":"field-1605817149115-44","name":"phone"},{"uid":"field-1615561211639-26","name":"zipcode"},{"uid":"field-1605817457770-98","name":"extras.case_1"},{"uid":"field-1605817611654-64","name":"extras.case_2"},{"uid":"field-1606419201056-4","name":"extras.case_3"},{"uid":"field-1605818543789-64","name":"extras.accept_terms"}]}', '{}');
```

É essencial reiniciar o serviço de sincronização entre a widget de formulário e o módulo de redes.