# tf-template

学習用の`terraform`のテンプレートリポジトリです。

### セットアップ手順

**前提条件**
- `terraform`CLIがインストールされていること
- `aws configure`で認証情報が設定されていること

```bash
terraform init
terraform plan --var-file=environments/dev/terraform.tfvars
terraform apply --var-file=environments/dev/terraform.tfvars
```