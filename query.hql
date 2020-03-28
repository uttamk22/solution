CREATE TABLE IF NOT EXISTS matches
(id int, season int, city string, `date` date, team1 string, team2 string, toss_winner string, toss_decision string, result string, dl_applied int, winner string, win_by_runs int, win_by_wickets int, player_of_match string, venue string, umpire1 string, umpire2 string, umpire3 string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
STORED AS TEXTFILE 
tblproperties ("skip.header.line.count"="1");

load data local inpath 'matches.csv' OVERWRITE INTO TABLE matches;

CREATE TABLE IF NOT EXISTS deliveries
(match_id int, inning int, batting_team string, bowling_team string, `over` int, ball int, batsman string, non_striker string, bowler string, is_super_over int, wide_runs int, bye_runs int, legbye_runs int, noball_runs int, penalty_runs int, batsman_runs int, extra_runs int,	total_runs int, player_dismissed string, dismissal_kind string, fielder string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
STORED AS TEXTFILE 
tblproperties ("skip.header.line.count"="1");

load data local inpath 'deliveries.csv' OVERWRITE INTO TABLE deliveries;
