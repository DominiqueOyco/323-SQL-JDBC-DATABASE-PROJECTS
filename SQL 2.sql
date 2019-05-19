CREATE TABLE Calendar (
    service_days        VARCHAR(20) NOT NULL,
    start_date          VARCHAR(20) NOT NULL,
    end_date            VARCHAR(20) NOT NULL);

ALTER TABLE Calendar
          ADD CONSTRAINT Calendar_pk
          PRIMARY KEY (service_days);

INSERT INTO Calendar (service_days, start_date, end_date) VALUES
            ('MTUWTHF', '02/10/19', '06/08/19'),
            ('SA', '02/10/19', '06/08/19'),
            ('SU', '02/10/19', '06/08/19');

SELECT * FROM Calendar;