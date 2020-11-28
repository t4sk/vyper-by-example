"""
pseudo code to list all authorized addresses
python3 events.py
"""1

events = [{
    "block": 1,
    "addr": "0x01",
    "approved": True
}, {
    "block": 2,
    "addr": "0x02",
    "approved": True
}, {
    "block": 3,
    "addr": "0x03",
    "approved": True
}, {
    "block": 4,
    "addr": "0x01",
    "approved": False
}]

# set of all authorized addresses
authorized = set()

for event in events:
    if event["approved"]:
        authorized.add(event["addr"])
    else:
        if event["addr"] in authorized:
            authorized.remove(event["addr"])

print(list(authorized))