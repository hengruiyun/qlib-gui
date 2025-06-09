# Quantitative Investment Platform - GUI Extension [中文](https://github.com/hengruiyun/qlib-gui/blob/main/README_cn.md)

A modern, user-friendly web interface for quantitative investment research and analysis, built on top of Microsoft's [Qlib](https://github.com/microsoft/qlib) framework.

OSM: Fully Developed by AI
AI-driven software development represents a significant milestone in technological innovation. Through the complete development of practical tools like OSM using AI, we demonstrate artificial intelligence's exceptional capabilities in code generation, system design, and problem-solving. This development approach not only improves efficiency, reduces human resource costs and time investment in traditional development, but also ensures consistency in code quality. AI can quickly absorb best practices, avoid common errors, and provide innovative solutions. It serves as powerful evidence of the integration between artificial intelligence and software engineering, revealing the direction of paradigm shifts in future development.

![qlib_en1](https://github.com/user-attachments/assets/44213f43-a4b6-41a9-b189-b7c9c2e467c5)

## Features

### Data Viewing
- **Multi-stock Analysis**: View and analyze multiple stocks simultaneously
- **Flexible Date Ranges**: Customize analysis periods with intuitive date pickers
- **Field Selection**: Choose from various financial metrics (OHLCV, technical indicators)
- **Interactive Charts**: Dynamic price trend visualization with Plotly
- **Data Statistics**: Comprehensive statistical analysis of selected data
- **Export Functionality**: Download data in CSV format for further analysis

###  Model Training
- **Multiple Algorithms**: Support for various machine learning models:
  - Random Forest
  - XGBoost
  - LightGBM
  - Linear Regression
- **Advanced Parameters**: Fine-tune model hyperparameters
- **Real-time Progress**: Visual training progress with status updates
- **Performance Metrics**: Comprehensive model evaluation

### Backtesting Engine
- **Strategy Types**: 
  - Long-Short Strategy
  - Long-Only Strategy
  - Market Neutral Strategy
- **Risk Management**: 
  - Position sizing controls
  - Stop-loss and take-profit settings
  - Maximum drawdown limits
- **Performance Analytics**:
  - Total and annualized returns
  - Sharpe ratio and Calmar ratio
  - Win rate and volatility metrics
  - Drawdown analysis
- **Visual Reports**: Interactive charts and heatmaps

### Internationalization
- **Multi-language Support**: English and Chinese interfaces
- **Auto-detection**: Automatic language switching based on system/browser settings
- **Manual Override**: Easy language switching with dedicated buttons

![qlib_en2](https://github.com/user-attachments/assets/46f5e31e-7272-404d-a68a-fee7563caac0)


## Quick Start

### Prerequisites
- Python 3.10 or higher
- Windows, macOS, or Linux

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/hengruiyun/qlib-gui.git
   cd qlib-gui
   ```

2. **Run the GUI**:
   ```bash
   gui
   ```

3. **Access the application**:
   Open your browser and navigate to `http://localhost:8501`

### Manual Installation

If you prefer manual installation:

```bash
# Install dependencies
pip install -r requirements.txt

# Run the application
streamlit run qlib_gui.py --server.port 8502
```


## Usage Guide

### Data Viewing
1. Navigate to the "Data Viewing" section
2. Enter stock symbols (e.g., "SH600000,SH600036")
3. Select date range and desired fields
4. Click "Load Data" to fetch and visualize data
5. Use the download button to export data

### Model Training
1. Go to the "Model Training" section
2. Select your preferred algorithm
3. Configure training parameters
4. Adjust advanced settings as needed
5. Click "Start Training" and monitor progress


### Backtesting Analysis
1. Access the "Backtest Results" section
2. Define your stock universe and date range
3. Choose strategy type and rebalancing frequency
4. Set risk parameters
5. Run backtest and analyze results


## Technical Architecture

- **Frontend**: Streamlit for rapid web application development
- **Backend**: Python with pandas, numpy for data processing
- **Visualization**: Plotly for interactive charts
- **ML Framework**: Integration with scikit-learn, XGBoost, LightGBM
- **Data Source**: Microsoft Qlib data infrastructure


## License

This GUI extension is licensed under the Apache License 2.0. See the `LICENSE` file for more details.


## Acknowledgements

*   Microsoft Qlib Team**: For creating and maintaining the [Qlib Quantitative Investment Platform](https://github.com/microsoft/qlib)
*   We use `uv`, an extremely fast Python package installer and resolver, written in Rust, developed by Astral. More information at: [https://github.com/astral-sh/uv](https://github.com/astral-sh/uv).


## Contact

Email: 267278466@qq.com


## Disclaimer

This software is intended for educational and research purposes only and does not constitute real trading or investment advice. The creators and contributors of this software are not responsible for any financial losses incurred from its use. Always consult a qualified financial advisor before making investment decisions. 
