# sensu-matrix-handler
send alerts to matrix room
## Configuration
configure etc/matrix.conf
and put it on your server /etc/matrix.conf

## Requirements
- python-matrix-client-git

## Usage

```
api_version: core/v2
type: Handler
metadata:
  name: matrix
spec:
  type: pipe
  runtime_assets:
  - matrix-handler
  command: matrix.py -c /etc/matrix.conf
  timeout: 10
```

## config file
```
[Colors]
# Below the colors of the zabbix alert messages are defined.
0 = #032fdd
1 = #afaf00
2 = #ff0000


[Matrix]
# Below the (bot) user is defined. This account should exist beforehand.
username = @zabbix:chat.thorko.de
password = <your password>
room = <#roomname>
port = 443
homeserver = chat.thorko.de
domain = chat.thorko.de
message_type = m.notice
color = true
```
