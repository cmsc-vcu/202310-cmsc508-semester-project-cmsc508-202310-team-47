# FinalProject-ddl.sql

## Code specifications
# 1. Complete all sections below.
# 2. Table names must MATCH EXACTLY to schemas provided.
# 3. Define primary keys in each table as appropriate;
# 4. Data types: ONLY use "int", "varchar(255)", "varchar(4096)" or "date" as appropriate.


# Section 1
# Drops all tables.  This section should be amended as new tables are added.

drop table if exists attack;
drop table if exists CompanyTeam;
drop table if exists OffenseDetector;
drop table if exists CyberTeam;
drop table if exists company;
drop table if exists report;


# Section 2
# Create company table.  This section should be amended as new tables are added.
drop table if exists company;
create table company (
company_name varchar(255) not null,
company_location varchar(255) not null,
primary key (company_name)
);

#Section 3
# Populate the company table
insert into company (company_name, company_location) values
    ("Target", "Fairfax"),
    ("Walmart", "Fairfax"),
    ("CVS", "Fairfax"),
    ("Amazon", "Gainesville"),
    ("Finra", "Richmond"),
    ("CGI", "Alexandria"),
    ("Best Buy", "Manassas"),
    ("Altria", "Richmond"),
    ("Dominion Energy", "Richmond"),
    ("Wells Fargo", "VA Beach")
    ;
    select * from company;

# Section 4
# Create CyberTeam table.  This section should be amended as new tables are added.
drop table if exists CyberTeam;
create table CyberTeam (
    team_name VARCHAR(255) not null,
    incident_manager varchar(255) not NULL,
    primary key (team_name)
    );

#Section 5
# Populate the CyberTeam table
insert into CyberTeam (team_name, incident_manager) values
    ("Red", "Joel"),
    ("Blue","Ramtin"),
    ("Green", "Abtin"),
    ("Yellow", "Rick")
    ;
select * from CyberTeam;

# Section 8
# Create OffenseDetector table.  This section should be amended as new tables are added.
drop table if exists OffenseDetector;
create table OffenseDetector (
    tool_name varchar(255) not null,
    primary key (tool_name)
);

#Section 9
# Populate the OffenseDetector table
insert into OffenseDetector (tool_name) values
    ("Syslog"),
    ("Qradar"),
    ("Splunk"),
    ("SolarWinds")
    ;
select * from OffenseDetector;

# Create CompanyTeam table.  This section should be amended as new tables are added.
drop table if exists CompanyTeam;
CREATE table CompanyTeam (
    company_name VARCHAR (255) not null,
    team_name VARCHAR (255) not null,
    tool_name varchar(255) not null,
    foreign key (company_name) REFERENCES company(company_name),
    foreign key (team_name) REFERENCES CyberTeam(team_name),
    foreign key (tool_name) REFERENCES OffenseDetector(tool_name)
);

#Section 5
# Populate the CompanyTeam table
insert into CompanyTeam (company_name, team_name, tool_name) values
    ("Target", "Green", "Syslog"),
    ("Walmart","Yellow", "Qradar"),
    ("CVS", "Yellow", "Splunk"),
    ("Amazon", "Green", "Qradar"),
    ("Finra", "Red", "SolarWinds"),
    ("CGI", "Blue", "Syslog"),
    ("Best Buy", "Red","SolarWinds" ),
    ("Altria", "Blue", "Splunk"),
    ("Dominion Energy", "Green", "Qradar"),
    ("Wells Fargo", "Green", "Splunk")
    ;
select * from CompanyTeam;



# Section 6
# Create attack tables.  This section should be amended as new tables are added.
drop table if exists attack;
create table attack (
    attack_id int not null,
    team_name VARCHAR(255) not null,
    company_name VARCHAR(255) not null,
    tool_name VARCHAR(255) not null,
    perpetrator varchar(255) not null,
    impact int not null,
    attack_date date not null,
    attack_time varchar(255) not null,
    vector_of_execution varchar(255),
    affected_systems varchar(255),
    primary key (attack_id),
    foreign key (team_name) REFERENCES CyberTeam(team_name),
    foreign key (tool_name) REFERENCES OffenseDetector(tool_name),
    foreign key (company_name) REFERENCES company(company_name)

);

