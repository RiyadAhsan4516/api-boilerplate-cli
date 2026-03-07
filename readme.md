# Node API Boilerplate CLI

A simple interactive CLI tool to quickly scaffold **production-ready Node.js backend projects**.

This tool helps developers instantly generate backend boilerplates by selecting a framework, cloning a template repository, installing dependencies, and generating the required environment configuration.

---

## ✨ Features

- Interactive framework selection
- Automatic boilerplate repository cloning
- Removes existing Git history
- Automatic project folder setup
- Dependency installation using Yarn
- Guided `.env` configuration
- Clean and ready-to-run project structure

---

## 🚀 Supported Frameworks

Currently supported templates:

- **Express.js Boilerplate**
- **Hapi.js TypeScript Boilerplate**
- **NestJS Boilerplate**

More frameworks will be added in future releases.

---

## 📦 Installation

Install the CLI globally using npm:

```bash
npm install -g api-boilerplate-cli
```

---

## ⚡ Usage

Run the CLI:

```bash
api-boilerplate
```

Then follow the interactive prompts:

1. Select your preferred framework
2. Enter your project name
3. Generate environment configuration
4. Install dependencies automatically

Once the setup completes, your project will be ready to run.

---

## 📁 Generated Project Structure

Each template follows a clean backend architecture designed for scalability and maintainability.

Example structure:

```
project-name
│
├── src
│   ├── controllers
│   ├── services
│   ├── repositories
│   ├── routes
│   ├── middlewares
│   └── utils
│
├── config
├── public
├── .env
├── package.json
└── README.md
```

Structure may slightly differ depending on the selected framework.

---

## 🛠 Requirements

Make sure the following tools are installed on your system:

- Node.js (version 18 or higher)
- Yarn
- Git

---

## 🔧 What the CLI Does

When you run the CLI, it will:

1. Clone the selected boilerplate repository
2. Remove the existing `.git` history
3. Rename the project folder
4. Install all dependencies
5. Guide you through `.env` setup
6. Prepare the project for development

---

## 📌 Example Workflow

```bash
npm install -g api-boilerplate-cli

api-boilerplate

✔ Select Framework: Hapi.js TypeScript
✔ Project Name: my-api
✔ Installing dependencies...
✔ Generating .env file...
✔ Setup completed
```

Your backend project is now ready to start development.

---

## 🧩 Roadmap

Planned future improvements:

- More backend frameworks
- Database configuration presets
- Docker support
- Authentication module presets
- Deployment templates
- Plugin system for custom templates

---

## 🤝 Contributing

Contributions are welcome.

If you'd like to improve this project:

1. Fork the repository
2. Create a new branch
3. Submit a pull request

---

## 📄 License

MIT License

---

## 👨‍💻 Riyad

Created to simplify backend project initialization for Node.js developers.