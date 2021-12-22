-- DROP TABLE IF EXISTS children CASCADE;
-- DROP TABLE IF EXISTS childAccount CASCADE;
-- DROP TABLE IF EXISTS recent_transactions CASCADE;
-- DROP TABLE IF EXISTS requestMoney CASCADE;
-- DROP TABLE IF EXISTS approveRequestMoney CASCADE;
-- DROP TABLE IF EXISTS accountSetting CASCADE;
-- DROP TABLE IF EXISTS sendMoney CASCADE;
-- DROP TABLE IF EXISTS parents CASCADE;

-- CREATE TABLE children (
--   "id" SERIAL PRIMARY KEY,
--   "first_name" varchar,
--   "last_name" varchar,
--   "account_number" varchar,
--   "account_password" varchar,
--   "expiry_date" timestamp,
--   "start_date" date,
--   "end_date" date,
--   "active" boolean,
--   "account_balance" integer,
--   "account_cvv" integer,
--   "money_request" varchar,
--   "parent_id" varchar,
--   "permission_list" TEXT[],
--   "transaction_list" TEXT[],
--   "max_transaction" integer,
--   "bank_account_reference" varchar,
--   "text_color" varchar,
--   "card_color" varchar,
--   "background_color" varchar,
--   "header_color" varchar,
--   "updated_at" date,
--   "created_at" date DEFAULT (now())

-- );

-- CREATE TABLE childAccount (
--   "id" integer,
--   "child_id" varchar,
--   "first_name" varchar,
--   "last_name" varchar,
--   "account_number" varchar,
--   "account_balance" integer,
--   "account_cvv" integer,
--   "expiry_date" date
-- );

-- CREATE TABLE recent_transactions (
--   "id" SERIAL PRIMARY KEY,
--   "child_id" varchar,
--   "account_number" varchar,
--   "transaction_amount" integer,
--   "transaction_note" varchar,
--   "created_at" date DEFAULT (now())
-- );

-- CREATE TABLE requestMoney (
--   "id" integer,
--   "child_id" varchar,
--   "parent_id" varchar,
--   "request_note" varchar,
--   "request_amount" integer,
--   "request_number" integer,
--   "created_at" date DEFAULT (now()),
--   "decided" boolean,
--   "decision_updated_at" date DEFAULT (now())
-- );

-- CREATE TABLE approveRequestMoney (
--   "id" integer,
--   "child_id" varchar,
--   "parent_id" varchar,
--   "request_note" varchar,
--   "request_amount" integer,
--   "created_at" date DEFAULT (now()),
--   "decided" boolean,
--   "decision_updated_at" date DEFAULT (now())
-- );

-- CREATE TABLE accountSetting (
--   "child_id" varchar,
--   "parent_id" varchar,
--   "active" boolean,
--   "created_at" date DEFAULT (now())
-- );

-- CREATE TABLE sendMoney (
--   "id" integer,
--   "child_id" varchar,
--   "parent_id" varchar,
--   "send_money_note" varchar,
--   "send_amount" integer,
--   "created_at" date DEFAULT (now())
-- );

-- CREATE TABLE parents (
--   "id" SERIAL PRIMARY KEY,
--   "first_name" varchar,
--   "last_name" varchar,
--   "ewallet_account_number" varchar,
--   "ewallet_password" varchar,
--   "bank_account_number" varchar,
--   "active" boolean,
--   "street_number" integer,
--   "street" varchar,
--   "city" varchar,
--   "postal_code" varchar,
--   "phone_number" varchar,
--   "email" varchar,
--   "money_request" TEXT[],
--   "children_list" TEXT[],
--   "transaction_list" TEXT[],
--   "text_color" varchar,
--   "background_color" varchar,
--   "header_color" varchar,
--   "created_at" date DEFAULT (now()),
--   "updated_at" date
-- );



-- -- to run : \i  db/schema/01_data.sql