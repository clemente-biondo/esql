select * 
  from sample.worker
 where 1=1
   {and firstname like '%' || UPPER(:fn?) || '%' }   
   {and lastname like '%' || UPPER(:ln?) || '%' }