# select users and their score
SELECT * FROM user_core_score AS ucs
INNER JOIN users AS u
	ON u.user_id = ucs.user_id;
	
# show user score w date & q_id & points for answer & user name
# do i need to knwo the points label as well as the amount of points?
SELECT * FROM user_core_score AS ucs
INNER JOIN user_core_answers AS uca
	ON uca.ucs_id = ucs.ucs_id
INNER JOIN users AS u
	ON u.user_id = ucs.user_id;
	
# create views instead!	
# still need a way to auto calculate the points for each answer
# show questions and points for each answer option
SELECT  rcq.q_id, rcq.question, rcq.points_type, rcp.pointsA_not, rcp.pointsB_only, rcp.pointsC_sometimes, rcp.pointsD_often, rcp.pointsE_most
FROM ref_core_questions AS rcq
INNER JOIN ref_core_points AS rcp
ON rcq.points_type = rcp.points_id
ORDER BY rcq.gp_order;