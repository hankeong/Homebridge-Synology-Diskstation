#!/bin/sh

#npm install -g homebridge-particle
#npm install -g homebridge-http
#npm install -g homebridge-evohome
#npm install -g homebridge-ifttt
#npm install -g homebridge-synology
#npm install -g homebridge-better-http-rgb
#npm install -g homebridge-http-securitysystem
#npm install -g homebridge-server
#npm install -g homebridge-ssh
#npm install -g homebridge-suncalc




###################################################
### collection of config.json templates for the given modules ###


# "platforms": [
#         {
#             "platform": "Particle",
#             "name": "Particle Devices",
# 			"access_token": "<<access token>>",
# 			"cloudurl": "https://api.spark.io/v1/devices/",
# 			"devices": [
# 				{
# 					"accessory": "BedroomLight",
# 					"name": "Bedroom Light",
# 				    "deviceid": "<<device id>>",
# 					"type": "LIGHT",
# 					"function_name": "onoff",
# 					"args": "0={STATE}"
# 				},
# 				{
# 					"accessory": "KitchenLight",
# 					"name": "Kitchen Light",
# 					"deviceid": "<<device id>>",
# 					"type": "LIGHT",
# 					"function_name": "onoff",
# 					"args": "1={STATE}"
# 				},
# 				{
# 					"accessory": "KitchenTemperature",
# 					"name": "Kitchen Temperature",
# 					"deviceid": "<<device id>>",
# 					"type": "SENSOR",
# 					"sensorType": "temperature",
# 					"key": "temperature",
# 					"event_name": "tvalue"
# 				}
# 			]
#         }
#     ]


# "accessories": [ 
# {
#     "accessory": "Http",
#     "name": "Alfresco Lamp",
#     "switchHandling": "realtime",
#     "http_method": "GET",
#     "on_url":      "http://localhost/controller/1700/ON",
#     "off_url":     "http://localhost/controller/1700/OFF",
#     "status_url":  "http://localhost/status/100059",
#     "service": "Light",
#     "brightnessHandling": "yes",
#     "brightness_url":     "http://localhost/controller/1707/%b",
#     "brightnesslvl_url":  "http://localhost/status/100054",
#     "sendimmediately": "",
#     "username" : "",
#     "password" : ""					    
#       } 
#    ]


# "platform": [
#         {
#             "platform": "Evohome",
#             "name" : "Evohome",
#             "username" : "username/email",
#             "password" : "password",
#             "appId" : "91db1612-73fd-4500-91b2-e63b069b185c"
#         }
#     ]


# "platforms": [
#             {
#             "platform": "IFTTT",
#             "name": "IFTTT",
#             "makerkey": "PUT KEY OF YOUR MAKER CHANNEL HERE",
#             "accessories": [{
#                     "name": "Accessory 1",
#                     "buttons": [
#                     	{
#                     		"caption": "A1-1",
#                     		"triggerOn": "T1-1On",
#                     		"triggerOff": "T1-1Off"
#                     	},{
#                     		"caption": "A1-2",
#                     		"triggerOn": "T1-2On",
#                     		"triggerOff": "T1-2Off"
#                     	},{
#                     		"caption": "A1-3",
#                     		"trigger": "T1-3"
#                     	},{
#                     		"caption": "A1-4",
#                     		"trigger": "T1-4"
#                     	}
#                     ]
#             	}, {
#                     "name": "Accessory 2",
#                     "buttons": [
#                     	{
#                     		"caption": "A2-1",
#                     		"trigger": "T2-1"
#                     	},{
#                     		"caption": "A2-2",
#                     		"trigger": "T2-2"
#                     	},{
#                     		"caption": "A2-3",
#                     		"trigger": "T2-3"
#                     	},{
#                     		"caption": "A2-4",
#                     		"trigger": "T2-4"
#                     	}
#                     ]
#             	}
#             ]
#         }
#     ]


#     "accessories": [
#         {
#             "accessory": "Synology",
#             "name": "Diskstation",
#             "ip": "192.168.178.1",
#             "mac": "A1:B3:C3:D4:E5:EX",
#             "port": "port number",
#             "secure": false,
#             "account": "admin",
#             "password": "supersecret",
#             "version": 5
#         }
#     ]




# "accessories": [
#         {
#             "accessory": "Http-SecuritySystem",
#             "name": "Home security",
#             "auth": {	
#                 "username": ""
#                 "password": "",
#                 "immediately": false
#             },
#             "http_method": "POST",
#             "urls": {
#                 "stay": { "url": "http://localhost:1880/alarm/arm", "body": "stay" },
#                 "away": { "url": "http://localhost:1880/alarm/arm", "body": "away" },
#                 "night": { "url": "http://localhost:1880/alarm/arm", "body": "night" },
#                 "disarm": { "url": "http://localhost:1880/alarm/disarm", "body": "" },
#                 "readCurrentState": { "url": "http://localhost:1880/alarm/check", "body": "" }
#                 "readTargetState": { "url": "http://localhost:1880/alarm/check", "body": "" }
#             }
#         }
#     ]


# {
#     "platform": "Server",
#     "port": 8765,
#     "name": "Homebridge Server"
# }


# {
#   "accessory": "Suncalc",
#   "location": {
#     "lat": 30.506667,
#     "lng": -97.830278
#   },
#   "offset": {
#       "sunriseEnd" : 30,
#       "sunsetStart" : -30
#   },
#   "name": "Suncalc"
# }


# "accessories": [
#     {
#               "accessory": "SSH",
#               "name": "iTunes Music",
#               "on": "osascript -e 'tell application \"iTunes\" to play'",
#               "off": "osascript -e 'tell application \"iTunes\" to stop'",
#               "state": "osascript -e 'tell application \"iTunes\" to get player state'",
#               "on_value" : "playing",
#               "exact_match": true,
#               "ssh": {
#                 "user": "me",
#                 "host": "mymac",
#                 "port": 22,
#                 "password": "password (or use key)",
#                 "key": "path to private key file"
#               }
#     }
# ]