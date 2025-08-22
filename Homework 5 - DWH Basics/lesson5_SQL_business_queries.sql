SELECT
	track_dim.track_name
	COUNT(fact_play_event.play_event_id) AS times_played
FROM fact_play_event
JOIN track_dim ON fact_play_event.track_id=track_dim.track_id
JOIN date_dim ON fact_play_event.date_id=track_dim.date_id
WHERE date_dim.date_timestamp = NOW() - INTERVAL '1' DAY
GROUP BY track_name
ORDER BY times_played DESC
LIMIT 10;

--Возвращает информацию о 10 самых популярных треков за прошедшие сутки относительно настоящего момента
--Returns info on the 10 most popular tracks for the past day relative to present moment

SELECT 
	track_dim.track_genre
	COUNT(fact_play_event.play_event_id) AS times_played
FROM fact_play_event
JOIN track_dim ON fact_play_event.track_id=track_dim.track_id
JOIN user_dim ON fact_play_event.user_id=user_dim.user_id
WHERE user_dim.user_country = 'Belarus'
GROUP BY track_genre
ORDER BY times_played DESC
LIMIT 10;

--Возвращает информацию о 10 самых популярных жанров в Беларуси за всё время исходя из количества прослушиваний
--Returns info on the 10 most popular genres in Belarus of all time based on listens count

SELECT
	date_dim.date_time_of_day,
	COUNT(fact_play_event.play_event_id) AS times_played
FROM fact_play_event
JOIN date_dim ON fact_play_event.date_id=date_dim.date_id
GROUP BY date_dim.date_time_of_day
ORDER BY times_played DESC;

--Возвращает информацию о том, в какое время суток пользователи наиболее активны и слушают больше всего музыки
--Returns info on what time of day users are most active and listen to more music

SELECT
	user_dim.user_subscription_plan,
	COUNT fact_play_event.play_event_id) AS times_played,
	COUNT(DISTINCT user_dim.user_id) AS users
FROM fact_play_event
JOIN user_dim ON fact_play_event.user_id=user_dim.user_id
GROUP BY user_dim.user_subscription_plan
ORDER BY times_played;

--Сортировка пользователей по типу подписки для выявления корреляции между активностью и наличием у них платной подписки
--Sorting users by subsription plan to identify correlation between user activity and them having a paid subscription