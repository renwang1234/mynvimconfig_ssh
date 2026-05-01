# ⚡ My Personal Neovim Config

> A fast, minimal, and evolving Neovim setup built from scratch.

---

## 📚 Table of Contents

* 🎬 Preview
* 📌 About
* ✨ Features
* 📦 Installation
* 🚀 Getting Started
* 🛠 Requirements
* 📁 Project Structure
* 🎯 Goals
* ⚠️ Disclaimer
* 🤝 Contributing
* 📖 Inspiration
* 🧠 Philosophy

---

## 🎬 Preview

> (Add your GIF here later)

```text
Tip: Use tools like "asciinema" or "screen2gif" to record your workflow
```

---

## 📌 About

This is my personal Neovim configuration.

The purpose of this project is to:

* Learn how Neovim works under the hood
* Build a **fully customized development environment**
* Improve my skills in:

  * Lua
  * C / C++
  * Python
  * JavaScript

> 🚧 This project is **actively evolving** and may contain breaking changes.

---

## ✨ Features

* ⚡ Lazy-loaded plugins via `lazy.nvim`
* 🌳 Treesitter syntax highlighting
* 🧠 LSP integration (WIP)
* 🎨 Custom UI (statusline, theme tweaks)
* 🚀 Fast startup time

---

## 📦 Installation

### Clone (HTTPS)

```bash
git clone https://github.com/renwang1234/mynvimconfig_ssh.git ~/.config/nvim
```

### Clone (SSH) ⭐ Recommended

```bash
git clone git@github.com:renwang1234/mynvimconfig_ssh.git ~/.config/nvim
```

---

## 🚀 Getting Started

```bash
nvim
```

On first launch, Neovim will automatically:

* Install plugins
* Setup Treesitter
* Initialize LSP (if configured)

---

## 🛠 Requirements

| Tool      | Required  | Description        |
| --------- | --------  | ------------------ |
| Neovim    | ✅        | >= 0.9 recommended |
| Git       | ✅        | Plugin management  |
| Nerd Font | ✅        | Icons support      |
| ripgrep   | ⚙️        | Better search      |
| fd        | ⚙️        | File finder        |
| Node.js   | ⚙️.ing    | LSP / tooling      |
| Python    | ⚙️        | Plugin support     |

---

## 📁 Project Structure

```bash
~/.config/nvim
├── lua/
│   ├── core/        # settings, keymaps, autocmds
│   ├── plugins/     # plugin specifications
│   └── config/      # plugin configurations
├── init.lua
```

---

## 🎯 Goals

* Keep config clean and readable
* Avoid unnecessary bloat
* Understand every line
* Build a personal workflow tailored to my needs

---

## ⚠️ Disclaimer

* Not a distribution (like LazyVim or NvChad)
* Pure learning-focused configuration
* May break at any time

---

## 🤝 Contributing

Not open for contributions right now.

However, feel free to:

* Fork it
* Learn from it
* Improve your own setup 😄

---

## 📖 Inspiration

* LazyVim
* Neovim setup videos
* Personal experimentation

---

## 🧠 Philosophy

> "Don't copy configs. Understand them."
