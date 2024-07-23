CREATE DATABASE IF NOT EXISTS transactions;
use transactions;

CREATE TABLE IF NOT EXISTS transactions (
    id INT AUTO_INCREMENT PRIMARY_KEY,
    amount INT,
    description VARCHAR(255)
);

CREATE USER IF NOT EXISTS 'expense'@'%' IDENTIFIED BT 'ExpenseAPP@1';
GRANT ALL ON transactions.* TO 'expense'@'%';
FLUSH PRIVILEGES;



