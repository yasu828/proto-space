# README

## usersテーブル

| Colum      | Type       | Options  |
| ---------- | ---------- | ---------|
| email      | string     | not null |
| password   | string     | not null |
| name       | string     | not null |
| profile    | text       | not null |
| occupation | text       | not null |
| position   | text       | not null |

### Association
- has_many: comment
- has_many: prototype

## commentsテーブル

| Colum      | Type       | Options  |
| ---------- | ---------- | ---------|
| text       | text       | not null |
| user       | references |          |
| prototype  | references |          |

### Association
- belong_to: user
- belong_to: prototype

## prototypeテーブル

| Colum      | Type       | Options  |
| ---------- | ---------- | ---------|
| title      | string     | not null |
| catch_copy | text       | not null |
| concept    | text       | not null |
| user       | references |          |

### Association
- has_many: comment
- belong_to: user