
SELECT act_id,mov_id, role FROM movie_cast;


# 1) first question to insert all names and year from movie
SELECT mov_year,mov_title FROM movie;

# 2)

SELECT mov_year FROM movie
where mov_title LIKE 'American Beauty';

# 3)

SELECT mov_title FROM movie
where mov_year LIKE 1999;

#4)

SELECT mov_title FROM movie
where mov_year < 1998;


# 5)

SELECT reviewer.rev_name, movie.mov_title
FROM reviewer
JOIN movie ON reviewer.rev_name = movie.mov_title;


# 6)

SELECT rev_name FROM reviewer

UNION
SELECT rev_stars FROM rating
WHERE rev_stars > 7;


# 7)

SELECT mov_title FROM movie
UNION
SELECT rev_stars FROM rating
#or
#where rev_stars not like null;
where rev_stars is null;


# 8)

SELECT mov_title FROM movie
where mov_id like '%2%' or '%4%' OR '%9%'

# no time to do more questions :(


