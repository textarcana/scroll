pwgen -A0C | \
    head -n1 | \
    cut -d' ' -f1-3 | \
    xargs -I @ wordplay @ -f /opt/local/share/wordplay/words721.txt |  \
    perl -lne "use Time::HiRes qw (sleep); 
               s{^\s*[0-9]+\.\s+}{} and 
               print and 
               sleep 2.8;"