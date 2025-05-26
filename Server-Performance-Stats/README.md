# 🖥️ Server Performance Stats

A simple Bash script to **analyze basic server performance metrics** like CPU, memory, disk usage, and the top resource-hungry processes. Designed to help you monitor system health and debug performance issues on any Linux-based server.

---

## 📌 Project Goal

The goal of this project is to practice shell scripting by writing a tool that provides quick insights into your server’s performance.

---

## 📊 What This Script Reports

- ✅ **Total CPU usage**
- ✅ **Memory usage** (Used vs Free with percentage)
- ✅ **Disk usage** (Used vs Free with percentage)
- ✅ **Top 5 processes by CPU usage**
- ✅ **Top 5 processes by memory usage**

---

## 📂 File

- `server-stats.sh`: The main Bash script to analyze the system

---

## 🛠️ Usage

Make sure the script is executable and then run:

```bash
chmod +x server-stats.sh
./server-stats.sh
````

> Works on any modern Linux distribution with `bash`, `awk`, `top`, `vmstat`, `df`, and `free` commands available.

---

## 🧪 Sample Output

![Server Performance Screenshot](https://github.com/dth99/Server-Performance-Stats/blob/main/Screenshot%20From%202025-05-24%2023-57-55.png)


## 👨‍💻 Author

[Deepak Kumar](https://www.linkedin.com/in/deepakkumar2o/)



## 🔗 Reference

Project inspired by [roadmap.sh – Server Stats](https://roadmap.sh/projects/server-stats)
