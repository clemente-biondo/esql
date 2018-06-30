select * 
  from sample.worker
 where firstname like '%' || UPPER(:fn) || '%'  and lastname like '%' || UPPER(:ln) || '%' 