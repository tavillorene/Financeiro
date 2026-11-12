# Financeiro

Minhas finanças pessoais com o [Sure](https://github.com/we-promise/sure) (fork comunitário do Maybe Finance, licença AGPLv3), rodando no meu PC via Docker.

> Baseado no Sure / Maybe Finance. Não afiliado nem endossado pela Maybe Finance Inc.

## Primeira instalação (Windows)

1. Instale e abra o **Docker Desktop**.
2. Baixe este repositório (ex.: `Documentos\Financeiro`).
3. Copie `.env.example` para `.env` e troque `SECRET_KEY_BASE` e `POSTGRES_PASSWORD` por valores aleatórios.
4. Dê dois cliques em `iniciar.bat` e acesse http://localhost:3000.
5. Crie a conta e escolha a moeda **BRL**.

## Scripts

| Arquivo | O que faz |
|---|---|
| `iniciar.bat` | Sobe o Sure + backup diário e abre o navegador |
| `parar.bat` | Desliga tudo |
| `atualizar.bat` | Faz backup, baixa a versão nova e reinicia |

## Backups

Backup automático todo dia às 2h na pasta `backups/` (mantém 7 dias). Backup na hora: `docker compose run --rm backup create`.

## Segurança

- **Nunca** suba o `.env` nem a pasta `backups/` (já estão no `.gitignore`).
- Os dados financeiros ficam no banco do Docker, não neste repositório.
