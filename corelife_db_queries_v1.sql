# select users and their score
SELECT * FROM user_core_score AS ucs
INNER JOIN users AS u
	ON u.user_id = ucs.user_id;
	
# show user score w date & q_id & points for answer & user name
SELECT * FROM user_core_score AS ucs
INNER JOIN user_core_answers AS uca
	ON uca.ucs_id = ucs.ucs_id
INNER JOIN users AS u
	ON u.user_id = ucs.user_id;
	
# still need a way to auto calculate the points for each answer