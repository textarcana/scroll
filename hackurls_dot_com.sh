while [ 1 = 1 ]
  do 
    wget -qO - http://hackurls.com/ascii | \
      perl -lpe 'use Time::HiRes qw (sleep); 
                 m{^~} and 
                 sleep 2.8;'
done