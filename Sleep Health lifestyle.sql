SELECT * FROM [Portfolio project]..Sleep_health_and_lifestyle_dataset

--overall distribution of Sleep_durations

SELECT Sleep_Duration
FROM [Portfolio project]..Sleep_health_and_lifestyle_dataset
ORDER BY Sleep_Duration ASC;

--Avg Sleep duration

SELECT AVG(Sleep_Duration) as avg_sleep_duration
FROM [Portfolio project]..Sleep_health_and_lifestyle_dataset;

-- Average Sleep Patterns Across Age Groups

SELECT Age, AVG(Sleep_Duration) as avg_sleep_duration
FROM [Portfolio project]..Sleep_health_and_lifestyle_dataset
GROUP BY Age;

-- Sleep Quality distribution

SELECT Quality_of_Sleep, COUNT(*) as COUNT
FROM [Portfolio project]..Sleep_health_and_lifestyle_dataset
GROUP BY Quality_of_Sleep;

-- Sleep Quality of Job Type

SELECT Quality_of_Sleep,Occupation
FROM [Portfolio project]..Sleep_health_and_lifestyle_dataset;

-- Sleep duration of Job Type

SELECT Sleep_Duration,Occupation
FROM [Portfolio project]..Sleep_health_and_lifestyle_dataset;

--Max sleep duration as per job

SELECT Occupation,MAX(Sleep_Duration) as max_sleep_duration
FROM [Portfolio project]..Sleep_health_and_lifestyle_dataset
GROUP BY Occupation
ORDER BY max_sleep_duration;

--Min sleep duration as per job

SELECT Occupation,Min(Sleep_Duration) as min_sleep_duration
FROM [Portfolio project]..Sleep_health_and_lifestyle_dataset
GROUP BY Occupation
ORDER BY min_sleep_duration;

--  there is a correlation between physical fitness level and sleep duration

SELECT distinct Physical_Activity_Level,Sleep_Duration
FROM [Portfolio project]..Sleep_health_and_lifestyle_dataset
WHERE Physical_Activity_Level > 40


-- Jobs which are stressful

SELECT DISTINCT Occupation , Stress_Level
FROM [Portfolio project]..Sleep_health_and_lifestyle_dataset
WHERE Stress_Level >= 6
ORDER BY Stress_Level DESC ;

-- stress_level and blood_pressure of insomnia people which are high in levels 
SELECT Occupation,Stress_Level,Sleep_Duration,Sleep_Disorder
FROM [Portfolio project]..Sleep_health_and_lifestyle_dataset
WHERE Sleep_Disorder IN (select Sleep_Disorder FROM [Portfolio project]..Sleep_health_and_lifestyle_dataset
where Sleep_Disorder = 'Insomnia' )

-- stress_level and blood_pressure of insomnia people which are high in levels

SELECT Occupation,Stress_Level,Blood_Pressure,BMI_Category,Sleep_Disorder
FROM [Portfolio project]..Sleep_health_and_lifestyle_dataset
WHERE Sleep_Disorder IN (select Sleep_Disorder from [Portfolio project]..Sleep_health_and_lifestyle_dataset
where Sleep_Disorder = 'Sleep Apnea' )



