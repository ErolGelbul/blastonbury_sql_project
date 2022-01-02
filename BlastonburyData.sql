
                 -- Agent (Agent_no, Given_name, Family_name) 
INSERT INTO Agent VALUES ( 2374, 'Junior', 'Parraman' );
INSERT INTO Agent VALUES ( 9123, 'Grace', 'Leeman' );
INSERT INTO Agent VALUES ( 7271, 'Sunil', 'Malik' );
INSERT INTO Agent VALUES ( 1474, 'John', 'Yang');
INSERT INTO Agent VALUES ( 1199, 'Claire', 'Lascayne');

                 -- Band (Name, Description, Agent_No*) 
INSERT INTO Band VALUES ( 'Castille', 'We play the best music', 1199);
INSERT INTO Band VALUES ( 'The Killers', 'The much-travelled Vegas crew who are recognised as one of the biggest rock acts in the world' , 1474);
INSERT INTO Band VALUES ( 'Bastille', 'Come on, rock', 7271);
INSERT INTO Band VALUES ( 'Break', 'Do not break your heart', 2374);
INSERT INTO Band VALUES ( 'Red', 'Red is the best colour', 9123);
INSERT INTO Band VALUES ( 'Rorokoro', 'We are happy', 7271);
INSERT INTO Band VALUES ( 'Blue Pears', 'It is a good show', 2374);

                --Stage (Stage_no, Stage_Name, Capacity)
INSERT INTO Stage VALUES ( '1', 'Spartan' , 9000);
INSERT INTO Stage VALUES ( '2', 'John Peel'  , 12000);
INSERT INTO Stage VALUES ( '3', 'Harvard'  , 5000);
INSERT INTO Stage VALUES ( '4', 'Cambridge'  , 8500);

                -- Member (Member_ID, Given_name, Family_name, DOB, job_type, Band_Name*) 
INSERT INTO Member VALUES ( 'eg18aba17062941' , 'Erol' , 'Gelbul', TO_DATE('13/06/1998', 'DD/MM/YYYY'), 'Student', 'Castille' );   
INSERT INTO Member VALUES ( '100001' , 'Sandy' , 'Michelle', TO_DATE('22/11/1961', 'DD/MM/YYYY'), 'Sound', 'The Killers' ); 
INSERT INTO Member VALUES ( '100002' , 'Nick' , 'Krompton', TO_DATE('19/07/1971', 'DD/MM/YYYY'), 'Tech', 'The Killers' ); 
INSERT INTO Member VALUES ( '100003' , 'Nicole' , 'Anders', TO_DATE('1/12/1986', 'DD/MM/YYYY'), 'Tech', 'Bastille' ); 
INSERT INTO Member VALUES ( '100004' , 'Terry' , 'Crews', TO_DATE('12/01/1977', 'DD/MM/YYYY'), 'Sound', 'Castille' ); 
INSERT INTO Member VALUES ( '100005' , 'Barrack' , 'Obama', TO_DATE('10/04/1979', 'DD/MM/YYYY'), 'Utility', 'Red' ); 
INSERT INTO Member VALUES ( '100006' , 'Jake' , 'Trump', TO_DATE('22/01/1977', 'DD/MM/YYYY'), 'Organization', 'Rorokoro' );
INSERT INTO Member VALUES ( '100007' , 'Leon' , 'Rump', TO_DATE('21/04/1965', 'DD/MM/YYYY'), 'Sound', 'Castille' );
INSERT INTO Member VALUES ( '100008' , 'Stuart', 'Chris', TO_DATE('27/05/1965', 'DD/MM/YYYY'), 'Tech', 'Rorokoro' );
INSERT INTO Member VALUES ( '100009' , 'Michael', 'Jones', TO_DATE('11/02/1965', 'DD/MM/YYYY'), 'Organization', 'Blue Pears' );
INSERT INTO Member VALUES ( '100010' , 'Chip', 'McGrady', TO_DATE('12/01/1965', 'DD/MM/YYYY'), 'Tech', 'Castille' );
INSERT INTO Member VALUES ( '100011' , 'Talia' , 'Roberts', TO_DATE('13/01/1965', 'DD/MM/YYYY'), 'Sound', 'Blue Pears' );
INSERT INTO Member VALUES ( '100012' , 'Ian' , 'Rex', TO_DATE('14/12/1965', 'DD/MM/YYYY'), 'Organization', 'Castille' );
INSERT INTO Member VALUES ( '100013' , 'Grey' , 'Kelly', TO_DATE('15/01/1965', 'DD/MM/YYYY'), 'Tech', 'Rorokoro' );
INSERT INTO Member VALUES ( '100014' , 'Clyde' , 'Preece', TO_DATE('16/05/1965', 'DD/MM/YYYY'), 'Sound', 'Rorokoro' );
INSERT INTO Member VALUES ( '100015' , 'Liam' , 'Grey', TO_DATE('17/02/1965', 'DD/MM/YYYY'), 'Utility', 'Rorokoro' );
INSERT INTO Member VALUES ( '100016' , 'Coren' , 'Orlands', TO_DATE('18/09/1965', 'DD/MM/YYYY'), 'Organization', 'Castille' );
INSERT INTO Member VALUES ( '100017' , 'Dillon' , 'Cree', TO_DATE('11/10/1965', 'DD/MM/YYYY'), 'Utility', 'Red' );
INSERT INTO Member VALUES ( '100018' , 'Sally' , 'Mar', TO_DATE('23/11/1965', 'DD/MM/YYYY'), 'Sound', 'Red' );
INSERT INTO Member VALUES ( '100019' , 'Dan' , 'Hernandez', TO_DATE('21/12/1965', 'DD/MM/YYYY'), 'Sound', 'Red' );
INSERT INTO Member VALUES ( '100020' , 'Pierre' , 'Marsh', TO_DATE('22/02/1965', 'DD/MM/YYYY'), 'Sound', 'The Killers' );
INSERT INTO Member VALUES ( '100021' , 'Grant' , 'Jeysen', TO_DATE('27/04/1965', 'DD/MM/YYYY'), 'Utility', 'Castille' );
INSERT INTO Member VALUES ( '100022' , 'Ludmila' , 'Askeneza', TO_DATE('30/03/1965', 'DD/MM/YYYY'), 'Sound', 'Bastille' );
INSERT INTO Member VALUES ( '100023' , 'Brain' , 'Took', TO_DATE('11/02/1965', 'DD/MM/YYYY'), 'Sound', 'Bastille' );
INSERT INTO Member VALUES ( '100024' , 'Simmien' , 'Lagrange', TO_DATE('14/01/1965', 'DD/MM/YYYY'), 'Tech', 'Blue Pears' );
INSERT INTO Member VALUES ( '100025' , 'Lester' , 'Jones', TO_DATE('16/07/1965', 'DD/MM/YYYY'), 'Organization', 'Blue Pears' );
INSERT INTO Member VALUES ( '100026' , 'Manesh' , 'Kumar', TO_DATE('18/05/1965', 'DD/MM/YYYY'), 'Sound', 'Castille' );



             -- Performance (PerformanceID, Stage_No*, Band_Name*, Date_Time)
