-- -----------------------------------------------------------------
-- Blastonbury.sql
-- ---------------
-- Blastonbury Pop Festival Assignment 2
--
-- -----------------------------------------------------------------
-- .=========================.
-- | AGENT                   |
-- :=========================:
-- | Agent_no                |
-- | -------                 |
-- | Given_name              |
-- | Family_name             |
--  =========================

-- Agent (Agent_no, Given_name, Family_name)  
--      -------

CREATE TABLE Agent
       ( Agent_no       VARCHAR2(8)
           CONSTRAINT agt_agtno_pk PRIMARY KEY,
         Given_name     VARCHAR2(40)
           CONSTRAINT agt_gname_nn NOT NULL,
         Family_name    VARCHAR2(40)
           CONSTRAINT agt_fname_nn NOT NULL
       );



-- .=========================.
-- | BAND                    |
-- :=========================:
-- | Name                    |
-- | -------                 |
-- | Description             |
-- | Agent_No*               |
--  =========================

-- Band (Name, Description, Agent_No*)   
--      -------

CREATE TABLE Band
       ( Name          VARCHAR2(60)
            CONSTRAINT band_bandname_pk PRIMARY KEY,
         Description   VARCHAR2(150)
            CONSTRAINT band_banddesc_nn NOT NULL,
         Agent_No      VARCHAR2(8),
            CONSTRAINT band_agtno_fk FOREIGN KEY
               (Agent_No) REFERENCES Agent(Agent_No)
       );
       
    
       
-- .=========================.
-- | STAGE                   |
-- :=========================:
-- | Stage_no                |
-- | ------------            |
-- | Stage_Name              |
-- | Capacity                |
--  =========================
-- Stage (Stage_no, Stage_Name, Capacity) 
--          ------------      
       
CREATE TABLE Stage
       ( Stage_no          NUMBER(8,2)
            CONSTRAINT stg_stgno_pk PRIMARY KEY,
         Stage_Name        VARCHAR2(60)
            CONSTRAINT stg_stgname_nn NOT NULL,
         Capacity          VARCHAR2(8),
            CONSTRAINT stage_cap_ck CHECK (Capacity >= 0)
       );
     
    

-- .=========================.
-- | MEMBER                  |
-- :=========================:
-- | Member_ID               |
-- | ----------              |
-- | Given_name              |
-- | Family_name             |
-- | DOB                     |
-- | job_type                |
-- | Band_Name*              |
--  =========================

-- Member (Member_ID, Given_name, Family_name, DOB, job_type, Band_Name*) 
--          ------------

CREATE TABLE Member
       ( Member_ID      VARCHAR2(20)
            CONSTRAINT mbr_mbrid_pk PRIMARY KEY,
         Given_name     VARCHAR2(40)
            CONSTRAINT mbr_gname_nn NOT NULL,
         Family_name    VARCHAR2(40)
            CONSTRAINT mbr_fname_nn NOT NULL,
         DOB            DATE,
         job_type       VARCHAR2(20),
         Band_Name      VARCHAR2(60),
             CONSTRAINT band_bandname_fk FOREIGN KEY
                 (Band_Name) REFERENCES Band(Name)
       );


-- .=========================.
-- | PERFORMANCE             |
-- :=========================:
-- | PerformanceID           |
-- | ----------              |
-- | Stage_No                |
-- | Band_Name               |
-- | Date_Time               |
--  =========================

-- Performance (PerformanceID, Stage_No*, Band_Name*, Date_Time)  
--          ------------
       
CREATE TABLE Performance
       ( PerformanceID     VARCHAR2(20)
            CONSTRAINT prfm_prfmid_pk PRIMARY KEY,
         Stage_No          NUMBER(8,2),
         Band_Name         VARCHAR2(60),
            CONSTRAINT stg_pfrmstgno_fk FOREIGN KEY
                 (Stage_No) REFERENCES Stage(Stage_No),
            CONSTRAINT band_prfmbandname_fk FOREIGN KEY
                 (Band_Name) REFERENCES Band(Name),
         Date_Time         DATE
       );
       
    
    
-- End of Script -------------------------------------------------    