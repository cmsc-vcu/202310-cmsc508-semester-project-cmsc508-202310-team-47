-- Query 1
-- What is the perpetrating location that conducts the most attacks?

drop view if exists perpetrator_location;
CREATE VIEW perpetrator_location AS
SELECT perpetrator,
    COUNT(perpetrator) AS 'number of attacks'
FROM attack
GROUP BY perpetrator
ORDER BY 'number of attacks' DESC
LIMIT 1;
select * from perpetrator_location;


-- Query 2
--What is the exact time of the attacks that happened between 4pm-5pm?

CREATE VIEW attackIDS AS
SELECT
    attack_time
from 
    attack
where 
    attack_time BETWEEN "16:00:00" and "17:00:00"
ORDER BY 
    attack_id ASC 
;
select *  from attackIDS;


-- Query 3
--How many records are in the Offense Detector table?

drop view if exists recordsOffenseDetector;
CREATE VIEW recordsOffenseDetector AS
select
     COUNT(*) from OffenseDetector;
select * from recordsOffenseDetector;

-- Query 4
-- How many records are in the Attack table?

drop view if exists recordsInAttack;
CREATE VIEW recordsInAttack AS
select 
    COUNT(*) from attack;
select * from recordsInAttack;

-- Query 5
-- What are the top 3 companies that has the most attacks in Virginia?

drop view if exists top3companies;
CREATE view top3companies AS
SELECT
    company_name,
    COUNT(company_name) AS 'number of attacks'
FROM 
    attack
GROUP BY 
    company_name
ORDER BY 
    'number of attacks' DESC
LIMIT 
    3;
select * from top3companies;

-- Query 6
-- Which company has the highest number of attacks?

drop view if exists mostFrequent;
CREATE view mostFrequent AS
SELECT
    company_name
FROM 
    attack
GROUP BY
    company_name
ORDER BY
    COUNT (company_name) desc
limit 1
;
select * from mostFrequent;
    

-- Query 7
-- What all companies does Red Team work for?

drop view redTeamWork;
CREATE view redTeamWork AS
select 
    company_name
 from CompanyTeam
 where 
    team_name = 'Red'
 ;
 SELECT * from redTeamWork;


-- Query 8
-- Which company had the most SQL injection vector in the city of Richmond in the last month (highest to lowest)?

drop view if exists SQLinjection;
CREATE view SQLinjection AS
SELECT
    company_name
FROM
    attack
GROUP BY
    company_name
ORDER BY
    COUNT(vector_of_execution) DESC
LIMIT
    1;
select * from SQLinjection;

-- Query 9
-- What are the attack IDs of all attacks that used a worm as a vector?

drop view if exists wormAttackID;
CREATE view wormAttackID AS
SELECT
    attack_id
FROM
    attack
WHERE
    vector_of_execution = "Worm"
;
select * from wormAttackID;

-- Query 10
-- What is the vector that is most used between attackers?

drop view if exists frequentVector;
CREATE view frequentVector AS
SELECT
    vector_of_execution
from 
    attack
GROUP BY
    vector_of_execution
ORDER BY
    COUNT (vector_of_execution) desc
LIMIT
    1
;
select * from frequentVector;

    
-- Query 11
-- display the date and time of each attack on CgI

drop view if exists timePeriod;
CREATE view timePeriod AS
SELECT 
    attack_date,
    attack_time
FROM
    attack 
WHERE
    company_name = 'CGi'
ORDER BY
    attack_time ASC 
;
select * from timePeriod;
    

-- Query 12
-- Display the OffenseDetector and company name of each company that only has 1 attack

drop view if exists offenseDetectorOfMostAttacks;
CREATE view offenseDetectorOfMostAttacks AS
select 
    attack.company_name,
    attack.tool_name,
    COUNT (*)
FROM 
    attack
INNER JOIN 
    CompanyTeam ON attack.company_name = CompanyTeam.company_name
GROUP BY
    attack.tool_name,
    attack.company_name
HAVING
    COUNT (*)  = 1
;
select * from offenseDetectorOfMostAttacks;

-- Query 13
-- What  company/companies had the highest impact?

drop view if exists companyHighestImpact;
create view companyHighestImpact AS
SELECT
    company_name,
    impact
FROM 
    attack
GROUP BY
    company_name, impact
ORDER BY
    impact DESC
LIMIT 1
;
select * from companyHighestImpact;
    

-- Query 14
-- What systems were affected by a DDOS attack on the company Domminion Energy?

drop view if exists affectedSystemDDOs;
create view affectedSystemDDOs AS
SELECT  
    affected_systems
FROM
    attack 
WHERE
1=1
And company_name = 'Dominion Energy'
and vector_of_execution = 'DDOS Attack'
;
select * from affectedSystemDDOs;

-- Query 15
-- Display the location of all companies that received an SQL Injection.

drop view if exists companySQLLocation;
CREATE view companySQLLocation AS
SELECT
    distinct company_location
FROM (attack JOIN
    company ON attack.company_name = company.company_name)
WHERE 
    vector_of_execution = 'SQL Injection'
ORDER BY
    company_location ASC

    ;
SELECT * from companySQLLocation;


-- Query 16
-- What all companies does Team Green work for?

drop view if exists TeamGreen;
CREATE view TeamGreen AS
SELECT
    company_name
from 
    CompanyTeam
where 
    team_name = 'Green'
ORDER BY
    company_name ASC
    ;
select * from TeamGreen;


-- Query 17
-- Return the Company name, time, and dates of all attack

drop view if exists mostRecentAttack
CREATE view mostRecentAttack AS
SELECT 
    company_name,
    attack_date,
    attack_time
from
    attack 
ORDER BY
    company_name ASC,
    attack_date ASC
;
select * from mostRecentAttack;


--IMPLEMENT TRIGGERS

-- Query 18
-- Report for the Company CGI?

select *
from report
WHERE company_name = 'CGI'
;


-- Query 19
-- Who is the incident manager of ticket 02?



-- Query 20
-- Who are the members of the cyber teams that responded to the 5 most recent attacks?