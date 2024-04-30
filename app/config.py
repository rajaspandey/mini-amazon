import os


class Config(object):
    SECRET_KEY = "1234"
    # SQLALCHEMY_DATABASE_URI = 'postgresql://{}:{}@{}:{}/{}'\
    #     .format(os.environ.get('DB_USER'),
    #             os.environ.get('DB_PASSWORD'),
    #             os.environ.get('DB_HOST'),
    #             os.environ.get('DB_PORT'),
    #             os.environ.get('DB_NAME'))
    # SQLALCHEMY_TRACK_MODIFICATIONS = False

    SQLALCHEMY_DATABASE_URI = 'postgresql://postgres:postgres@localhost:5432/amazon'
    SQLALCHEMY_TRACK_MODIFICATIONS = False