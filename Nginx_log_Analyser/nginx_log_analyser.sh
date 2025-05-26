echo "--------------------------------------------"
echo "Top 5 IP addresses with the most requests: "
awk '{print $1 " " $9}' nginx-access.log | sort | uniq -c | sort -k1 -nr | head -n5 | awk '{print $2 " - " $1 " requests"}'
echo "--------------------------------------------"
echo "Top 5 most requested paths: "
cut -d'"' -f2 nginx-access.log | cut -d' ' -f2 | sort | uniq -c | sort -nr | head -n5 |  awk '{print $2 " - " $1 " requests"}'
echo "--------------------------------------------"
echo "Top 5 response status codes: "
awk '{print $9}' nginx-access.log | sort | uniq -c | sort -nr | head -n5 | awk '{print $2 " - " $1 " requests"}'
echo "--------------------------------------------"
echo "Top 5 user agents: "
cut -d'"' -f6 nginx-access.log | sort | uniq -c | sort -nr | head -n5 | awk '{cnt=$1; $1=""; sub(/^ +/, ""); print $0 " - " cnt " requests"}'
echo "--------------------------------------------"