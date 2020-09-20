# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## "EVAGAMES"

## "プレイしたゲームのレビューやそれに対するコメントなどができるアプリケーション"



# テーブル設計

## usersテーブル

| Column           | Type    | Options     |
| ---------------- | ------- | ----------- |
| nickname         | string  | null: false |
| email            | string  | primary_key |
| password         | string  | null: false |

### Association

- has_many :tweets
- has_many :comments



## tweets テーブル

| Column           | Type    | Options                        |
| ---------------- | ------- | ------------------------------ |
| name             | string  | null: false                    |
| image            | string  | null: false                    |
| tweet_text       | string  | null: false                    |
| genru            | integer | null: false                    |
| user_id          | integer | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments



## comments テーブル


| Column       | Type    | Options                        |
| ------------ | ------- | ------------------------------ |
| comment_text | string  | null: false                    |
| user_id      | integer | null: false, foreign_key: ture |
| tweet_id     | integer | null: false, foreign_key: ture |

### Association

- belongs_to :user
- belongs_to :tweet