# テーブル定義書

## テーブル一覧

|No.|論理テーブル名|物理テーブル名|
|:--:|:--|:--|
|1|店舗テーブル|shop|
|2|従業員テーブル|emp|
|3|商品テーブル|goods|
|4|レシートテーブル|receipt|
|5|レシート明細テーブル|detail|
|6|支払方法|payment|
|7|税率|tax|

## 1.店舗テーブル
|No.|論理名|物理名|型|制約|NotNull|
|:--:|:--|:--|:--|:--|:--|
|1|店舗ID|shop_id|int|pk||
|2|店舗名|shop_name|varchar(30)||
|3|住所|shop_add|varchar(50)||
|4|電話|tel|varchar(20)||

## 2.従業員テーブル
|No.|論理名|物理名|型|制約|NotNull|
|:--:|:--|:--|:--|:--|:--:|
|1|従業員ID|shop_id|int|pk||
|2|店舗ID|shop_id|int||〇|
|3|従業員名|emp_name|varchar(30)|

## 3.商品テーブル
|No.|論理名|物理名|型|制約|NotNull|
|:--:|:--|:--|:--|:--|:--:|
|1|商品ID|goods_id|int|pk||
|2|商品名|goods_name|varchar(50)|
|3|単価|goods_price|decimal||〇|
|4|税率ID|tax_id|varchar(20)||

## 4.レシートテーブル
|No.|論理名|物理名|型|制約|NotNull|
|:--:|:--|:--|:--|:--|:--:|
|1|レシートID|receipt_id|int|pk|
|2|店舗ID|shop_id|int||〇|
|3|日付|order_date|date|
|4|時間|order_time|time|
|5|レジ番号|register_no|int|
|6|従業員ID|emp_id|int||〇|

## 5.レシート明細テーブル
|No.|論理名|物理名|型|制約|NotNull|
|:--:|:--|:--|:--|:--|:--:|
|1|明細ID|detail_id|int|pk|
|2|レシートID|receipt_id|int||〇|
|3|商品ID|goods_id|int|
|4|購入個数|buy_quan|decimal|
|5|値引き額|discount|decimal|
|6|合計|amount|decimal|
|7|従業員ID|emp_id|int||〇|
|8|伝票番号|slip_number|varchar(30)|

## 6.支払方法テーブル
|No.|論理名|物理名|型|制約|NotNull|
|:--:|:--|:--|:--|:--|:--:|
|1|支払方法ID|payment_id|int|pk|
|2|支払方法名|payment_name|varchar(20)||

## 7.税率テーブル
|No.|論理名|物理名|型|制約|NotNull|
|:--:|:--|:--|:--|:--|:--:|
|1|税率ID|tax_id|int|pk|
|2|税率|tax_rate|varchar(20)||