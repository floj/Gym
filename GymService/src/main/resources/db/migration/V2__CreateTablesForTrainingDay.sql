CREATE TABLE training_day
(
    id         serial not null primary key,
    type       text   not null,
    created_at date   not null
);

INSERT INTO training_day (type, created_at)
VALUES ('Pull', current_date),
       ('Legs', current_date);


CREATE TABLE day_exercise
(
    id     serial not null primary key,
    name   text   not null,
    day_id int    not null references training_day (id)
);

INSERT INTO day_exercise (name, day_id)
VALUES ('Squat', 1),
       ('Pull up', 1);


CREATE TABLE exercise_set
(
    id              serial not null primary key,
    repetition      int    not null,
    day_exercise_id int    not null references day_exercise (id)
);

INSERT INTO exercise_set (repetition, day_exercise_id)
VALUES (7, 1),
       (8, 1);