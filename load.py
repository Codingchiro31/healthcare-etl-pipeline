"""
load.py
Loads transformed data into PostgreSQL database
"""

import pandas as pd
import psycopg2
from sqlachemy import create_engine

# database connection details
DB_CONFIG = {
    'host': 'localhost', # or RDS endpoint
    'database': 'healthcare_data',
    'user': 'postgres',
    'password': 'YOUR_PASSWORD_HERE'
}

def load_data(csv_file):
    """Load CSV data into PostgreSQL database"""

    # Read CSV
    df = pd.read_csv(csv_file)
    print(f"Loaded {len(df)} rows from CSV")

    # create sqlalchemy engine
    engine = create_engine(f"postgresql://{DB_CONFIG['user']}:{DB_CONFIG['password']}@{DB_CONFIG['host']}/{DB_CONFIG['database']}")

    # load to database
    df.to_sql(
        'healtcare_records',
        engine,
        if_exists='append', # append data to existing table
        index=False
    )

    print(f"Successfully loaded {len(df)} rows to database!")

    # verify by querying
    query = "SELECT COUNT(*) FROM healthcare_records;"
    result = pd.read_sql(query, engine)
    print(f"Total rows in database: {result.iloc[0, 0]}")

    engine.dispose()

if __name__ == "__main__":
    load_data(transformed_data.csv)
