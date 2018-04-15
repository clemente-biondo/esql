select * 
  from sample.project p, queries.list_workers_que w
 where p.manager= w.worker_id
