{
	"contents": {
		"e3aea078-dcc9-4912-b8d4-ffc1af1a04fd": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "salesorder",
			"subject": "salesorder",
			"name": "salesorder",
			"documentation": "",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"70527906-963e-449a-ab02-bea7dba4606c": {
					"name": "ServiceTask1"
				},
				"0ddce502-7b9c-45e1-aa35-600f1f02536e": {
					"name": "UserTask1"
				},
				"b5be1adf-09ce-4f1f-bdbf-58a3ec0ae6e5": {
					"name": "ScriptTask1"
				},
				"9c1d93f3-f7e1-4cda-a0d7-a7eef7dd757e": {
					"name": "MailTask2"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"b23be2fb-a621-48f6-b903-0956f4491ec2": {
					"name": "SequenceFlow2"
				},
				"613d5e63-eb46-4c2f-a7e2-0f84f12d89ed": {
					"name": "SequenceFlow3"
				},
				"d5951e54-c88b-4ba8-ba94-4ede22e66b06": {
					"name": "SequenceFlow4"
				},
				"8fb95bf9-12ff-45cd-8fbf-b7bc00d7ba42": {
					"name": "SequenceFlow5"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"619b327f-5815-4678-9d59-54dfd2d77235": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"70527906-963e-449a-ab02-bea7dba4606c": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "ES5",
			"path": "Products('${context.request.Id}')?sap-client=002",
			"httpMethod": "GET",
			"responseVariable": "${context.productInfo}",
			"id": "servicetask1",
			"name": "ServiceTask1"
		},
		"0ddce502-7b9c-45e1-aa35-600f1f02536e": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Request for ${context.request.Id}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": true,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "prapul.madhagoni@wipro.com",
			"formReference": "/forms/salesorder/SO_form.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "so_form"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "UserTask1",
			"documentation": ""
		},
		"b5be1adf-09ce-4f1f-bdbf-58a3ec0ae6e5": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/salesorder/preparemessage.js",
			"id": "scripttask1",
			"name": "ScriptTask1",
			"documentation": "test feature additional"
		},
		"9c1d93f3-f7e1-4cda-a0d7-a7eef7dd757e": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask2",
			"name": "MailTask2",
			"mailDefinitionRef": "2f47f61a-02ca-4b85-94b9-0892196a38b8"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "70527906-963e-449a-ab02-bea7dba4606c"
		},
		"b23be2fb-a621-48f6-b903-0956f4491ec2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "70527906-963e-449a-ab02-bea7dba4606c",
			"targetRef": "0ddce502-7b9c-45e1-aa35-600f1f02536e"
		},
		"613d5e63-eb46-4c2f-a7e2-0f84f12d89ed": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "0ddce502-7b9c-45e1-aa35-600f1f02536e",
			"targetRef": "b5be1adf-09ce-4f1f-bdbf-58a3ec0ae6e5"
		},
		"d5951e54-c88b-4ba8-ba94-4ede22e66b06": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "b5be1adf-09ce-4f1f-bdbf-58a3ec0ae6e5",
			"targetRef": "9c1d93f3-f7e1-4cda-a0d7-a7eef7dd757e"
		},
		"8fb95bf9-12ff-45cd-8fbf-b7bc00d7ba42": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "9c1d93f3-f7e1-4cda-a0d7-a7eef7dd757e",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"fe34852b-d530-4c4b-b24d-a57559910540": {},
				"3a29023e-a2b9-4be4-9dc7-004a2ac10881": {},
				"277a3f25-e3b8-4593-909f-c2c0f34dc707": {},
				"431f4b00-e86c-45e2-bb54-86a19a77783e": {},
				"625c460f-3f9f-4909-8d7d-18521f54fe8d": {},
				"c366f35b-3aba-45ce-b30e-901f89cae533": {},
				"58520679-5150-455b-9c88-cc74eb470f50": {},
				"f52fcee6-418a-45f5-8576-4485b3c6d403": {}
			}
		},
		"619b327f-5815-4678-9d59-54dfd2d77235": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/salesorder/InitContext.json",
			"id": "default-start-context"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 46,
			"y": 12,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 44.5,
			"y": 534,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,44 62,94",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "fe34852b-d530-4c4b-b24d-a57559910540",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"fe34852b-d530-4c4b-b24d-a57559910540": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 12,
			"y": 94,
			"width": 100,
			"height": 60,
			"object": "70527906-963e-449a-ab02-bea7dba4606c"
		},
		"3a29023e-a2b9-4be4-9dc7-004a2ac10881": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,154 62,204",
			"sourceSymbol": "fe34852b-d530-4c4b-b24d-a57559910540",
			"targetSymbol": "277a3f25-e3b8-4593-909f-c2c0f34dc707",
			"object": "b23be2fb-a621-48f6-b903-0956f4491ec2"
		},
		"277a3f25-e3b8-4593-909f-c2c0f34dc707": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 12,
			"y": 204,
			"width": 100,
			"height": 60,
			"object": "0ddce502-7b9c-45e1-aa35-600f1f02536e"
		},
		"431f4b00-e86c-45e2-bb54-86a19a77783e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,264 62,314",
			"sourceSymbol": "277a3f25-e3b8-4593-909f-c2c0f34dc707",
			"targetSymbol": "625c460f-3f9f-4909-8d7d-18521f54fe8d",
			"object": "613d5e63-eb46-4c2f-a7e2-0f84f12d89ed"
		},
		"625c460f-3f9f-4909-8d7d-18521f54fe8d": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 12,
			"y": 314,
			"width": 100,
			"height": 60,
			"object": "b5be1adf-09ce-4f1f-bdbf-58a3ec0ae6e5"
		},
		"c366f35b-3aba-45ce-b30e-901f89cae533": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,374 62,424",
			"sourceSymbol": "625c460f-3f9f-4909-8d7d-18521f54fe8d",
			"targetSymbol": "58520679-5150-455b-9c88-cc74eb470f50",
			"object": "d5951e54-c88b-4ba8-ba94-4ede22e66b06"
		},
		"58520679-5150-455b-9c88-cc74eb470f50": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 12,
			"y": 424,
			"width": 100,
			"height": 60,
			"object": "9c1d93f3-f7e1-4cda-a0d7-a7eef7dd757e"
		},
		"f52fcee6-418a-45f5-8576-4485b3c6d403": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,484 62,534",
			"sourceSymbol": "58520679-5150-455b-9c88-cc74eb470f50",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "8fb95bf9-12ff-45cd-8fbf-b7bc00d7ba42"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"maildefinition": 2,
			"sequenceflow": 5,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"servicetask": 1,
			"scripttask": 1,
			"mailtask": 2
		},
		"2f47f61a-02ca-4b85-94b9-0892196a38b8": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition2",
			"to": "prapul.madhagoni@wipro.com",
			"subject": "${context.message}",
			"text": "This is for testing",
			"id": "maildefinition2"
		}
	}
}