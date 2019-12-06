from flask import Flask, request, render_template, redirect, url_for
import json
import mysql_communicator

app = Flask(__name__)

@app.route('/')
def home():
  return render_template("home.html")

@app.route('/devices', methods=['GET'])
def devices():
  db = mysql_communicator.connector()
  devices = db.get_latest_scan_for_each_mac_address()
  return render_template("devices.html", devices=devices)

@app.route('/devices/<mac_address>', methods=['GET'])
def device(mac_address):
  db = mysql_communicator.connector()
  scans = db.get_scans_of_mac_address(mac_address)
  if not scans:
    return render_template('device-not-found.html')

  names = db.get_names_of_mac_address(mac_address)
  return render_template("device.html", scans=scans, names=names, mac_address=mac_address)

def parse_from_json():
  devices = []
  with open('./devices.json', 'r') as f:
    data = json.loads(f.read())
    for id in data:
      devices.append({"id": id,
                      "name": data[id]["name"],
                      "rssi": data[id]["rssi"] if "rssi" in data[id] else "?"})
    return devices

def dump_to_json(devices):
  pass
