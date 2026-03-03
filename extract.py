"""
extract.py
Extracts healthcare data from [INSERT API NAME] and saves to JSON file
"""

import requests
import json
from datetime import datetime

def extract_data():
    """Extract data from healthcare API"""

    #API endpoint
    url = "[INSERT API URL HERE]"

    #Make request
    response = requests.get(url)

    # check if successful
    if response.status_code == 200:
        data = response.json()

        # Save raw data to file
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        filename = f"raw_data_{timestamp}.json"

        with open(filename, 'w') as f:
            json.dump(data, f, indent=2)

        print(f"Data extracted successfully: {filename}")
        return data
    else:
        print(f"Error: {response.status_code}")
        return None
    
if __name__ == "__main__":
    extract_data()
