select  origin, dest,max(distance) from flights.flights
order by origin,dest ;

ANS: maximum distance was 4983
# 2 what are the different number of engines
SELECT  distinct engines FROM PLANES; 
 ANS: 2,3,4
 
SELECT  engines,manufacturer,max(seats) as total FROM PLANES
group by engines,manufacturer
order by total desc; 
ANS: BOEING has 330 seats

# 3 Show the total number of flights;
select count(flight) from flights;

ANS: count=2286 flights

#4 total number of flights by airline(carrier)

select carrier,count(flight) from flights.flights
group by carrier; 

#5 Show all of the airlines, ordered by descending number of fights
select carrier, count(flight) AS Total from flights.flights
group by carrier
order by Total desc; 

#6 Show all of the airlines, ordered by descending number of top 5 fights
select carrier, count(flight) AS Total from flights.flights
group by carrier
order by Total desc
limit 5; 

#7 Show top 5 airlines by number if flights of distance >= 1000 miles
select carrier, count(flight) AS Total,distance from flights.flights
where distance >= 1000
group by carrier
order by Total desc
limit 5; 

#8 question- total distance by carrier in 2013 grouped by carrier in descending order
select year,carrier,sum(distance) AS total_Distance from flights
group by year,carrier
order by total_Distance desc;
