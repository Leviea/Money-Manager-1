import os

DEBUG = True
# TESTING = True
user="k12", password="{your_password}", 
host="moneymanager.mysql.database.azure.com", 
port=3306, 
database="queries"
MYSQL_CURSORCLASS = 'DictCursor'
SECRET_KEY = 'your_secret_key'
MAIL_SERVER = 'smtp.googlemail.com'
MAIL_PORT = 587
MAIL_USE_TLS = True
MAIL_USERNAME = os.environ.get('EMAIL_USER')
MAIL_PASSWORD = os.environ.get('EMAIL_PASS')
