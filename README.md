# Practical Bash Scripts

This repo demonstrate the basic usage of bash scripting for all level of developers. 

## Topics

**`*.log` files log data can be different depending on your applications or servers**

### Traffic Analysis Script:

This script could analyze access logs to identify:
Most frequently accessed pages
Top visitors/IP addresses
HTTP response code distribution
It could generate a report summarizing this information and highlighting any anomalies.

[Traffic Analysis Script](./traffic-analysis-script/script.sh)

### Error Log Monitor Script:

This script could regularly check error logs for specific error patterns such as 404 errors, 500 errors, etc.
It could send email alerts to administrators when certain error thresholds are exceeded or when critical errors occur frequently.


[Error Log Monitor Script](./error-log-monitor-script/script.sh)

### Security Log Analyzer:

This script could parse security logs to detect and report suspicious activities like failed login attempts, unauthorized access attempts, etc.
It could generate reports on security incidents and identify potential security threats.


### Bandwidth Usage Tracker:

This script could analyze access logs to calculate bandwidth usage for different resources (files, pages, etc.).
It could generate reports showing bandwidth consumption trends over time and identify potential hotspots or inefficiencies.


### Performance Analysis Script:

This script could analyze access logs to measure website performance metrics like response times, server load, etc.
It could generate reports identifying performance bottlenecks and suggesting optimizations.


### Log Rotation Script:

This script could automate the process of log rotation, compressing old log files, and archiving them.
It could also manage log file cleanup based on retention policies to prevent disk space issues.


### Geolocation Script:

This script could analyze access logs to extract IP addresses and map them to geographical locations.
It could generate visualizations or reports showing the distribution of website visitors across different regions.