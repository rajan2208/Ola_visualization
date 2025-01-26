use ola;
#1. Retrieve all successful bookings:
create view Successful_Booking As
select * from `booking 20000`
where Booking_Status = 'Success';
#1. Retrieve all successful bookings:
select * from Successful_Booking;

#2. Find the average ride distance for each vehicle type:
create view ride_distance_for_each_vehicle as
SELECT Vehicle_Type, AVG(Ride_Distance)
as avg_distance FROM `booking 20000`
GROUP BY Vehicle_Type;
#2. Find the average ride distance for each vehicle type:
SELECT *FROM ride_distance_for_each_vehicle;

#3. Get the total number of cancelled rides by customers:
Create View cancelled_rides_by_customers As
SELECT COUNT(*) FROM `booking 20000`
WHERE Booking_Status = 'cancel by customer';
#3. Get the total number of cancelled rides by customers:
select * from cancelled_rides_by_customers;
#4. List the top 5 customers who booked the highest number of rides:
Create View Top_5_Customers As
SELECT Customer_ID, COUNT(Booking_ID) as total_rides
FROM `booking 20000`
GROUP BY Customer_ID
ORDER BY total_rides DESC LIMIT 5;
#4. List the top 5 customers who booked the highest number of rides:
select * from top_5_customers;
#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
create view Rides_canceled_by_drivers_p_c_issues as
select count(*) from `booking 20000`
where canceled_rides_by_driver= 'Personal & car realted issue';
#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
select * from  Rides_canceled_by_drivers_p_c_issues;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
create view Max_Min_Driver_Rating as
select max(driver_ratings) as max_rating,
min(driver_ratings) as min_rating
from `booking 20000` where vehicle_type='prime sedan';
#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
select * from  Max_Min_Driver_Rating;

#7. Retrieve all rides where payment was made using UPI:
create view UPI_Payment as
 select * from `booking 20000`
 where payment_method='UPI';
 #7. Retrieve all rides where payment was made using UPI:
 select * from UPI_Payment;
 #8. Find the average customer rating per vehicle type:
 create view AVG_Cust_Rating as
select vehicle_type, avg(customer_rating) as avg_customer_rating
from `booking 20000`
group by Vehicle_type;
select * from AVG_Cust_Rating;

#9. Calculate the total booking value of rides completed successfully:
create view total_successful_ride_value as
select sum(Booking_value) as total_successful_ride_value
from `booking 20000`
where 'booking_status' = 'suceess';
#9. Calculate the total booking value of rides completed successfully:
select * from total_successful_ride_value;

#10. List all incomplete rides along with the reason:
Create View Incomplete_Rides_Reason As
SELECT Booking_ID, Incomplete_Rides_Reason
FROM `booking 20000`
WHERE Incomplete_Rides = 'Yes';
select * from Incomplete_Rides_Reason;

#1. Retrieve all successful bookings:
select * from Successful_Booking;

#2. Find the average ride distance for each vehicle type:
Select * from ride_distance_for_each_vehicle;

#3. Get the total number of cancelled rides by customers:
Select * from cancelled_rides_by_customers;

#4. List the top 5 customers who booked the highest number of rides:
Select * from Top_5_Customers;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
select * from  Rides_canceled_by_drivers_p_c_issues;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
Select * from Max_Min_Driver_Rating;

#7. Retrieve all rides where payment was made using UPI:
Select * from UPI_Payment;

#8. Find the average customer rating per vehicle type:
Select * from AVG_Cust_Rating;

#9. Calculate the total booking value of rides completed successfully:
Select * from total_successful_ride_value;

#10. List all incomplete rides along with the reason:
Select * from Incomplete_Rides_Reason;

use ola;
