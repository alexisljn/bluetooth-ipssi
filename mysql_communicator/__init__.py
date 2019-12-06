import mysql.connector

class connector:
    def __init__(self):
        self.db = mysql.connector.connect(
            host="localhost",
            user="scannr",
            password="scannr",
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

    def get_latest_scan_for_each_mac_address(self):
        sql = "select mac_address, device_name, rssi, scan_date from scan s where not exists (select 1 from scan s1 where s1.mac_address = s.mac_address and s1.scan_date > s.scan_date) order by scan_date desc"
        self.cursor.execute(sql)
        columns = [col[0] for col in self.cursor.description]
        rows = [dict(zip(columns, row)) for row in self.cursor.fetchall()]
        return rows