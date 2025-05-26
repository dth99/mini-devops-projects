## Log Archive Tool

A simple **Bash CLI utility** to archive log directories on demand (or via cron), compress them into a timestamped `.tar.gz`, and keep a running log of each archive action. Ideal for rotating out old logs from `/var/log` (or any directory) while preserving them in a compressed archive for future reference.

---

### 📋 Features

* **Command-line interface**: specify any directory to archive
* **Timestamped archives**: filenames in the form `logs_archive_YYYYMMDD_HHMMSS.tar.gz`
* **Custom archive location**: stores archives under `~/Videos/log_archives` by default
* **Action log**: appends each archive operation with date/time and source directory into `archive_log.txt`
* **Idempotent setup**: creates the archive directory if it doesn’t exist
* **Error handling**: checks that the source directory exists

---

#### Installation

1. Clone this repository:

   ```bash
   git clone https://github.com/dth99/log-archive-tool.git
   cd log-archive-tool
   ```
2. Make the script executable:

   ```bash
   chmod +x log-archive.sh
   ```

---

### ⚙️ Usage

```bash
./log-archive.sh <log-directory>
```

* `<log-directory>`: Path to the logs you wish to archive (e.g. `/var/log`, `/home/user/app/logs`).

**Example:**

```bash
./log-archive.sh /var/log
```

* This will create:

  * `~/Videos/log_archives/logs_archive_20250525_153022.tar.gz`
  * An entry in `~/Videos/log_archives/archive_log.txt`:

    ```
    [20250525_153022] Archived /var/log to logs_archive_20250525_153022.tar.gz
    ```

---


![https://www.linkedin.com/in/deepakkumar2o/](https://github.com/dth99/log-archive-tool/blob/main/Screenshot%20From%202025-05-25%2009-56-21.png)
![https://www.linkedin.com/in/deepakkumar2o/](https://github.com/dth99/log-archive-tool/blob/main/Screenshot%20From%202025-05-25%2009-58-08.png)


[Project reference](https://roadmap.sh/projects/log-archive-tool)
