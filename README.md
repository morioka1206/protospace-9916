# README


## users テーブル

| Column   | Type   | Options   |
| ---------|--------|-----------|
|email     |string  | NOT NULL  |
|password  |string  | NOT NULL  |
|name      |string  | NOT NULL  |
|profile   |text    | NOT NULL  |
|occupation|text    | NOT NULL  |
|position  |text    | NOT NULL  |

### Association

- has_many :prototypes
- has_many :comments


## prototypes テーブル

| Column    | Type    | Options   |
|-----------|---------|-----------|
|title      |string   | NOT NULL  |
|catch_copy |text     | NOT NULL  |
|user       |references|          |

### Association

- belongs_to :user
- has_many: comments 

## comments テーブル

| Column    | Type    | Options  |
|-----------|---------|----------|
|text       |text     | NOT NULL |
|user       |references|         |
|prototype  |references|         |

### Association
- belongs_to :user
- belongs_to :prototype


[![Image from Gyazo](https://i.gyazo.com/e268dc136dff65e3c7f4a12f45a40b9d.gif)](https://gyazo.com/e268dc136dff65e3c7f4a12f45a40b9d)
