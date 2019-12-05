import mysql.connector

class connector:
    def __init__(self):
        self.db = mysql.connector.connect(
            host="localhost",
            user="root",
            password="root",
            database="scannr",
        )

        self.cursor = self.db.cursor()

    def commit(self):
        self.db.commit()

    def insert_scan(self, mac_address, device_name, rssi, scanned_by_device):
        sql = "INSERT INTO scan (mac_address, device_name, rssi, scanned_by_device) VALUES (%s, %s, %s, %s)"
        values = (mac_address, device_name, rssi, scanned_by_device)
        self.cursor.execute(sql, values)
        self.commit()
