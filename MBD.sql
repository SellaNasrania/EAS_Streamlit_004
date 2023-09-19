
CREATE TABLE public.airport (
	id varchar(100) NOT NULL,
	nama_airport varchar(255) NULL,
	id_country varchar(10) NULL,
	CONSTRAINT airport_2_pkey PRIMARY KEY (id)
);

-- public.country definition
-- Drop table
-- DROP TABLE public.country;

CREATE TABLE public.country (
	id int4 NOT NULL,
	nama_negara varchar(255) NULL,
	simbol_negara varchar(3) NULL,
	benua_negara varchar(255) NULL,
	CONSTRAINT countries_pkey PRIMARY KEY (id)
);

-- public.detail definition
-- Drop table
-- DROP TABLE public.detail;

CREATE TABLE public.detail (
	id varchar(100) NOT NULL,
	nomor_mesin varchar(255) NULL,
	kapasitas_penumpang int4 NULL,
	id_pesawat varchar(10) NULL,
	CONSTRAINT detail_pkey PRIMARY KEY (id)
);


-- public.pesawat definition
-- Drop table
-- DROP TABLE public.pesawat;

CREATE TABLE public.pesawat (
	id varchar(100) NOT NULL,
	nama_maskapai varchar(255) NULL,
	"Asal Negara" varchar(255) NULL,
	CONSTRAINT airlines_pkey PRIMARY KEY (id)
);

-- public.pesawat_airport definition
-- Drop table
-- DROP TABLE public.pesawat_airport;

CREATE TABLE public.pesawat_airport (
	id int4 NOT NULL,
	id_pesawat varchar(10) NULL,
	id_airport varchar(10) NULL,
	keterangan varchar(255) NULL,
	tanggal date NULL,
	CONSTRAINT flightstatus_pkey PRIMARY KEY (id)
);

-- public.schedule definition
-- Drop table
-- DROP TABLE public.schedule;

CREATE TABLE public.schedule (
	id int4 NOT NULL,
	tanggal_departure date NULL,
	tanggal_arrival date NULL,
	waktu_arrival time NULL,
	waktu_departure time NULL,
	origin varchar(255) NULL,
	destination varchar(255) NULL,
	id_pesawat varchar(10) NULL,
	CONSTRAINT flights_pkey PRIMARY KEY (id)
);

-- Insert data into the "Airport" table
INSERT INTO airport  (ID, nama_airport, id_country)
VALUES
    ('AP-01', 'Bandara Soekarno', 1),
    ('AP-02', 'Bandara Juanda', 1),
    ('AP-03', 'Bandara Fukuoka', 2),
    ('AP-04', 'Bandara Shizuoka', 2);

-- Insert data into the "pesawat" table
INSERT INTO pesawat  (ID, nama_maskapai, "Asal Negara")
VALUES
    (1, 'Garuda Airlines', 'Indonesia'),
    (2, 'Asia Airlines', 'Malaysia'),
    (3, 'Susi Airlines', 'Indonesia'),
    (4, 'Sing Airlines', 'Singapore');
 
-- Insert data into the "pesawat" table
INSERT INTO pesawat_airport  (ID, id_pesawat, id_airport, keterangan, tanggal)
VALUES
    (1, 'KD-AA11', 'AP-01', 'Departure', '2023-09-09'),
    (2, 'KD-AA11', 'AP-02', 'Arrival', '2023-09-09'),
    (3, 'KD-CC33', 'AP-01', 'Departure', '2023-09-10'),
    (4, 'KD-CC33', 'AP-03', 'Transit', '2023-09-10'),
    (5, 'KD-CC33', 'AP-03', 'Arrival', '2023-09-09');

-- Insert data into the "schedule" table
INSERT INTO pesawat_airport  (ID, tanggal_departure, tanggal_arrival, waktu_arrival, waktu_departure, origin, destination, id_pesawat)
VALUES
    (1, '2022-09-14', '2022-09-14', '18:45:00', '14:45:00', 'Surabaya', 'Jakarta', 'KD-AA11'),
    (2, '2022-09-15', '2022-09-17', '02:00:00', '22:00:00', 'Jakarta', 'Singapore', 'KD-AA11'),
    (3, '2022-09-20', '2022-09-21', '14:00:00', '08:00:00', 'Johor', 'Tokyo', 'KD-BB22'),
    (4, '2022-09-15', '2022-09-15', '14:45:00', '07:45:00', 'Surabaya', 'Aceh', 'KD-CC33'),
    (5, '2022-09-25', '2022-09-25', '16:00:00', '13:00:00', 'Jakarta', 'Palembang', 'KD-CC33'),
    (6, '2022-09-15', '2022-09-15', '11:00:00', '09:00:00', 'Singapore', 'Surabaya', 'KD-DD44');
    
    
-- Insert data into the "DETAIL" table
INSERT INTO detail  (id, "nomor_mesin", kapasitas_penumpang , id_pesawat)
VALUES
    (1, 'MM-11', 88, 'KD-AA11'),
    (2, 'MM-22', 77, 'KD-BB22'),
    (3, 'MM-33', 66, 'KD-CC33'),
    (4, 'MM-44', 55, 'KD-DD44');
    
-- Insert data into the "country" table
INSERT INTO country  (id, nama_negara, simbol_negara, benua_negara)
VALUES
    (1, 'INDONESIA', 'IDN', 'ASIA'),
    (2, 'JAPAN', 'JPN', 'ASIA');

    
