# Connecta Salesforce

Projeto Salesforce DX com landing page B2B e automacoes para Leads.

## Estrutura

- App Salesforce: [force-app/main/default](force-app/main/default)
- Landing page: [b2b-landing-page/connecta.html](b2b-landing-page/connecta.html)
- Scripts de apoio: [scripts](scripts)

## Requisitos

- Node.js (recomendado 20+)
- Salesforce CLI (sf)

## Setup rapido

```bash
npm install
```

## Scripts principais

```bash
npm run lint
npm run prettier
npm run prettier:verify
npm run test:unit
```

## Landing page

Abra o arquivo [b2b-landing-page/connecta.html](b2b-landing-page/connecta.html) no navegador para visualizar.

## Testes

Existe um teste Apex basico para a formatacao de telefone de Lead. Para executar, use o Salesforce CLI em um org autenticado.

## Seguranca

- Nunca versionar segredos ou tokens.
- Use arquivos locais ignorados (como `.env`) e secrets do CI.

## Contribuicao

Veja [CONTRIBUTING.md](CONTRIBUTING.md) para padroes de branch, commits e PRs.
