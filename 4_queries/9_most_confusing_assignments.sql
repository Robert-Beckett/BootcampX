SELECT assignments.id AS id,
      assignments.name AS name,
      assignments.day AS day,
      assignments.chapter AS chapter,
      COUNT(assistance_requests.*) AS total_requests
FROM assignments
  JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;


List each assignment with the total number of assistance requests with it.

Select the assignment's id, day, chapter, name and the total assistances.
Order by total assistances in order of most to least.
Expected Result:

 id  |       name       | day | chapter |total_requests 
-----+------------------+-----+---------+------------------
 424 | Ullam cumque     |  51 |      12 |           143
 423 | Culpa esse sint  |  51 |      11 |           113
  45 | Quia quasi       |   5 |       7 |            86
  50 | A rerum          |   6 |       5 |            83
 141 | Illo error dolor |  17 |       9 |            82
 ...
(424 rows)