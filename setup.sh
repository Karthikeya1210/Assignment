#!/bin/bash

# Setup script for PA7081 Final Assignment
# This script creates a virtual environment and installs dependencies

echo "Setting up virtual environment for PA7081 Final Assignment..."
echo ""

# Create virtual environment
echo "Step 1: Creating virtual environment..."
python3 -m venv venv

# Activate virtual environment
echo "Step 2: Activating virtual environment..."
source venv/bin/activate

# Upgrade pip
echo "Step 3: Upgrading pip..."
pip install --upgrade pip

# Install dependencies
echo "Step 4: Installing dependencies..."
pip install -r requirements.txt

# Install Jupyter kernel
echo "Step 5: Installing Jupyter kernel..."
python -m ipykernel install --user --name=assignment-4 --display-name "Python (assignment-4)"

echo ""
echo "Setup complete! 🎉"
echo ""
echo "To activate the virtual environment in the future, run:"
echo "  source venv/bin/activate"
echo ""
echo "To start Jupyter Notebook, run:"
echo "  jupyter notebook"
echo ""
echo "To start Jupyter Lab, run:"
echo "  jupyter lab"

