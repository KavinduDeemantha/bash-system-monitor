# Bash System Health Monitor

A lightweight Bash script designed to monitor disk space usage on Linux/WSL 2, log system health stats with exact timestamps, and trigger alerts when storage crosses a predefined threshold. Fully automated using Linux Cron Jobs.

## 🚀 Features
- **Storage Tracking:** Monitors specific partition usage (`/mnt/c` for Windows C: drive on WSL).
- **Dynamic Logging:** Automatically logs system health status into a structured `.log` file.
- **Smart Alerting:** Triggers a console warning if disk usage exceeds the threshold limit (e.g., 50%).
- **Background Automation:** Uses Linux **Cron Jobs** for continuous background monitoring without human intervention.

## 🛠️ Setup & Usage Instructions

**Make the script executable:**
   chmod +x health_check.sh

Run the script manually:
  ./health_check.sh

🔄 How to Automate (Cron Job Setup)
To configure the script to run automatically every minute in the background:

1. Open the crontab configuration file:
      crontab -e

2. Add the following line at the bottom of the file (Make sure to replace /path/to/ with your actual script path):
     * * * * * /path/to/health_check.sh


   
