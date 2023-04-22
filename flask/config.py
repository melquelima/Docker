#import pyodbc 

#drivers = [item for item in pyodbc.drivers()] 
#print(drivers)

DEBUG = True
SQLALCHEMY_TRACK_MODIFICATIONS = True
CORS_HEADERS = 'Content-Type'
SECRET_KEY = "asdjkgasd$#43"

SQLALCHEMY_DATABASE_URI     = f"postgresql+psycopg2://postgres:qwerty333@postgres_cntr/postgres"