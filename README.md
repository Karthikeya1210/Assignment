# PA7081 Final Assignment - Practical Programming

This project contains solutions for the PA7081 Final Assignment with three problems:
1. **Problem 1**: Reading, plotting, and analyzing Cassini spacecraft magnetometer data
2. **Problem 2**: Plotting color maps, contour plots, and histograms of a mathematical function
3. **Problem 3A**: Solving a third-order Ordinary Differential Equation using `odeint`

## Prerequisites

- Python 3.7 or higher
- pip (Python package installer)

## Setup Instructions

### Quick Setup (macOS/Linux)

For a quick automated setup, you can use the provided setup script:

```bash
cd /Users/karthikeya/Desktop/UK\ Assignments/Lester/assignment-4
./setup.sh
```

This script will automatically:
1. Create a virtual environment
2. Activate it
3. Install all dependencies
4. Set up the Jupyter kernel

### Manual Setup

If you prefer to set up manually or are on Windows, follow these steps:

### Step 1: Create a Virtual Environment

Navigate to the project directory and create a virtual environment:

**On macOS/Linux:**
```bash
cd /Users/karthikeya/Desktop/UK\ Assignments/Lester/assignment-4
python3 -m venv venv
```

**On Windows:**
```bash
cd "C:\path\to\assignment-4"
python -m venv venv
```

### Step 2: Activate the Virtual Environment

**On macOS/Linux:**
```bash
source venv/bin/activate
```

**On Windows:**
```bash
venv\Scripts\activate
```

You should see `(venv)` at the beginning of your command prompt, indicating that the virtual environment is active.

### Step 3: Install Dependencies

With the virtual environment activated, install the required packages:

```bash
pip install --upgrade pip
pip install -r requirements.txt
```

This will install:
- `numpy` - For numerical computations and array operations
- `matplotlib` - For plotting and visualization
- `scipy` - For scientific computing (including `odeint` for ODE solving)
- `jupyter` - For running Jupyter notebooks
- `ipykernel` - For Jupyter kernel support

### Step 4: Install Jupyter Kernel (Optional but Recommended)

To use the virtual environment as a Jupyter kernel:

```bash
python -m ipykernel install --user --name=assignment-4 --display-name "Python (assignment-4)"
```

## Running the Project

### Option 1: Using Jupyter Notebook

1. Make sure your virtual environment is activated
2. Start Jupyter Notebook:
   ```bash
   jupyter notebook
   ```
3. Open `PA7081_2025_Final_Assignment.ipynb` in your browser
4. Select the kernel you created (or the default Python kernel)
5. Run the cells sequentially (Cell → Run All, or use Shift+Enter to run individual cells)

### Option 2: Using Jupyter Lab

1. Make sure your virtual environment is activated
2. Start Jupyter Lab:
   ```bash
   jupyter lab
   ```
3. Open `PA7081_2025_Final_Assignment.ipynb` and run the cells

## Project Structure

```
assignment-4/
├── PA7081_2025_Final_Assignment.ipynb    # Main assignment notebook
├── Data_files_for_release/                # Data files directory
│   ├── rev26_27.dat                       # Cassini magnetometer data (Problem 1)
│   └── ...                                # Other data files
├── requirements.txt                       # Python dependencies
├── README.md                              # This file
└── venv/                                  # Virtual environment (created after setup)
```

## Problems Overview

### Problem 1: Data Analysis and Visualization
- Reads Cassini spacecraft magnetometer data from `rev26_27.dat`
- Creates plots with quadratic regression
- Calculates daily statistics (mean and maximum) of magnetic field components
- **Data file location**: `Data_files_for_release/rev26_27.dat`

### Problem 2: Function Visualization
- Defines a mathematical function z(x,y) with parameters A and B
- Creates color maps and contour plots
- Generates histograms of function values
- **Parameters used**: A=1, B=1, N=100, a=0, b=2π

### Problem 3A: ODE Solving
- Solves a third-order Ordinary Differential Equation
- Studies the relationship between maximum solution value and parameter t_s
- Fits polynomial relationships to the results
- **Parameters**: G=1, t_s varies from 0.1 to 10

## Troubleshooting

### Issue: ModuleNotFoundError
**Solution**: Make sure the virtual environment is activated and dependencies are installed:
```bash
source venv/bin/activate  # On macOS/Linux
pip install -r requirements.txt
```

### Issue: FileNotFoundError for rev26_27.dat
**Solution**: Ensure you're running the notebook from the project root directory, and the `Data_files_for_release/` folder exists with the data file.

### Issue: Jupyter kernel not found
**Solution**: Install the kernel as described in Step 4, or manually select the Python interpreter from your virtual environment.

### Issue: Plots not displaying
**Solution**: Make sure `%matplotlib inline` is executed in the notebook cells. If using Jupyter Lab, you may need to install additional extensions.

## Deactivating the Virtual Environment

When you're done working, deactivate the virtual environment:

```bash
deactivate
```

## Notes

- The notebook uses relative paths to access data files. Make sure to run the notebook from the project root directory.
- All plots are generated inline using matplotlib.
- The solutions use standard NumPy, Matplotlib, and SciPy methods without over-engineering.

## Submission

According to the assignment instructions:
- Submit your solution as a Jupyter Notebook without file compression
- Name the file using your UoL email username (e.g., `ab131.ipynb`)
- Ensure all cells run successfully before submission

