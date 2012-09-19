while [ 1 = 1 ]
  do      
    wget -qO - http://hackurls.com/ascii | \
      perl -lne 'use Time::HiRes qw (sleep); 
                 m{^~\s(.*)} and 
                 print qq{$1\n} and 
                 sleep 2.8;'
done