#Section 7
# Populate the attack table
insert into attack (attack_id, team_name, company_name, tool_name, perpetrator, 
    impact, attack_date, attack_time, vector_of_execution, affected_systems) values
    
    (1001, "Red", "Best Buy","SolarWinds","37.152.202.155", 1, '2022-01-01', "15:30:01", "SQL Injection", "Desktop A"),
    (1002, "Green", "Amazon", "Qradar","210.145.193.54", 2, '2022-01-02', "16:30:02", "DLL Injection,", "Desktop B"),
    (1003, "Blue", "Altria","Splunk","124.15.148.96", 3, '2022-01-03', "17:30:03", "Rootkit", "Desktop C"),
    (1004, "Red","Finra" , "SolarWinds","149.143.252.93", 4, '2022-01-04', "18:30:04", "Brute Force", "Desktop D"),
    (1005, "Yellow", "CVS","Splunk","37.152.202.155", 5, '2022-01-05', "19:30:05", "Phishing Attack", "Desktop E"),
    (1006, "Blue", "CGI","Syslog","126.187.98.21", 6, '2022-01-06', "19:30:06", "SQL Injection", "Desktop F"),
    (1007, "Green", "Dominion Energy","Qradar","441.972.12.52", 7, '2022-01-07', "19:30:07", "DDOS Attack", "Desktop G"),
    (1008, "Green", "Dominion Energy","Qradar","110.173.139.128", 5, '2022-01-07', "19:45:15", "Password Attack", "Desktop E"),
    (1009, "Blue", "CGI","Syslog","107.138.24.208", 3, '2022-01-02', "15:30:00", "Cryptojacking", "Desktop D"),
    (1010, "Blue", "CGI","Syslog","103.202.115.12", 4, '2022-01-04', "22:20:10", "Password Attack", "Desktop C"),
    (1011, "BlUE", "CGI","Syslog","174.226.132.143", 2, '2022-01-06', "20:22:15", "Malware Attack", "Desktop B"),
    (1012, "Green", "Amazon","Qradar","66.27.253.158", 1, '2022-01-08', "06:30:00", "Worm", "Desktop A"),
    (1013, "Red", "Best Buy","SolarWinds","37.152.202.155", 1, '2022-01-02', "15:00:01", "SQL Injection", "Desktop B")
    ;

select * from attack;





# Section 10
# Create report table.  This section should be amended as new tables are added.
-- instead of making this report. make report from attack
-- report only needs which reportid, company, date of attack, vector of execution, impact
-- drop table if exists report;
-- create table report (
--     report_id int not NULL,
--     company_name VARCHAR(255) not NULL,
--     date_of_attack varchar(255) not null,
--     vector_of_execution varchar(255) not NULL,
--     impact int not null,
--     primary key (report_id),
--     foreign key(company_name) REFERENCES company(company_name),

-- );

-- #Section 11
-- # Populate the report table

-- insert into report (company_name, report_id, attack_id, time_of_attack,date_of_attack, team_name, impact) values
--     ("Target", 3001, 1001, "12/6/2022", "05:23", 2001, 2),
--     ("Walmart", 3002, 1002, "12/5/2022", "12:30", 2002, 1),
--     ("CVS", 3003, 1003, "12/5/2022", "17:10", 2003, 5),
--     ("Amazon", 3004, 1004, "12/3/2022", "10:08", 2004, 3),
--     ("Finra", 3005, 1005, "12/7/2022", "22:30", 2005, 4),
--     ("CGI", 3006, 1006, "12/11/2022", "23:30", 2006, 5),
--     ("Best Buy", 3007, 1007, "12/22/2022", "17:30", 2007, 1)

--     ;
-- select * from report;
    drop table if exists report;
    CREATE table report
    select 
        attack_id as report_id,
        company_name,
        attack_date,
        vector_of_execution,
        impact
    from 
        attack
        ;
SELECT * from report;


#Section 11
#Create the login page for the website

drop table if exists adminusers;
create table adminusers (
    username VARCHAR(255) not NULL,
    password varchar(255) not null,
    role varchar(255) not null,
    primary key (username)
);

#Section 12
#Insert into the adminusers table
insert into adminusers (username,password,role) values
    ('admin', 'password', 'admin'),
    ('manager', 'password', 'manager');

