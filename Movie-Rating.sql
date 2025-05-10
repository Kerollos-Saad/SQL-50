# Write your MySQL query statement below
(
    select name as results 
        -- ,count(user_id) as number_of_ratings
    from
        MovieRating
    join
        users
    using
        (user_id)
    group by
        user_id
    order by
        count(user_id) desc, name asc
    limit 
        1 )
UNION ALL
(
    select title as results
        -- ,avg(rating) as avg_rating
    from
        MovieRating
    join
        Movies
    using
        (movie_id)
    where
        created_at BETWEEN '2020-02-1' AND '2020-02-28'
    group by
        movie_id
    order by
        avg(rating) desc, title asc
    limit 
        1 )