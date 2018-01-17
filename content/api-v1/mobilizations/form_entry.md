+++
title = "Form Entry"
weight = 10
+++


> **POST** `/mobilizations/:mobilization_id/form_entries`

#### data payload json

| name | type | required | description |
| ------ | ----- | -------- | ------- |
| mobilization_id | integer | yes | mobilization of widget form |
| widget_id | integer | yes | widget id |
| *fields.uid | string | yes | uid field |
| *fields.kind | string | yes | kind field |
| *fields.label | string | yes | label field |
| *fields.placeholder | string | yes | placeholder field |
| *fields.required | string | yes | field required? |
| *fields.value | string | yes | value field |

##### Fields: Array of elements

#### example request

```bash
curl -X POST \
	http://localhost:3010/mobilizations/625/form_entries \
	-H 'cache-control: no-cache' \
	-H 'content-type: application/json' \
	-d '{
				"form_entry": {
				"widget_id": 11437,
				"fields": "[
					{\"uid\":\"field-1516215013712-41\",\"kind\":\"text\",\"label\":\"Nome\",\"placeholder\":\"nome\",\"required\":\"false\",\"value\":\"Hudson\"},
					{\"uid\":\"field-1516215004643-59\",\"kind\":\"email\",\"label\":\"Email\",\"placeholder\":\"seu email\",\"required\":\"false\",\"value\":\"hudson.sama@gmail.com\"}]"
				}
	}'
```

#### example result

```
{
	"id": 378418,
	"widget_id": 69,
	"fields": "[
		{\"uid\":\"field-1513016286326-98\",\"kind\":\"email\",\"label\":\"Email\",\"placeholder\":\"Email\",\"required\":\"true\",\"value\":\"hudson.sama@gmail.com\"}
	]",
	"created_at": "2018-01-17T16:36:26.670-02:00",
	"updated_at": "2018-01-17T16:36:26.670-02:00",
	"synchronized": null,
	"activist_id": null,
	"mailchimp_syncronization_at": null,
	"mailchimp_syncronization_error_reason": null,
	"cached_community_id": 47
}

```
