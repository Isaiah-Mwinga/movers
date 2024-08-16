from dotenv import load_dotenv, find_dotenv

load_dotenv(find_dotenv('.env.local'))

from app.main import app

