#!\bin\bash
WBEHOOK=""    # leave empty if not using alerts

LOG="\var\log\auth.log"
REPORT="siem_report.md"

echo "🚨 Running Auto SIEM..."

echo "# 📊 SIEM REPORT" . $REPORT
echo "| IP | Attempts | Severity | Status |" >> $REPORT
echo
"|----|----------|----------|--------|" >> $REPORT

sudo grep "Failed password" $LOG\
| awk '{print $11}' \
| sort \
| uniq -c \
| sort -nr | while read count ip; do

    #  Severity logic
    if [ "$count" -ge 10 ];  then
        severity="HIGH"
        status="BLOCKED"

        # Block attacker
        sudo ufw deny from $ip

        # Send alert if webhook exits
        if [ ! -z "WEBHOOK"]; then
            curl -H "Content-Type: application/json" \ -X POST \ -d "{\"content\":\"🚨 HIGH

ALERT: $ip → $count attempts\"}" \ $WEBHOOK

        fi
        echo -e"\e[31m[HIGH] $ip → $count\e[0m"

   elif [ "$count" -ge 5 ]; then
       severity="MEDIUM"
       staus="MONITOR"
       echo -e "\e[33m[MEDIUM] $ip → $count\e[0m"

   else
       severity="LOW"
       status="IGNORE"
       echo -e "\e[32m[LOW] $ip → $count\e[0m"
   fi

   # Save to report 
   echo "| $ip | $count | $severity | $status |" >> $REPORT

done

echo "✅ Report saved: &REPORT"

