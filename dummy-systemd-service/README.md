# 🔧 Systemd Dummy Service

This project demonstrates the use of `systemd` for managing Linux background services. It includes creating and enabling a custom systemd service, monitoring its status, capturing logs, and ensuring auto-restart on failure.

---

## 📌 Project Objectives

* Understand how to write and manage systemd services.
* Create a background script that runs indefinitely and writes logs.
* Configure the service to:

  * Start automatically on system boot.
  * Restart if it fails.
  * Support `start`, `stop`, `enable`, `disable`, and `status` commands.
  * Log output accessible via `journalctl`.

---

## 🧾 Files in This Project

### 1. `dummy.sh`

A simple Bash script that simulates a long-running application:

```bash
#!/bin/bash

while true; do
  echo "Dummy service is running..." >> /var/log/dummy-service.log
  sleep 10
done
```

* Location: `/home/dth99/dummy.sh`
* Make sure the script is executable:

  ```bash
  chmod +x /home/dth99/dummy.sh
  ```

---

### 2. `dummy.service`

Custom `systemd` unit file located at `/etc/systemd/system/dummy.service`:

```ini
[Unit]
Description=Dummy Systemd Service

[Service]
Type=simple
ExecStart=/home/dth99/dummy.sh
Restart=on-failure
RestartSec=5s

[Install]
WantedBy=multi-user.target
```

---

## 🔄 Service Commands

Here are the systemctl commands used to control the service:

```bash
# Start the service
sudo systemctl start dummy

# Stop the service
sudo systemctl stop dummy

# Enable service on boot
sudo systemctl enable dummy

# Disable service from boot
sudo systemctl disable dummy

# Check status
sudo systemctl status dummy

# View logs in real time
sudo journalctl -u dummy -f
```

---

## ✅ What’s Working

* [x] `dummy.sh` runs indefinitely and writes logs every 10 seconds.
* [x] `dummy.service` is created and placed in `/etc/systemd/system/`.
* [x] Service is enabled to start automatically on boot.
* [x] Service is set to auto-restart on failure.
* [x] Logs are written to `/var/log/dummy-service.log` and viewable with `journalctl`.

---

## 📸 Screenshots

> *(Add screenshots below each heading to showcase the actual output)*

### 1. Service Started Successfully

![deepak20](https://github.com/dth99/mini-devops-projects/blob/main/dummy-systemd-service/image.png)

### 2. Logs Being Written

![deepak20](https://github.com/dth99/mini-devops-projects/blob/main/dummy-systemd-service/Screenshot%20From%202025-05-29%2023-19-36.png)

