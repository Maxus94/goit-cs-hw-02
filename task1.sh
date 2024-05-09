sites=("https://google.com" "https://facebook.com" "https://twitter.com")

filename="check.log"

> $filename

for site in "${sites[@]}"
do
    if curl -s -L --head --request GET $site | grep "HTTP/1.1 200 OK"
    then
        echo "$site is up" >> "$filename"
    else
        echo "$site is down" >> "$filename"
    fi    
done
echo "Result is written to $filename"