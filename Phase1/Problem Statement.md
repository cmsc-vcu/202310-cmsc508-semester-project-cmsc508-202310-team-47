Problem definition and database design

	Cybersecurity is an undeniably growing field where the globe is trying day by day to defend against cyber attacks. Companies often have their own cyber teams and platforms
that conduct, run, and provide security measures to their company, information, and sensitive data. Although there are many different kinds of attacks there is often a
viable approach to prevent data loss and victimization from different threats. Virginia has recently passed a law requiring that companies report all cyber attacks. To
address this, we create a database that lists and track information regarding each specific attack within a company.

	This system provides information regarding the cyber indecent and the attack that occurred to the company. It allows users and readers to view details of the attack such as 
the type of attack, the location of the perpetrator, and the system that it affected, the significance and impact of the attack, the cyber team that responded to and
addressed the attack, as well as the software or program that first detected the attack. It will not provide information regarding the specific solution that the cyber team
implemented to resolve the attack or the specifc data that was lost or security method that was breached. 

	This database holds a significant amount of information regarding the cyber attack. Specifically, there are 5 entities. The entities include company, with attributes
name, location/district, and number of incidents; cyber team, with attributes attackID, incident manager, team members/employeeID; attack, with attributes attackID,
perpetrator, impact/significance, time, vector, and affected systems; report, with attributes time of attack, date of attack, assigned cyber team, and magnitude;
offense detector/software, with attributes attackID, name or tool used, and affected system. Through the use of this database, one will be able to look up specific
cyber attacks and the information associated with this attack. One will also be able to determine the location or IP that has the most occurrences of attacks.


20 different queries 

1. What are the top 3 perpetrating locations that conduct the most attacks
2. What are the attack IDs of the attacks that happened between 4pm-5pm
3. What 3 locations in virginia receive the most attacks
4. Display the vector of execution of attack 07
5. What are the top 10 companies that has the most attacks in Virginia?
6. What is the system that is most targeted in attacks?
7. What are the top 3 most used cyber detection tools?
8. Which company had the most SQL injection vector in the city of Richmond in the last month (highest to lowest)?
9. What are the attack IDs of all attacks that used a worm as a vector?
10. What is the vector that is most used between attackers?
11. During what 2 hour time period do the most attacks occur within the month of november.
12. Display the company names that received DDOS attacks.
13. What is the magnitude of the attacks assigned to cyber team 07
14. What systems were affected by a DDOS attack on the company Gieco?
15. Display the location of all companies that received an XSS attack.
16. What company has received the most attacks?
17. When was the most recent attack on company X?
18. What is the most targeted system by attackers?
19. Who is the incident manager of ticket 02?
20. Who are the members of the cyber teams that responded to the 5 most recent attacks?
