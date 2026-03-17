## Day 4 Log Grepping

## Objective 
Authentication logs to identify repeated failed SSH login attempts and detect potential brute force attacks.

## Tools Used 
- grep
- awk
- sort
- uniq

## Methdology 
- EXtract failed login IPs from /var/log/auth.log
- Count the  number of failed attempts per IP
- Sort in descending order to get the top of attackers

## Observations
- Different port to every login attempt
- Few number count to each port attempting login

## SOC Analyst Insight
- Counting failed login attempts helps prioritize alerts
- We Analyst can feed this data into automated alerting or firewall rules

## NOTE
- This was done on a practical machine to help visualize and understanding today's activity. Therefore only the localhost attempted logins but could bring out different ports and it's number of counts. As you can see in the screenshot, the port is only given and the number of times it attempted logins
