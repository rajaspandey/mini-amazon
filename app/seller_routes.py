from flask import Blueprint, render_template, request
from flask import current_app as app

from app.models.inventory import Inventory

seller_bp = Blueprint('seller', __name__)


@seller_bp.route('/seller_inventory', methods=['GET', 'POST'])
def seller_inventory():
    if request.method == 'POST':
        seller_id = request.form.get('sellerId')
        if Inventory.check_seller_id(seller_id):
            inventory = Inventory.get_seller_inventory(seller_id)
            return render_template('seller_inventory.html', seller_id=seller_id, inventory=inventory)
        else:
            return "Seller not found."
    return render_template('seller_inventory.html')
