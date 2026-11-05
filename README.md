# claude-skills

Claude 用の skill を Git で管理するリポジトリです。

## 構成

```
skills/
  <skill-name>/
    SKILL.md        # 必須。frontmatter（name, description）と本文
scripts/
  package.sh        # skill フォルダを .skill（zip）にまとめる
```

## 運用ルール

- 1 skill 1 フォルダとし、フォルダ名と frontmatter の `name` を一致させる。
- 変更は Conventional Commits 形式で commit する（例: `feat(doc-formatting-judgment): 出典を追記`）。
- 配布版は tag（例: `doc-formatting-judgment-v1.1.0`）で管理する。
- `.skill` は生成物のため、リポジトリにはコミットしない（`dist/` に出力）。
- 機密情報、認証情報、社内限定の個人情報を書き込まない。

## パッケージ作成

```
scripts/package.sh skills/doc-formatting-judgment
```

`dist/doc-formatting-judgment.skill` が生成されます。
