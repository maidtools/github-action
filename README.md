# GitHub Action for Maid CLI

This action provides `maid` for GitHub Actions.

## Usage

```yaml
name: Deploy with Maid
on: [push]
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@master
      - name: Deploy with Maid
        uses: maidtools/github-action@main
        env:
          MAID_ACCESS_TOKEN: ${{ secrets.MAID_ACCESS_TOKEN }}
        with:
          args: deploy production
```