# Scann'r

Scann'r is a project which goal is to display nearby bluetooth devices on a web page. It is based on [epyblede](https://github.com/aboutofpluto/epydeble) and provides a more advanced interface to view and manage devices scan history.

## Requirements

   - python > 3.6
   - libbluetooth-dev (linux)
   - modules in requirements.txt

## How to

The project needs a MySQL/MariaDB database. Use the `scannr.sql` file to build the database structure, and configure the database authentication in the `mysql_communicator/__init__.py` file.

You have to install dependencies with `pip install -r requirements.txt`.

The code provides two simple scripts:

- `scan.py`: scan devices and store them in a json file with their ids, names, and RSSI.
- `app.py`: simple Flask app

The bluetooth code in `blscan` uses PyBluez library.
