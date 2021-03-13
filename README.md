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

https://gyazo.com/36a522f642c52bbb4d476c9ff2659455


[![Image from Gyazo](https://i.gyazo.com/36a522f642c52bbb4d476c9ff2659455.png)](https://gyazo.com/36a522f642c52bbb4d476c9ff2659455)
