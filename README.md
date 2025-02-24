# 🚀 Bash Utility 🖥️

This project is a **Bash application** that provides various **system monitoring and organizing functionalities**. It includes scripts for organizing files, monitoring system resources, and tracking user activity. 🛠️

---

## 🔥 Real-Time Use Case Scenario

### **👨‍💻 Scenario**:
You are an **IT administrator** responsible for managing a team of developers. Your job includes keeping the development environment **organized**, **monitoring system resources** to prevent performance issues, and **tracking user activity** to ensure compliance with company policies.

---

## 🗂️ 1. Organizing Files 📂

### **⚠️ Problem:**
Developers often **download and create numerous files**, leading to a **cluttered workspace**. This disorganization can **reduce productivity**.

### **✅ Solution:**
Use the `organizer.sh` script to **automatically organize files** into directories based on their types.

### **🔧 Steps:**
1️⃣ Run the `organizer.sh` script:
   ```bash
   bash scripts/organizer.sh
   ```
2️⃣ The script will **sort** images, documents, videos, audios, archives, books, codes, and other files into respective directories! 🎯

---

## 📊 2. Monitoring System Resources 📉

### **⚠️ Problem:**
High CPU, memory, or disk usage can **slow down** development teams. 🐢

### **✅ Solution:**
Use `generate_csv.sh` and `generate_graphs.sh` scripts to **monitor system resources** and generate 📈 **visual reports**.

### **🔧 Steps:**
1️⃣ Schedule the `generate_csv.sh` script to run at regular intervals using a **cron job** ⏳:
   ```bash
   crontab -e
   ```
   Add the following line to run the script **every hour**:
   ```bash
   0 * * * * /path/to/my-bash-project/scripts/generate_csv.sh
   ```
2️⃣ Run the `generate_graphs.sh` script to generate **graphs** 📊:
   ```bash
   bash scripts/generate_graphs.sh
   ```
3️⃣ Review the graphs to detect **performance issues** and **take action**! ⚡

---

## 🕵️‍♂️ 3. Tracking User Activity 📝

### **⚠️ Problem:**
Need to **track application usage** and ensure **compliance** with company policies? ❌

### **✅ Solution:**
Use the `user_monitoring.sh` script to **track user activity**, such as **opened applications, usage time, frequency, and stability**.

### **🔧 Steps:**
1️⃣ Run the script:
   ```bash
   bash scripts/user_monitoring.sh
   ```
2️⃣ A **detailed activity report** will be generated! 📝
3️⃣ Review the report to ensure **policy compliance** and prevent **unauthorized usage**. 🚔

---

## 🌟 Summary

✅ **Organize files**: Keep workspaces clean 🏡
✅ **Monitor system resources**: Prevent lags 🏎️
✅ **Track user activity**: Ensure compliance 📜

---

## 📚 Research Work

The `organizer.sh` script is based on a **published research paper**: 🔬 DOI: [10.1109/ICITEICS61368.2024.10625508](https://doi.org/10.1109/ICITEICS61368.2024.10625508).

🔗 **GitHub Research Code**: [GitHub Repository](https://github.com/mishrabiswajit/THE-ORGANIZER/tree/main) 🧑‍💻

---

## 📌 Requirements

✔️ Bash version **4.0 or higher** 🖥️
✔️ `gnuplot` for generating graphs (Install via `brew install gnuplot` on macOS) 📊
✔️ Other dependencies (if applicable) 🛠️

---

## 🔽 Installation

1️⃣ Clone the repository:
   ```bash
   git clone [repository URL]
   ```
2️⃣ Navigate to the project directory:
   ```bash
   cd my-bash-project
   ```

---

## 🤝 Contributing

Want to contribute? Fork the repository and submit a **pull request**! 🎉

---

## 📜 License

This project is licensed under the **MIT License** - see the LICENSE file for details. ⚖️

**Owner:** Roumo Kundu  
📧 **Contact:** rjroumo@gmail.com ✉️

