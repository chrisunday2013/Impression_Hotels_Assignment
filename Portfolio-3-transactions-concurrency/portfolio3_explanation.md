# Portfolio 3: Transactions and Concurrency

## 1. Introduction

This portfolio demonstrates how PostgreSQL manages database transactions, transaction isolation and concurrent database operations. The practical implementation uses the Impression Hotel database, developed for the Sunrise Hotel Management System case study.

The experiments were performed using PostgreSQL 18 and pgAdmin 4.

## 2. Transaction Commit

A transaction is a group of database operations treated as one logical unit.

The COMMIT command permanently saves changes made during a transaction.

In this experiment, a guest record was inserted into the guests table and committed successfully. The result screenshot provides evidence of the operation.

**Evidence:** `transaction_commit.sql` and `transaction_commit_result.png`.

## 3. Transaction Rollback

The ROLLBACK command cancels changes made during an uncommitted transaction.

This experiment demonstrates that changes can be reversed before they are permanently saved.

**Evidence:** `transaction_rollback.sql` and `transaction_rollback_result.png`.

## 4. Transaction Isolation

Transaction isolation controls how transactions interact when multiple users access the database simultaneously.

The practical exercise used PostgreSQL's READ COMMITTED isolation level.

The experiment recorded a guest count of 6 before another transaction inserted and committed a new guest.

After the new transaction committed, the subsequent query returned 7 guests.

This demonstrates that READ COMMITTED allows a transaction to see data committed by other transactions before its next query begins.

**Evidence:** `transaction_isolation.sql`, `transaction_isolation_guest_count.png` and `transaction_isolation_result.png`.

## 5. Concurrency Testing

Concurrency occurs when multiple database sessions access or modify data at the same time.

Two database sessions were used to demonstrate concurrent access to the guests table.

- Session 1 checked the number of guest records before the new insertion.
- Session 2 inserted a new guest record and committed the transaction.
- Session 1 executed another query and observed the updated guest count.

The guest count changed from 6 to 7.

This practical exercise demonstrates how PostgreSQL handles concurrent database operations under READ COMMITTED isolation.

**Evidence:** `concurrency_read_committed.sql`, `concurrency_session2_insert.sql`, `concurrency_session1_before.png`, `concurrency_session2_insert_commit.png` and `concurrency_read_committed_result.png`.

## 6. Conclusion

The practical exercises demonstrate the importance of transaction management and concurrency control in a hotel reservation database.

COMMIT saves database changes, ROLLBACK reverses uncommitted changes, and transaction isolation determines how concurrent transactions access data.

These features help maintain database consistency and reliability when multiple hotel employees use the system simultaneously.