# Connecta Salesforce

[![CI](https://github.com/victorbrandaao/connecta-salesforce/actions/workflows/ci.yml/badge.svg)](https://github.com/victorbrandaao/connecta-salesforce/actions/workflows/ci.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
![Node](https://img.shields.io/badge/Node-20%2B-green)
![Salesforce](https://img.shields.io/badge/Salesforce-DX-blue)

Projeto de training camp: Salesforce DX com landing page B2B, automacoes de Lead e boas praticas de desenvolvimento.

## 🚀 Stack

**Backend Salesforce**
- Apex (trigger, classe reutilizavel)
- Validacao de dados
- Teste unitario

**Frontend**
- HTML5 semantico
- CSS3 (Grid, variáveis, animacoes)
- JavaScript vanilla (validacao, UX)
- Acessibilidade (WCAG)

**DevOps & Quality**
- Salesforce CLI (SFDX)
- GitHub Actions (CI)
- ESLint + Prettier
- Jest para LWC

## 📋 Estrutura

```
.
├── force-app/main/default/          # Metadados Salesforce
│   ├── classes/                     # Apex reutilizavel
│   ├── triggers/                    # Triggers otimizados
│   └── objects/Lead/                # Customizacoes do Lead
├── b2b-landing-page/                # Landing page B2B
│   └── connecta.html                # HTML + CSS + JS
├── .github/workflows/               # Pipeline CI
│   └── ci.yml                       # Lint, test, validacao
└── scripts/                         # Snippets Apex/SOQL
```

## ⚡ Quick Start

### Requisitos
- Node.js 20+
- Salesforce CLI
- Conta Salesforce dev ou scratch org

### Setup

```bash
# 1. Clonar repo
git clone https://github.com/victorbrandaao/connecta-salesforce.git
cd connecta-salesforce

# 2. Instalar dependencias
npm install

# 3. Validar localmente
npm run validate
```

### Landing page

Abra [b2b-landing-page/connecta.html](b2b-landing-page/connecta.html) no navegador. Nao requer servidor.

```bash
# Ou com live server (se tiver instalado)
open b2b-landing-page/connecta.html
```

## 🧪 Testes

### LWC / JavaScript
```bash
npm run test:unit
npm run test:unit:watch
npm run test:unit:coverage
```

### Apex (em org autenticado)
```bash
sf project deploy start --source-dir force-app
sf apex run test --class-names LeadPhoneFormatterTest --result-format human
```

## 📝 Scripts

```bash
npm run lint              # ESLint
npm run format            # Prettier
npm run format:check      # Prettier check
npm run lint:all          # Lint + Prettier check
npm run validate          # Lint + Prettier + Testes
```

## 🔧 Configuracao

- **ESLint**: [eslint.config.js](eslint.config.js)
- **Prettier**: [.prettierrc](.prettierrc)
- **Jest**: [jest.config.js](jest.config.js)
- **Git hooks**: Husky + lint-staged (pre-commit)

## 📦 Deployment

### Scratch org
```bash
sf org create scratch --definition-file config/project-scratch-def.json
sf project deploy start
```

### Sandbox
```bash
sf project deploy start --target-org=myOrg
```

## 🤝 Contribuir

Veja [CONTRIBUTING.md](CONTRIBUTING.md) para padroes de branch, commits e PRs.

## 🔒 Seguranca

Veja [SECURITY.md](SECURITY.md) se encontrar vulnerabilidades.

## 📄 Licenca

MIT © 2026 Victor Brandaao
