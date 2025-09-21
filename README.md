# ⚡️ Next.js Boilerplate with Docker & Dev Containers

Ready-to-use **Next.js** development and production setup featuring:

- 🐳 **Multi-stage Docker build**: Zsh-powered dev environment + lightweight production image
- 📦 **pnpm** via Corepack
- 🖥️ **Zsh with autosuggestions & persistent history** for smooth CLI workflows
- 🛠 **Biome** as formatter & linter with Git integration for consistent commits
- 🎨 **Tailwind CSS** support with preinstalled VS Code extension
- 🔧 **Devcontainer configuration** for a reproducible and portable workspace


## 🚀 Getting Started

### 1. Clone this repository
```zsh
git clone https://github.com/your-username/nextjs-boilerplate.git
cd next-js-boilerplate
```

### 2. Create environment file
Before starting the container, copy the sample environment file:

```zsh
cp .devcontainer/.env.sample .devcontainer/.env
```
### 3. Open in Dev Container
Open the project in VS Code and run "Reopen in Container" to initialize the development environment.
All necessary tools (pnpm, Biome, Tailwind, etc.) are already preinstalled.

### 4. Run the Next.js app
Inside the container:


```zsh
cd app && pnpm dev
```

Now you can access the app at 👉 http://localhost:3000.

## 📂 Project Structure
```
.
├── .devcontainer/   # Devcontainer configs & environment settings
├── app/             # Next.js application source code
├── Dockerfile       # Multi-stage build for dev & prod
├── compose.yml      # Docker Compose setup
└── README.md
```
## ✅ Features
Consistent development environment with Docker & Dev Containers

Opinionated setup with Biome + TailwindCSS out-of-the-box

Zsh shell with history persistence for productivity

Production-ready build optimized for deployment

## 📜 License
MIT