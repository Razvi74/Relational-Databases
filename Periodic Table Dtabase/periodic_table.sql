--
-- PostgreSQL database dump
--

\restrict rjBW0vUd6qpteufve9xnanN4ZyDpOZ7esfWmE2nN6gJxNEVvO6zPBkha7yvDd6e

-- Dumped from database version 17.9 (Ubuntu 17.9-0ubuntu0.25.10.1)
-- Dumped by pg_dump version 17.9 (Ubuntu 17.9-0ubuntu0.25.10.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE periodic_table;
--
-- Name: periodic_table; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE periodic_table WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C.UTF-8';


ALTER DATABASE periodic_table OWNER TO postgres;

\unrestrict rjBW0vUd6qpteufve9xnanN4ZyDpOZ7esfWmE2nN6gJxNEVvO6zPBkha7yvDd6e
\connect periodic_table
\restrict rjBW0vUd6qpteufve9xnanN4ZyDpOZ7esfWmE2nN6gJxNEVvO6zPBkha7yvDd6e

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: elements; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.elements (
    atomic_number integer NOT NULL,
    symbol character varying(2) NOT NULL,
    name character varying(40) NOT NULL
);


ALTER TABLE public.elements OWNER TO postgres;

--
-- Name: properties; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.properties (
    atomic_number integer NOT NULL,
    atomic_mass numeric NOT NULL,
    melting_point_celsius numeric NOT NULL,
    boiling_point_celsius numeric NOT NULL,
    type_id integer NOT NULL
);


ALTER TABLE public.properties OWNER TO postgres;

--
-- Name: types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.types (
    type_id integer NOT NULL,
    type character varying(30) NOT NULL
);


ALTER TABLE public.types OWNER TO postgres;

--
-- Data for Name: elements; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.elements VALUES (1, 'H', 'Hydrogen');
INSERT INTO public.elements VALUES (2, 'He', 'Helium');
INSERT INTO public.elements VALUES (3, 'Li', 'Lithium');
INSERT INTO public.elements VALUES (4, 'Be', 'Beryllium');
INSERT INTO public.elements VALUES (5, 'B', 'Boron');
INSERT INTO public.elements VALUES (6, 'C', 'Carbon');
INSERT INTO public.elements VALUES (7, 'N', 'Nitrogen');
INSERT INTO public.elements VALUES (8, 'O', 'Oxygen');
INSERT INTO public.elements VALUES (9, 'F', 'Fluorine');
INSERT INTO public.elements VALUES (10, 'Ne', 'Neon');
INSERT INTO public.elements VALUES (11, 'Na', 'Sodium');
INSERT INTO public.elements VALUES (12, 'Mg', 'Magnesium');
INSERT INTO public.elements VALUES (13, 'Al', 'Aluminum');
INSERT INTO public.elements VALUES (14, 'Si', 'Silicon');
INSERT INTO public.elements VALUES (15, 'P', 'Phosphorus');
INSERT INTO public.elements VALUES (16, 'S', 'Sulfur');
INSERT INTO public.elements VALUES (17, 'Cl', 'Chlorine');
INSERT INTO public.elements VALUES (18, 'Ar', 'Argon');
INSERT INTO public.elements VALUES (19, 'K', 'Potassium');
INSERT INTO public.elements VALUES (20, 'Ca', 'Calcium');
INSERT INTO public.elements VALUES (21, 'Sc', 'Scandium');
INSERT INTO public.elements VALUES (22, 'Ti', 'Titanium');
INSERT INTO public.elements VALUES (23, 'V', 'Vanadium');
INSERT INTO public.elements VALUES (24, 'Cr', 'Chromium');
INSERT INTO public.elements VALUES (25, 'Mn', 'Manganese');
INSERT INTO public.elements VALUES (26, 'Fe', 'Iron');
INSERT INTO public.elements VALUES (27, 'Co', 'Cobalt');
INSERT INTO public.elements VALUES (28, 'Ni', 'Nickel');
INSERT INTO public.elements VALUES (29, 'Cu', 'Copper');
INSERT INTO public.elements VALUES (30, 'Zn', 'Zinc');
INSERT INTO public.elements VALUES (31, 'Ga', 'Gallium');
INSERT INTO public.elements VALUES (32, 'Ge', 'Germanium');
INSERT INTO public.elements VALUES (33, 'As', 'Arsenic');
INSERT INTO public.elements VALUES (34, 'Se', 'Selenium');
INSERT INTO public.elements VALUES (35, 'Br', 'Bromine');
INSERT INTO public.elements VALUES (36, 'Kr', 'Krypton');
INSERT INTO public.elements VALUES (37, 'Rb', 'Rubidium');
INSERT INTO public.elements VALUES (38, 'Sr', 'Strontium');
INSERT INTO public.elements VALUES (39, 'Y', 'Yttrium');
INSERT INTO public.elements VALUES (40, 'Zr', 'Zirconium');
INSERT INTO public.elements VALUES (41, 'Nb', 'Niobium');
INSERT INTO public.elements VALUES (42, 'Mo', 'Molybdenum');
INSERT INTO public.elements VALUES (43, 'Tc', 'Technetium');
INSERT INTO public.elements VALUES (44, 'Ru', 'Ruthenium');
INSERT INTO public.elements VALUES (45, 'Rh', 'Rhodium');
INSERT INTO public.elements VALUES (46, 'Pd', 'Palladium');
INSERT INTO public.elements VALUES (47, 'Ag', 'Silver');
INSERT INTO public.elements VALUES (48, 'Cd', 'Cadmium');
INSERT INTO public.elements VALUES (49, 'In', 'Indium');
INSERT INTO public.elements VALUES (50, 'Sn', 'Tin');
INSERT INTO public.elements VALUES (51, 'Sb', 'Antimony');
INSERT INTO public.elements VALUES (52, 'Te', 'Tellurium');
INSERT INTO public.elements VALUES (53, 'I', 'Iodine');
INSERT INTO public.elements VALUES (54, 'Xe', 'Xenon');
INSERT INTO public.elements VALUES (55, 'Cs', 'Cesium');
INSERT INTO public.elements VALUES (56, 'Ba', 'Barium');
INSERT INTO public.elements VALUES (57, 'La', 'Lanthanum');
INSERT INTO public.elements VALUES (58, 'Ce', 'Cerium');
INSERT INTO public.elements VALUES (59, 'Pr', 'Praseodymium');
INSERT INTO public.elements VALUES (60, 'Nd', 'Neodymium');
INSERT INTO public.elements VALUES (61, 'Pm', 'Promethium');
INSERT INTO public.elements VALUES (62, 'Sm', 'Samarium');
INSERT INTO public.elements VALUES (63, 'Eu', 'Europium');
INSERT INTO public.elements VALUES (64, 'Gd', 'Gadolinium');
INSERT INTO public.elements VALUES (65, 'Tb', 'Terbium');
INSERT INTO public.elements VALUES (66, 'Dy', 'Dysprosium');
INSERT INTO public.elements VALUES (67, 'Ho', 'Holmium');
INSERT INTO public.elements VALUES (68, 'Er', 'Erbium');
INSERT INTO public.elements VALUES (69, 'Tm', 'Thulium');
INSERT INTO public.elements VALUES (70, 'Yb', 'Ytterbium');
INSERT INTO public.elements VALUES (71, 'Lu', 'Lutetium');
INSERT INTO public.elements VALUES (72, 'Hf', 'Hafnium');
INSERT INTO public.elements VALUES (73, 'Ta', 'Tantalum');
INSERT INTO public.elements VALUES (74, 'W', 'Tungsten');
INSERT INTO public.elements VALUES (75, 'Re', 'Rhenium');
INSERT INTO public.elements VALUES (76, 'Os', 'Osmium');
INSERT INTO public.elements VALUES (77, 'Ir', 'Iridium');
INSERT INTO public.elements VALUES (78, 'Pt', 'Platinum');
INSERT INTO public.elements VALUES (79, 'Au', 'Gold');
INSERT INTO public.elements VALUES (80, 'Hg', 'Mercury');
INSERT INTO public.elements VALUES (81, 'Tl', 'Thallium');
INSERT INTO public.elements VALUES (82, 'Pb', 'Lead');
INSERT INTO public.elements VALUES (83, 'Bi', 'Bismuth');
INSERT INTO public.elements VALUES (84, 'Po', 'Polonium');


--
-- Data for Name: properties; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.properties VALUES (1, 1.008, -259.1, -252.9, 2);
INSERT INTO public.properties VALUES (2, 4.0026, -272.2, -269, 2);
INSERT INTO public.properties VALUES (3, 6.94, 180.54, 1342, 1);
INSERT INTO public.properties VALUES (4, 9.0122, 1287, 2470, 1);
INSERT INTO public.properties VALUES (5, 10.81, 2075, 4000, 3);
INSERT INTO public.properties VALUES (6, 12.011, 3550, 4027, 2);
INSERT INTO public.properties VALUES (7, 14.007, -210.1, -195.8, 2);
INSERT INTO public.properties VALUES (8, 15.999, -218, -183, 2);
INSERT INTO public.properties VALUES (9, 18.998, -220, -188.1, 2);
INSERT INTO public.properties VALUES (10, 20.18, -248.6, -246.1, 2);
INSERT INTO public.properties VALUES (11, 22.9898, 97.8, 882.85, 1);
INSERT INTO public.properties VALUES (12, 24.305, 649.85, 1089.85, 1);
INSERT INTO public.properties VALUES (13, 26.9815, 660.29, 2518.85, 1);
INSERT INTO public.properties VALUES (14, 28.085, 1413.85, 3264.85, 3);
INSERT INTO public.properties VALUES (15, 30.9738, 44.15, 280.5, 2);
INSERT INTO public.properties VALUES (16, 32.07, 115.21, 444.6, 2);
INSERT INTO public.properties VALUES (17, 35.45, -101.5, -34.04, 2);
INSERT INTO public.properties VALUES (18, 39.9, -189.35, -185.85, 2);
INSERT INTO public.properties VALUES (19, 39.0983, 63.38, 758.85, 1);
INSERT INTO public.properties VALUES (20, 40.08, 841.85, 1483.85, 1);
INSERT INTO public.properties VALUES (21, 44.9559, 1540.85, 2835.85, 1);
INSERT INTO public.properties VALUES (22, 47.867, 1667.85, 3286.85, 1);
INSERT INTO public.properties VALUES (23, 50.9415, 1909.85, 3406.85, 1);
INSERT INTO public.properties VALUES (24, 51.996, 1906.85, 2670.85, 1);
INSERT INTO public.properties VALUES (25, 54.938, 1245.85, 2060.85, 1);
INSERT INTO public.properties VALUES (26, 55.84, 1537.85, 2860.85, 1);
INSERT INTO public.properties VALUES (27, 58.9332, 1494.85, 2926.85, 1);
INSERT INTO public.properties VALUES (28, 58.693, 1454.85, 2912.85, 1);
INSERT INTO public.properties VALUES (29, 63.55, 1084.62, 2561.85, 1);
INSERT INTO public.properties VALUES (30, 65.4, 419.53, 906.85, 1);
INSERT INTO public.properties VALUES (31, 69.723, 29.76, 2203.85, 1);
INSERT INTO public.properties VALUES (32, 72.63, 938.25, 2832.85, 3);
INSERT INTO public.properties VALUES (33, 74.9216, 816.85, 613.85, 3);
INSERT INTO public.properties VALUES (34, 78.97, 220.5, 684.85, 2);
INSERT INTO public.properties VALUES (35, 79.9, -7.2, 58.8, 2);
INSERT INTO public.properties VALUES (36, 83.8, -157.36, -153.22, 2);
INSERT INTO public.properties VALUES (37, 85.468, 39.31, 687.85, 1);
INSERT INTO public.properties VALUES (38, 87.62, 776.85, 1381.85, 1);
INSERT INTO public.properties VALUES (39, 88.9058, 1521.85, 3344.85, 1);
INSERT INTO public.properties VALUES (40, 91.22, 1854.85, 4408.85, 1);
INSERT INTO public.properties VALUES (41, 92.9064, 2476.85, 4743.85, 1);
INSERT INTO public.properties VALUES (42, 95.95, 2622.85, 4638.85, 1);
INSERT INTO public.properties VALUES (43, 96.9064, 2156.85, 4264.85, 1);
INSERT INTO public.properties VALUES (44, 101.1, 2333.85, 4149.85, 1);
INSERT INTO public.properties VALUES (45, 102.9055, 1963.85, 3694.85, 1);
INSERT INTO public.properties VALUES (46, 106.42, 1554.9, 2962.85, 1);
INSERT INTO public.properties VALUES (47, 107.868, 961.78, 2161.85, 1);
INSERT INTO public.properties VALUES (48, 112.41, 321.07, 766.85, 1);
INSERT INTO public.properties VALUES (49, 114.818, 156.6, 2071.85, 1);
INSERT INTO public.properties VALUES (50, 118.71, 231.93, 2601.85, 1);
INSERT INTO public.properties VALUES (51, 121.76, 630.63, 1586.85, 3);
INSERT INTO public.properties VALUES (52, 127.6, 449.51, 987.85, 3);
INSERT INTO public.properties VALUES (53, 126.9045, 113.7, 184.4, 2);
INSERT INTO public.properties VALUES (54, 131.29, -111.79, -108.12, 2);
INSERT INTO public.properties VALUES (55, 132.9055, 28.44, 670.85, 1);
INSERT INTO public.properties VALUES (56, 137.33, 726.85, 1896.85, 1);
INSERT INTO public.properties VALUES (57, 138.9055, 917.85, 3463.85, 1);
INSERT INTO public.properties VALUES (58, 140.116, 797.85, 3423.85, 1);
INSERT INTO public.properties VALUES (59, 140.9077, 930.85, 3519.85, 1);
INSERT INTO public.properties VALUES (60, 144.24, 1020.85, 3073.85, 1);
INSERT INTO public.properties VALUES (61, 144.9128, 1041.85, 2999.85, 1);
INSERT INTO public.properties VALUES (62, 150.4, 1073.85, 1793.85, 1);
INSERT INTO public.properties VALUES (63, 151.964, 821.85, 1528.85, 1);
INSERT INTO public.properties VALUES (64, 157.25, 1312.85, 3272.85, 1);
INSERT INTO public.properties VALUES (65, 158.9254, 1355.85, 3229.85, 1);
INSERT INTO public.properties VALUES (66, 162.5, 1411.85, 2566.85, 1);
INSERT INTO public.properties VALUES (67, 164.9303, 1473.85, 2699.85, 1);
INSERT INTO public.properties VALUES (68, 167.26, 1528.85, 2867.85, 1);
INSERT INTO public.properties VALUES (69, 168.9342, 1544.85, 1949.85, 1);
INSERT INTO public.properties VALUES (70, 173.05, 818.85, 1195.85, 1);
INSERT INTO public.properties VALUES (71, 174.9667, 1662.85, 3401.85, 1);
INSERT INTO public.properties VALUES (72, 178.49, 2232.85, 4602.85, 1);
INSERT INTO public.properties VALUES (73, 180.9479, 3016.85, 5457.85, 1);
INSERT INTO public.properties VALUES (74, 183.84, 3421.85, 5554.85, 1);
INSERT INTO public.properties VALUES (75, 186.207, 3185.85, 5595.85, 1);
INSERT INTO public.properties VALUES (76, 190.2, 3032.85, 5011.85, 1);
INSERT INTO public.properties VALUES (77, 192.22, 2445.85, 4427.85, 1);
INSERT INTO public.properties VALUES (78, 195.08, 1768.4, 3824.85, 1);
INSERT INTO public.properties VALUES (79, 196.9666, 1064.18, 2855.85, 1);
INSERT INTO public.properties VALUES (80, 200.59, -38.83, 356.73, 1);
INSERT INTO public.properties VALUES (81, 204.383, 303.85, 1472.85, 1);
INSERT INTO public.properties VALUES (82, 207, 327.46, 1748.85, 1);
INSERT INTO public.properties VALUES (83, 208.9804, 271.4, 1563.85, 1);
INSERT INTO public.properties VALUES (84, 208.9824, 253.85, 961.85, 3);


--
-- Data for Name: types; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.types VALUES (1, 'metal');
INSERT INTO public.types VALUES (2, 'nonmetal');
INSERT INTO public.types VALUES (3, 'metalloid');


--
-- Name: elements elements_atomic_number_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.elements
    ADD CONSTRAINT elements_atomic_number_key UNIQUE (atomic_number);


--
-- Name: elements elements_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.elements
    ADD CONSTRAINT elements_name_key UNIQUE (name);


--
-- Name: elements elements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.elements
    ADD CONSTRAINT elements_pkey PRIMARY KEY (atomic_number);


--
-- Name: elements elements_symbol_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.elements
    ADD CONSTRAINT elements_symbol_key UNIQUE (symbol);


--
-- Name: properties properties_atomic_number_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_key UNIQUE (atomic_number);


--
-- Name: properties properties_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_pkey PRIMARY KEY (atomic_number);


--
-- Name: types types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (type_id);


--
-- Name: properties properties_atomic_number_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey1 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey1 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey2 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey3 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- PostgreSQL database dump complete
--

\unrestrict rjBW0vUd6qpteufve9xnanN4ZyDpOZ7esfWmE2nN6gJxNEVvO6zPBkha7yvDd6e

