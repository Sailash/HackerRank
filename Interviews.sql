select a.contest_id, hacker_id, name,
sum(d.total_submissions),
sum(d.total_accepted_submissions),
sum(e.total_views),
sum(e.total_unique_views)
from  Contests a  left join  Colleges b on a.contest_id=b.contest_id
left join Challenges c on b.college_id=c.college_id
left join (select challenge_id ,sum(total_submissions) as total_submissions ,sum(total_accepted_submissions) as total_accepted_submissions from Submission_Stats  group by challenge_id) d 
on c.challenge_id=d.challenge_id
left join (select challenge_id, sum(total_views) as total_views,sum(total_unique_views) as total_unique_views from View_Stats group by challenge_id) e 
on c.challenge_id=e.challenge_id
group by a.contest_id, hacker_id, name
having sum(d.total_submissions)>0 or sum(d.total_accepted_submissions)>0 or sum(e.total_views)>0 or sum(e.total_unique_views)>0
order by contest_id
