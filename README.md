# 👹 Shinmon Manage Bot

<p align="center">
  <img src="https://telegra.ph/file/p/example_image.png" alt="Shinmon Bot Logo" width="200">
</p>

<p align="center">
  <b>A Powerful, All-in-One Telegram Group Management Bot written in Python.</b><br>
  <i>Auto-Approver • Anti-Link • Advanced Filters • Media Welcome • Moderation</i>
</p>

<p align="center">
    <a href="https://www.python.org/">
        <img src="https://img.shields.io/badge/Python-3.9%2B-blue?style=for-the-badge&logo=python" alt="Python">
    </a>
    <a href="https://github.com/">
        <img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge" alt="License">
    </a>
</p>

---

## 🌟 Features

* **👮 Advanced Moderation:** Ban, Unban, Kick, Mute, Unmute members easily.
* **🤖 Auto-Approve:** Automatically approves join requests for channels/groups.
* **🖼️ Smart Filters:** Create auto-replies with Text, Photos, Videos, Stickers, or Documents.
* **🛡️ Anti-Link System:** Detects Telegram links and external links. Uses a **3-Strike System** (Warn → Mute → Ban).
* **👋 Custom Welcome & Goodbye:** Set custom media/text welcomes and goodbye messages.
* **📌 Pin Management:** Pin and Unpin messages with commands.
* **💾 Persistent Database:** Saves filters, warnings, and settings in a JSON database (no data loss on restart).
* **📢 Broadcast:** Send messages to all users/groups (Admin only).

---

## 🚀 One-Click Deployment

### 1. Deploy to Railway
<a href="https://railway.app/new">
  <img src="https://railway.app/button.svg" alt="Deploy on Railway">
</a>

### 2. Deploy to Heroku
<a href="https://heroku.com/deploy">
  <img src="https://www.herokucdn.com/deploy/button.svg" alt="Deploy to Heroku">
</a>

---

## 🛠️ Installation (Termux / VPS)

1.  **Update & Install Dependencies:**
    ```bash
    apt update && apt upgrade -y
    pkg install python git -y
    ```

2.  **Clone the Repository:**
    ```bash
    git clone [https://github.com/YOUR_USERNAME/Shinmon-Manage-Bot.git](https://github.com/YOUR_USERNAME/Shinmon-Manage-Bot.git)
    cd Shinmon-Manage-Bot
    ```

3.  **Install Requirements:**
    ```bash
    pip install -r requirements.txt
    ```

4.  **Configuration:**
    * Open `Shin.py` (or `main.py`) and edit the **CONFIGURATION** section.
    * Add your `BOT_TOKEN` and `ADMIN_IDS`.

5.  **Run the Bot:**
    ```bash
    python Shin.py
    ```

---

## 🎮 Commands List

### 👮 Admin Moderation
| Command | Usage | Description |
| :--- | :--- | :--- |
| `/ban` | Reply/ID | Ban a user permanently. |
| `/unban` | Reply/ID | Unban a user. |
| `/kick` | Reply/ID | Remove a user (they can rejoin). |
| `/mute` | Reply/ID [time] | Mute a user (Default 1 hour). |
| `/unmute` | Reply/ID | Unmute a user. |
| `/pin` | Reply | Pin the message. |
| `/unpin` | None | Unpin the last pinned message. |
| `/warn` | Reply/ID | Manually give a strike (1/3). |
| `/clearwarn` | Reply/ID | Reset a user's warning count. |

### ⚙️ Filters (Auto-Reply)
| Command | Usage | Description |
| :--- | :--- | :--- |
| `/filter` | Reply + Keyword | Save a filter (Text/Media). |
| `/stop` | Keyword | Delete a filter. |
| `/filters` | None | List all active filters. |

### 👋 Greetings
| Command | Usage | Description |
| :--- | :--- | :--- |
| `/setwelcome` | Reply to Media | Set a custom Welcome (Img/Vid). |
| `/setleft` | Text | Set a custom Goodbye message. |
| `/resetwelcome`| None | Reset welcome to default. |

---

## 📝 Configuration Variables

Open the Python file and edit these lines at the top:

```python
BOT_TOKEN = "YOUR_BOT_TOKEN_HERE"
ADMIN_IDS = [123456789, 987654321] # Your User ID
CHANNEL_LINK = "[https://t.me/yourchannel](https://t.me/yourchannel)"
