{
	"contents": {
		"ccbf869e-2a71-4551-8869-f200cfe6c9e6": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "orderprocess",
			"subject": "orderprocess",
			"name": "orderprocess",
			"documentation": "",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				},
				"39bed7aa-6e0d-4e43-b2cc-02385a60440d": {}
			},
			"activities": {
				"a911480f-67f8-47ec-b6fd-b4e1967b1202": {
					"name": "UserTask1"
				},
				"83f2556e-2c92-4e25-8ed0-ce1151ff5e3d": {
					"name": "Prepare Message"
				},
				"0b58ff50-e88a-4e25-8006-bd00528d9a55": {
					"name": "ServiceTask3"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"e2d5e953-ad62-449b-beaf-8de3f647b705": {
					"name": "SequenceFlow7"
				},
				"e7a7616c-2300-43cf-915f-b6cd2c93d9db": {
					"name": "SequenceFlow9"
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
				"6436cdc8-01ad-4fe6-b811-aa52b8d6a608": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"39bed7aa-6e0d-4e43-b2cc-02385a60440d": {
			"classDefinition": "com.sap.bpm.wfs.IntermediateCatchEvent",
			"id": "id39bed7aa-6e0d-4e43-b2cc-02385a60440d"
		},
		"a911480f-67f8-47ec-b6fd-b4e1967b1202": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Request for ${context.request.Id}",
			"description": "Please review this request for ${context.request.Quantity} items.",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": true,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "prapul.madhagoni@wipro.com",
			"formReference": "/forms/orderprocess/MyForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "requestdecision"
			}, {
				"key": "formRevision",
				"value": "1"
			}],
			"id": "usertask1",
			"name": "UserTask1"
		},
		"83f2556e-2c92-4e25-8ed0-ce1151ff5e3d": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/orderprocess/preparemessage.js",
			"id": "scripttask1",
			"name": "Prepare Message"
		},
		"0b58ff50-e88a-4e25-8006-bd00528d9a55": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "AOCService",
			"path": "ZPAP_C_SALESORDER",
			"httpMethod": "GET",
			"responseVariable": "${context.productInfo}",
			"id": "servicetask3",
			"name": "ServiceTask3"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "a911480f-67f8-47ec-b6fd-b4e1967b1202"
		},
		"e2d5e953-ad62-449b-beaf-8de3f647b705": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "a911480f-67f8-47ec-b6fd-b4e1967b1202",
			"targetRef": "83f2556e-2c92-4e25-8ed0-ce1151ff5e3d"
		},
		"e7a7616c-2300-43cf-915f-b6cd2c93d9db": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "83f2556e-2c92-4e25-8ed0-ce1151ff5e3d",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"468a3982-dd09-4945-9d1a-9d55f7606d39": {},
				"bb4172f5-7d60-484b-bb22-19e8310581fe": {},
				"d6b64628-315d-4b36-bb99-b0c6e0e928e2": {},
				"849579fc-4157-466a-b503-ab7e27ae34ba": {},
				"1f1d50f3-7481-4acd-b4d4-d7ca226cd50c": {}
			}
		},
		"6436cdc8-01ad-4fe6-b811-aa52b8d6a608": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/orderprocess/start.json",
			"id": "default-start-context"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 41,
			"y": -69,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 44.5,
			"y": 516,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "59.5,-37 59.5,94",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "468a3982-dd09-4945-9d1a-9d55f7606d39",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"468a3982-dd09-4945-9d1a-9d55f7606d39": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 12,
			"y": 94,
			"width": 100,
			"height": 60,
			"object": "a911480f-67f8-47ec-b6fd-b4e1967b1202"
		},
		"bb4172f5-7d60-484b-bb22-19e8310581fe": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,154 62,204",
			"sourceSymbol": "468a3982-dd09-4945-9d1a-9d55f7606d39",
			"targetSymbol": "d6b64628-315d-4b36-bb99-b0c6e0e928e2",
			"object": "e2d5e953-ad62-449b-beaf-8de3f647b705"
		},
		"d6b64628-315d-4b36-bb99-b0c6e0e928e2": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 12,
			"y": 204,
			"width": 100,
			"height": 60,
			"object": "83f2556e-2c92-4e25-8ed0-ce1151ff5e3d"
		},
		"849579fc-4157-466a-b503-ab7e27ae34ba": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,234 62,533.5",
			"sourceSymbol": "d6b64628-315d-4b36-bb99-b0c6e0e928e2",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "e7a7616c-2300-43cf-915f-b6cd2c93d9db"
		},
		"1f1d50f3-7481-4acd-b4d4-d7ca226cd50c": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 2,
			"y": 4,
			"width": 100,
			"height": 60,
			"object": "0b58ff50-e88a-4e25-8006-bd00528d9a55"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"messageeventdefinition": 1,
			"message": 1,
			"timereventdefinition": 1,
			"maildefinition": 1,
			"sequenceflow": 17,
			"startevent": 2,
			"intermediatemessageevent": 1,
			"intermediatetimerevent": 1,
			"endevent": 1,
			"usertask": 1,
			"servicetask": 3,
			"scripttask": 1,
			"mailtask": 2,
			"exclusivegateway": 1,
			"parallelgateway": 3
		},
		"576c44d1-edf4-48af-a77c-61fe95c62f2f": {
			"classDefinition": "com.sap.bpm.wfs.Message",
			"name": "message1",
			"id": "message1"
		}
	}
}