INSERT INTO Performance VALUES ( 'A34GGA' , '1' , 'Castille', TO_DATE('13/12/2019 20:00', 'DD/MM/YYYY HH24:MI') );
INSERT INTO Performance VALUES ( '3ISWQA' , '2' , 'The Killers', TO_DATE('13/12/2019 21:00', 'DD/MM/YYYY HH24:MI') );
INSERT INTO Performance VALUES ( 'LSD415' , '3' , 'Bastille', TO_DATE('13/12/2019 22:00', 'DD/MM/YYYY HH24:MI') );
INSERT INTO Performance VALUES ( 'YSADF1' , '4' , 'Blue Pears', TO_DATE('13/12/2019 21:00', 'DD/MM/YYYY HH24:MI') );
INSERT INTO Performance VALUES ( '9SDKYE' , '1' , 'Rorokoro', TO_DATE('14/12/2019 20:00', 'DD/MM/YYYY HH24:MI') );
INSERT INTO Performance VALUES ( 'IIAS91' , '2' , 'Castille', TO_DATE('14/12/2019 20:00', 'DD/MM/YYYY HH24:MI') );
INSERT INTO Performance VALUES ( 'ASDI19' , '3' , 'The Killers', TO_DATE('14/12/2019 21:00', 'DD/MM/YYYY HH24:MI') );
INSERT INTO Performance VALUES ( '245YSQ' , '1' , 'Bastille', TO_DATE('15/12/2019 20:00', 'DD/MM/YYYY HH24:MI') );
INSERT INTO Performance VALUES ( '831DFG' , '2' , 'Break', TO_DATE('15/12/2019 21:00', 'DD/MM/YYYY HH24:MI') );
INSERT INTO Performance VALUES ( 'FH2EF1' , '4' , 'Blue Pears', TO_DATE('15/12/2019 22:00', 'DD/MM/YYYY HH24:MI') );
