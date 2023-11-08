USE pracdb1;

ALTER TABLE board
MODIFY COLUMN writeDate DATETIME DEFAULT current_timestamp;