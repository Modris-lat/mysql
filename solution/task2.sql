USE `loan-schema`;

SELECT loan_id,
principal_amount + interest_amount + fee_charges_amount + penalty_charges_amount
AS current_weekly_payment,
completed_derived 
FROM m_loan_repayment_schedule
WHERE completed_derived = 0
GROUP BY loan_id;