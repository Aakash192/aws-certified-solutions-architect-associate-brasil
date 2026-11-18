#!/usr/bin/env bash
set -euo pipefail

# Run from the repository root.
# Goal: remove duplicate numbering and keep a sequential 01..27 track.
# Note: historical one-off migration script from the original repository; it uses the original Portuguese folder names.

BASE_DIR="${1:-.}"
cd "$BASE_DIR"

# Source -> destination mapping (logical SAA-C03 track).
declare -a MAP=(
  "01-Introducao-SAA-C03|01-Introducao-SAA-C03"
  "02-IAM-e-Seguranca|02-IAM-e-Seguranca"
  "09-IAM-e-Seguranca|03-IAM-e-Seguranca-Labs"
  "03-Computacao-EC2|04-Computacao-EC2"
  "04-Alta-Disponibilidade-e-Escalabilidade|05-Alta-Disponibilidade-e-Escalabilidade"
  "05-Amazon-S3-e-Armazenamento|06-Amazon-S3-e-Armazenamento"
  "08-S3-Avancado|07-S3-Avancado"
  "07-VPC-e-Redes|08-VPC-e-Redes"
  "05-VPC-e-Redes|09-VPC-e-Redes-Labs"
  "06-Banco-de-Dados|10-Banco-de-Dados"
  "06-RDS-e-Bancos-Relacionais|11-RDS-e-Bancos-Relacionais"
  "07-DynamoDB|12-DynamoDB"
  "08-DNS-Route53-e-CloudFront|13-DNS-Route53-e-CloudFront"
  "09-Desacoplamento-SQS-SNS-EventBridge|14-Desacoplamento-SQS-SNS-EventBridge"
  "10-SQS-SNS-Mensageria|15-SQS-SNS-Mensageria-Labs"
  "10-Containers-ECS-EKS-Fargate|16-Containers-ECS-EKS-Fargate"
  "11-Serverless-Lambda-API-Gateway|17-Serverless-Lambda-API-Gateway"
  "12-Dados-e-Analytics|18-Dados-e-Analytics"
  "13-Machine-Learning-e-IA|19-Machine-Learning-e-IA"
  "14-Monitoramento-CloudWatch-CloudTrail|20-Monitoramento-CloudWatch-CloudTrail"
  "15-Migracao-e-Transferencia|21-Migracao-e-Transferencia"
  "16-Well-Architected-Framework|22-Well-Architected-Framework"
  "17-Casos-de-Uso-Reais|23-Casos-de-Uso-Reais"
  "18-Labs-Praticos|24-Labs-Praticos"
  "19-Simulados-e-Questoes|25-Simulados-e-Questoes"
  "20-Glossario|26-Glossario"
  "21-Recursos-e-Links|27-Recursos-e-Links"
)

echo "[1/2] Renaming to temporary names..."
for pair in "${MAP[@]}"; do
  src="${pair%%|*}"
  dst="${pair##*|}"

  if [[ ! -d "$src" ]]; then
    echo "  - Warning: source folder not found: $src"
    continue
  fi

  tmp="__tmp__${dst}"
  if [[ -e "$tmp" ]]; then
    echo "  - Error: temporary name already exists: $tmp"
    exit 1
  fi

  mv "$src" "$tmp"
  echo "  - $src -> $tmp"
done

echo "[2/2] Applying final names..."
for pair in "${MAP[@]}"; do
  dst="${pair##*|}"
  tmp="__tmp__${dst}"

  if [[ ! -d "$tmp" ]]; then
    echo "  - Warning: temporary folder not found: $tmp"
    continue
  fi

  if [[ -e "$dst" ]]; then
    echo "  - Error: final destination already exists: $dst"
    exit 1
  fi

  mv "$tmp" "$dst"
  echo "  - $tmp -> $dst"
done

echo "Done. Structure renumbered with no duplicates."