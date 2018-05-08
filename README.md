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

## membersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key :true|

## Association
- belongs_to :user
- belongs_to :group

## groupテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|member_id|integer|null: false, foreign_key: true|

## Association
- has_many :members

## messageテーブル

|Column|Type|Options|
|------|----|-------|
|body|text|null: false|
|image|string|null: false|
|user_message_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
- belongs_to :group
- has_many :user_message

## userテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
|user_message_id|integer|null: false, foreign_key: true|
|members_id|integer|null: false, foreign_key: true|

## Association
- has_many :members_id
- has_many :user_message_id

## user_messageテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|message_id|integer|null: false, foreign_key: true|

## Association
- belong_to :user
- belong_to :message















