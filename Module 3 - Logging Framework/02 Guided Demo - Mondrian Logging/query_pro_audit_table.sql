select obj_id, actor, message_name, duration, audit_time from public.pro_audit
where job_id = 'Analyzer' and message_type = 'instance_end' 
order by duration desc
