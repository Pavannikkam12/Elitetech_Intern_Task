
-- TASK 4: DATABASE BACKUP AND RECOVERY (MYSQL)

-- ✅ BACKUP: Export Process (via MySQL Workbench)
-- GUI steps:
-- 1. Go to Server > Data Export
-- 2. Select the 'sql_internship' database
-- 3. Choose 'Export to Self-Contained File'
-- 4. Save as 'sql_internship_backup.sql'
-- 5. Click 'Start Export' to generate backup

-- ✅ RECOVERY: Restore Process (via MySQL Workbench)
-- 1. Create a new database for recovery
CREATE DATABASE sql_internship_recovered;

-- 2. Go to Server > Data Import
-- 3. Choose 'Import from Self-Contained File'
-- 4. Select the file: sql_internship_backup.sql
-- 5. Set Default Target Schema as: sql_internship_recovered
-- 6. Click 'Start Import'

-- ✅ VERIFICATION
-- After import, check restored data
USE sql_internship_recovered;
SELECT * FROM Sales;
