# 🖥️ ComputerWash.cmd

> *The Windows maintenance tool that got out of hand (in the best possible way.)*

[![Version](https://img.shields.io/badge/version-V.2026.04.10.20.35-blue)](https://pastequeosaure.freeboxos.fr)
[![Language](https://img.shields.io/badge/language-CMD-black)](https://pastequeosaure.freeboxos.fr)
[![License](https://img.shields.io/badge/license-MIT-green)](LICENSE)
[![Lines](https://img.shields.io/badge/lines-5000%2B-red)](https://pastequeosaure.freeboxos.fr)

![Main_menu](Screenshot/Main_menu.png)

**ComputerWash.cmd** is a native Windows CMD maintenance script started in 2019. No dependencies. No PowerShell. No Python. Just `.cmd` pushed as far as it can go.

🌐 **Website:** [https://pastequeosaure.freeboxos.fr](https://pastequeosaure.freeboxos.fr)

---

## 🚀 Usage

1. **Download** `ComputerWash.cmd`
2. **Right-click → Run as administrator** *(recommended)*
3. Follow the menu

---

## 🏗️ Architecture

Despite being a single `.cmd` file, ComputerWash implements several recognized software engineering patterns:

- **Self-Registration**
- **Two-Pass Rendering**
- **Retry Pattern**
- **Pointer Indirection**
- **Resource Locking** for hibernate state management
- **Fingerprinting SHA-256**

5000+ lines. Zero external dependencies.

---

## 📋 Requirements

- Windows 10 / 11
- Administrator rights *(recommended)*
- `curl` *(bundled with Windows 10 1803+, required for auto-update only)*

---

## 👤 Author

**PastequeOsaure** — Building CMD scripts since 2019 because why not.

- 🌐 [pastequeosaure.freeboxos.fr](https://pastequeosaure.freeboxos.fr)
- 🐙 GitHub: [@PastequeOsaure](https://github.com/PastequeOsaure)

---

## 📄 License

MIT License — © 2019-2026 PastequeOsaure

> *Any unauthorized modification of this script is done at your own risk.*
> *If you update this script, please record your changes in the Update section.*

## 📌 Notes

- The script supports arguments ( Example : ComputerWash.cmd A1 C55)
- The script automatically displays the order of commands and their execution status (ON/OFF).  
- You have 30 seconds to close Computer Wash after launching.
![Safeguard](Screenshot/Safeguard.png)
- Verify all Shutdown parameters before starting the process.  
- Some commands may take several minutes to execute (Chkdsk, Mrt.exe, DISM, Sfc…).  
- Cleanup and reset commands may modify the system and delete temporary files: back up your important data.
- Administrative privileges are required for proper execution.
- There is a non-admin mode.
If necessary: ​​wait and say no to the pop-up.

![Na_Admin](Screenshot/Na_Admin.png)  
