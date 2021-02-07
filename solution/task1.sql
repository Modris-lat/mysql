USE `asset-schema`;

SELECT vehicle_make.name,
COUNT(asset.registration_no)
AS bikes_sold
FROM vehicle_make
JOIN asset
JOIN vehicle_model
ON asset.model_id = vehicle_model.id
AND vehicle_model.vehicle_make_id = vehicle_make.id
WHERE asset.registration_no IS NOT NULL
GROUP BY vehicle_make.name
HAVING COUNT(asset.registration_no) > 1000;