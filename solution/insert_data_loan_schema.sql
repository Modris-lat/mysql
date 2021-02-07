USE `loan-schema`;

-- -----------------------------------------------------
-- Table `loan-schema`.`m_loan`
-- -----------------------------------------------------
INSERT INTO m_loan (account_no, disbursedon_date)
VALUES ('account1', current_date()), 
('account2', current_date());

-- -----------------------------------------------------
-- Table `loan-schema`.`m_loan_repayment_schedule`
-- -----------------------------------------------------
INSERT INTO m_loan_repayment_schedule (loan_id, duedate, principal_amount, interest_amount, fee_charges_amount, penalty_charges_amount)
VALUES (1, '2021-2-01', 200, 24.5, 5.6, 1.0), 
(1, '2021-2-01', 200, 24.5, 5.6, 1.0), 
(2, '2021-1-10', 200, 24.5, 5.6, 1.0),
(2, '2021-1-10', 200, 24.5, 5.6, 1.0), 
(2, '2021-1-10', 200, 24.5, 5.6, 1.0, 1);

-- -----------------------------------------------------
-- Table `loan-schema`.`m_loan_transaction`
-- -----------------------------------------------------
INSERT INTO m_loan_transaction (loan_id, is_reversed, transaction_date, amount)
VALUES (1, 0, '2021-02-01', 206), 
(1, 1, current_date(), 150), 
(2, 1, current_date(), 195), 
(2, 0, '2021-02-02', 206);