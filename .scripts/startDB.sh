#!/bin/bash

if [ ! -d "pgadmin4" ]; then
    echo "Creating Python virtual environment..."
    python3 -m venv pgadmin4
fi

echo "Activating virtual environment..."
source pgadmin4/bin/activate

if ! pip list | grep -q pgadmin4; then
    echo "pgadmin4 not found. Installing pgadmin4..."
    pip install pgadmin4
fi

echo "Starting pgAdmin4..."
pgadmin4
