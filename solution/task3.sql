USE `loan-schema`;

SELECT m_loan_repayment_schedule.principal_amount + m_loan_repayment_schedule.interest_amount + m_loan_repayment_schedule.fee_charges_amount + m_loan_repayment_schedule.penalty_charges_amount
AS scheduled_amount, 
m_loan_transaction.amount 
AS payed_amount, 
m_loan_repayment_schedule.principal_amount + m_loan_repayment_schedule.interest_amount + m_loan_repayment_schedule.fee_charges_amount + m_loan_repayment_schedule.penalty_charges_amount - m_loan_transaction.amount
AS current_balance
FROM m_loan_repayment_schedule
JOIN m_loan_transaction
JOIN m_loan
ON m_loan.id = m_loan_repayment_schedule.loan_id
AND m_loan.id = m_loan_transaction.loan_id
WHERE m_loan_transaction.transaction_date = current_date()
GROUP BY m_loan_transaction.id;