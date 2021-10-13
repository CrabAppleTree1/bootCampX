SELECT cohorts.name as cohort, avg(completed_at - started_at) as avg_assist_time
from assistance_requests
join students on students.id = assistance_requests.student_id
join cohorts on cohorts.id = cohort_id
group by cohort
order by avg_assist_time;
