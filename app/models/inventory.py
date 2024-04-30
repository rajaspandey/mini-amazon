from flask import current_app as app

class Inventory:
    def __init__(self, pid, sid, cid, name, description, image, price, quantity_in_stock, available):
        self.pid = pid
        self.sid = sid
        self.cid = cid
        self.name = name
        self.description = description
        self.image = image
        self.price = price
        self.quantity_in_stock = quantity_in_stock
        self.available = available

    @staticmethod
    def get_seller_inventory(seller_id):
        rows = app.db.execute("""
            SELECT i.pid, i.sid, p.cid, p.name, p.description, p.image, p.price, i.quantity_in_stock, p.available
            FROM inventory i
            join product p
            on i.pid = p.pid
            WHERE sid = :seller_id
            """, seller_id=seller_id)

        return [Inventory(*row) for row in rows]

    @staticmethod
    def check_seller_id(seller_id):
        rows = app.db.execute("""
    SELECT *
    FROM inventory
    WHERE sid = :seller_id
    """, seller_id=seller_id)
        return len(rows) > 0
