if __name__ == "__main__":
    import mysql_communicator

import bluetooth, json
from blscan import get_nearby_devices, get_rssi_for_devices

SCANNER_NAME = 'SCANNER1'  # the name of the scanning device

db = mysql_communicator.connector()

print("Performing inquiry ... ", end='', flush=True)

nearby_devices = get_nearby_devices()
nearby_devices = {row[0]: {"name": row[1]} for row in nearby_devices}

print("Found {} devices".format(len(nearby_devices)))
print("Getting RSSI ... ", end='', flush=True)

get_rssi_for_devices(nearby_devices)

print("Done")
print("Logging ... ", end='', flush=True)


for device_mac_address in nearby_devices:
    if 'rssi' not in nearby_devices[device_mac_address]:
        nearby_devices[device_mac_address]['rssi'] = None

    print(nearby_devices[device_mac_address])
    db.insert_scan(
        device_mac_address,
        nearby_devices[device_mac_address]['name'],
        nearby_devices[device_mac_address]['rssi'],
        SCANNER_NAME
    )

with open("devices.json", "w") as f:
    f.write(json.dumps(nearby_devices))

print("Done")
