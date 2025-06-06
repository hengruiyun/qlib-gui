@echo off
setlocal enabledelayedexpansion
echo ========================================
echo Qlib GUI Launcher
echo ========================================
echo.

REM Check if uv is installed
uv --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: uv is not installed or not in PATH
    echo Please install uv from https://docs.astral.sh/uv/getting-started/installation/
    pause
    exit /b 1
)

REM Check if virtual environment exists
if not exist ".venv" (
    echo Creating virtual environment with Python 3.10...
    uv venv --python=3.10  .venv
    if %errorlevel% neq 0 (
        echo Error: Failed to create virtual environment
        pause
        exit /b 1
    )
)

REM Activate virtual environment
echo Activating virtual environment...
call .venv\Scripts\activate.bat

REM Install requirements using uv
echo Installing requirements with uv...
uv pip install -r requirements.txt
if %errorlevel% neq 0 (
    echo Error: Failed to install requirements
    pause
    exit /b 1
)

REM Check if data directory exists and validate data
if not exist ".qlib\qlib_data\cn_data\2*.zip" (
    echo Data directory not found. Downloading cn_data...
    uv run -m qlib.run.get_data qlib_data --target_dir .qlib\qlib_data\cn_data --region cn
    if %errorlevel% neq 0 (
        echo Error: Failed to download data
        pause
        exit /b 1
    ) else (
        echo Data download completed successfully
    )
) else (
    echo Data directory found, checking data validity...
    
    REM --- Get Today's Date (YYYYMMDD) ---
    set dt=%date:~0,4%%date:~5,2%%date:~8,2%

    REM Check all zip files in data directory
    set "valid_data_found=false"
    for %%f in (".qlib\qlib_data\cn_data\2*.zip") do (
        set "filename=%%~nf"
        set "file_date=!filename:~0,8!"
        if "!file_date!"=="!dt!" (
            set "valid_data_found=true"
            echo Found current data: %%f
        ) else (
            echo Deleting outdated data: %%f
            del "%%f"
        )
    )
    
    REM Download data if no current data found
    if "!valid_data_found!"=="false" (
        echo No current data found, downloading...
        uv run -m qlib.run.get_data qlib_data --target_dir .qlib\qlib_data\cn_data --region cn
        if %errorlevel% neq 0 (
            echo Error: Failed to download data
            pause
            exit /b 1
        ) else (
            echo Data download completed successfully
        )
    ) else (
        echo Using existing current data
    )
)

REM Start Streamlit
echo Starting Streamlit application...
echo Application will be available at: http://localhost:8501
echo Browser will open automatically...
echo.

REM Start Streamlit (browser will be opened by qlib_gui.py)
start "" "http://localhost:8501"
uv run streamlit run qlib_gui.py --server.port 8501 --server.headless true

REM Keep window open if there's an error
if %errorlevel% neq 0 (
    echo.
    echo Error: Streamlit failed to start
    pause
)