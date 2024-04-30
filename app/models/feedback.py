from flask import current_app as app


class Feedback:
    def __init__(self, user_id, name, feedback, stars, review_date, product_or_seller):
        self.user_id = user_id
        self.name = name
        self.feedback = feedback
        self.stars = stars
        self.review_date = review_date
        self.product_or_seller = product_or_seller

    @staticmethod
    def get_most_recent_feedback(user_id):
        rows = app.db.execute("""
                select aid user_id, sid name, description feedback, stars, review_date, 'Seller' as product_or_seller
                from sellerreview
                where aid = :user_id
                union
                select aid user_id, pid name, review feedback, stars, review_date, 'Product' as product_or_seller
                from productreview
                where aid = :user_id
                order by review_date desc
                limit 5
                """, user_id=user_id)

        return [Feedback(*row) for row in rows]

    @staticmethod
    def check_feedback(user_id):
        rows = app.db.execute("""
        select aid user_id, sid name, description feedback, stars, review_date, 'Seller' as product_or_seller
        from sellerreview
        where aid = :user_id
        union
        select aid user_id, pid name, review feedback, stars, review_date, 'Product' as product_or_seller
        from productreview
        where aid = :user_id
        """, user_id=user_id)
        return len(rows) > 0
