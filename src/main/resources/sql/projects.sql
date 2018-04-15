select * from sample.projects 
where 1=1
$if(currentUser.hasNotAnyRole('AUDITOR','ADMIN'))$ 
  and projectManager in $currentUser.subordinates$
$else$ 
 