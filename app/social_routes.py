from flask import Blueprint, render_template, request
from flask import current_app as app

from app.models.feedback import Feedback

social_bp = Blueprint('feedback', __name__)


@social_bp.route('/most_recent_feedback', methods=['GET', 'POST'])
def most_recent_feedback():
    if request.method == 'POST':
        user_id = request.form.get('userId')
        print(user_id)
        if Feedback.check_feedback(user_id):
            feedback = Feedback.get_most_recent_feedback(user_id)
            return render_template('most_recent_feedback.html', user_id=user_id, feedback=feedback)
        else:
            return "User not found."
    return render_template('most_recent_feedback.html')
