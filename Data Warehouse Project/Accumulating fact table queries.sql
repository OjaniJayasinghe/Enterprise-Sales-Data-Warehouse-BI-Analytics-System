ALTER TABLE FactSales
ADD
    accm_txn_create_time DATETIME NOT NULL DEFAULT GETDATE(),              -- Set on insert
    accm_txn_complete_time DATETIME NULL,                                  -- Set after txn completes
    txn_process_time_hours INT NULL;                                       -- Derived later



	--created table for the Update Data Set
	CREATE TABLE CompletedTransactions (
    txn_id INT PRIMARY KEY,
    accm_txn_complete_time DATETIME
    );
