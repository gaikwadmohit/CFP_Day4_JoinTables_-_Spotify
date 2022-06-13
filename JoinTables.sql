

create database jointables;
use jointables;


CREATE TABLE members (
    member_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    PRIMARY KEY (member_id)
);

CREATE TABLE committees (
    committee_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    PRIMARY KEY (committee_id)
);

INSERT INTO members(name)
VALUES('John'),('Jane'),('Mary'),('David'),('Amelia');

INSERT INTO committees(name)
VALUES('John'),('Mary'),('Amelia'),('Joe');


SELECT * FROM members;
SELECT * FROM committees;

SELECT * from members
INNER JOIN committees ON
committee_id=member_id ;


SELECT * FROM members;
SELECT * FROM committees;

SELECT * from members
left JOIN committees ON
committee_id=member_id ;


SELECT * FROM members;
SELECT * FROM committees;

SELECT * from members
right JOIN committees ON
committee_id=member_id ;




SELECT members.member_id,committees.committee_id from members
cross JOIN committees;


SELECT * FROM members;
SELECT * FROM committees;
