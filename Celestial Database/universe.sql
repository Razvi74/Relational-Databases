--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    is_spherical boolean,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth_bn_au numeric,
    galaxy_type_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: galaxy_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_type (
    galaxy_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(30)
);


ALTER TABLE public.galaxy_type OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_type_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_type_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_type_galaxy_type_id_seq OWNED BY public.galaxy_type.galaxy_type_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    is_spherical boolean,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_planet numeric,
    moon_type_id integer NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: moon_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon_type (
    moon_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(30)
);


ALTER TABLE public.moon_type OWNER TO freecodecamp;

--
-- Name: moon_type_moon_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_type_moon_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_type_moon_type_id_seq OWNER TO freecodecamp;

--
-- Name: moon_type_moon_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_type_moon_type_id_seq OWNED BY public.moon_type.moon_type_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    is_spherical boolean,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_star_au numeric,
    planet_type_id integer NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planet_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_type (
    planet_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(30)
);


ALTER TABLE public.planet_type OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_type_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_type_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_type_planet_type_id_seq OWNED BY public.planet_type.planet_type_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    is_spherical boolean,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth_au numeric,
    star_type_id integer NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: star_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_type (
    star_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(30)
);


ALTER TABLE public.star_type OWNER TO freecodecamp;

--
-- Name: star_type_star_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_type_star_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_type_star_type_id_seq OWNER TO freecodecamp;

--
-- Name: star_type_star_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_type_star_type_id_seq OWNED BY public.star_type.star_type_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_type galaxy_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type ALTER COLUMN galaxy_type_id SET DEFAULT nextval('public.galaxy_type_galaxy_type_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon_type moon_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_type ALTER COLUMN moon_type_id SET DEFAULT nextval('public.moon_type_moon_type_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_type planet_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type ALTER COLUMN planet_type_id SET DEFAULT nextval('public.planet_type_planet_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star_type star_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_type ALTER COLUMN star_type_id SET DEFAULT nextval('public.star_type_star_type_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', NULL, NULL, NULL, 10000, 7000, 1);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', NULL, NULL, NULL, 13600, 1.64, 1);
INSERT INTO public.galaxy VALUES (3, 'Sagittarius Dwarf Spheroidal', NULL, NULL, NULL, 13000, 4.4, 2);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', NULL, NULL, NULL, 2000, 10.1, 2);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', NULL, NULL, NULL, 13000, 12.6, 3);
INSERT INTO public.galaxy VALUES (6, 'Ursa Minor Dwarf', NULL, NULL, NULL, 13000, 14.2, 2);
INSERT INTO public.galaxy VALUES (7, 'Ursa Major I Dwarf', NULL, NULL, NULL, 12000, 20.8, 2);
INSERT INTO public.galaxy VALUES (8, 'Draco Dwarf', NULL, NULL, NULL, 10000, 16.4, 2);
INSERT INTO public.galaxy VALUES (9, 'Centaurus', NULL, NULL, NULL, 13270, 800, 2);
INSERT INTO public.galaxy VALUES (10, 'Aquarius', NULL, NULL, NULL, 53, 3.4, 3);


--
-- Data for Name: galaxy_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_type VALUES (1, 'barred spiral', '');
INSERT INTO public.galaxy_type VALUES (2, 'eliptical', '');
INSERT INTO public.galaxy_type VALUES (3, 'irregular', '');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (38, 'Phobos', 'Satellite of Mars', NULL, NULL, 4300, 6000, 2, 4);
INSERT INTO public.moon VALUES (39, 'Deimos', 'Satellite of Mars', NULL, NULL, 4503, 23460, 2, 4);
INSERT INTO public.moon VALUES (40, 'Moon-Selena', 'The natural satellite of the Earth', NULL, NULL, 4500, 405696, 1, 1);
INSERT INTO public.moon VALUES (41, 'Ganymede', 'Moon of  Jupiter', NULL, NULL, 4500, 1070400, 1, 5);
INSERT INTO public.moon VALUES (42, 'Callisto', 'Moon of  Jupiter', NULL, NULL, 4500, 1168000, 1, 5);
INSERT INTO public.moon VALUES (43, 'Io', 'Moon of  Jupiter', NULL, NULL, 4500, 421700, 1, 5);
INSERT INTO public.moon VALUES (44, 'Europa', 'Moon of  Jupiter', NULL, NULL, 4500, 670900, 1, 5);
INSERT INTO public.moon VALUES (45, 'Titan', 'Moon of  Saturn', NULL, NULL, 4500, 1200000, 1, 6);
INSERT INTO public.moon VALUES (46, 'Phoebe', 'Moon of  Saturn', NULL, NULL, 4000, 12952000, 2, 6);
INSERT INTO public.moon VALUES (47, 'Hyperion', 'Moon of  Saturn', NULL, NULL, 400, 1500000, 1, 6);
INSERT INTO public.moon VALUES (48, 'Prometeus', 'Moon of  Saturn', NULL, NULL, 4400, 139380, 4, 6);
INSERT INTO public.moon VALUES (49, 'Calypso', 'Moon of  Saturn', NULL, NULL, 400, 295000, 5, 6);
INSERT INTO public.moon VALUES (50, 'Atlas', 'Moon of  Saturn', NULL, NULL, 400, 137670, 5, 6);
INSERT INTO public.moon VALUES (51, 'Pandora', 'Moon of  Saturn', NULL, NULL, 400, 141700, 5, 6);
INSERT INTO public.moon VALUES (52, 'Miranda', 'Moon of  Uranus', NULL, NULL, 4500, 129000, 1, 7);
INSERT INTO public.moon VALUES (53, 'Ariel', 'Moon of  Uranus', NULL, NULL, 4500, 190000, 1, 7);
INSERT INTO public.moon VALUES (54, 'Umbriel', 'Moon of  Uranus', NULL, NULL, 4500, 266000, 1, 7);
INSERT INTO public.moon VALUES (55, 'Titania', 'Moon of  Uranus', NULL, NULL, 4500, 435900, 1, 7);
INSERT INTO public.moon VALUES (56, 'Oberon', 'Moon of  Uranus', NULL, NULL, 4500, 583500, 1, 7);
INSERT INTO public.moon VALUES (57, 'Triton', 'Moon of  Neptune', NULL, NULL, 4500, 354800, 2, 8);
INSERT INTO public.moon VALUES (58, 'Proteus', 'Moon of  Neptune', NULL, NULL, 4500, 117647, 2, 8);
INSERT INTO public.moon VALUES (59, 'Despina', 'Moon of  Neptune', NULL, NULL, 4500, 52526, 4, 8);
INSERT INTO public.moon VALUES (60, 'Larissa', 'Moon of  Neptune', NULL, NULL, 3300, 73500, 4, 8);


--
-- Data for Name: moon_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon_type VALUES (1, 'regular', NULL);
INSERT INTO public.moon_type VALUES (2, 'irregular', NULL);
INSERT INTO public.moon_type VALUES (3, 'transitional', NULL);
INSERT INTO public.moon_type VALUES (4, 'ring', NULL);
INSERT INTO public.moon_type VALUES (5, 'trojan', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'The only planet supporting life', true, true, 4503, 1, 1, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 'The closest planet to the Sun', true, false, 4503, 0.5, 1, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 'Similar in size to Earth', true, false, 4503, 0.7, 1, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Known as the “Red Planet”', true, false, 4540, 1.6, 1, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'The largest planet of our soalar system', true, false, 4565, 5.46, 2, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'A gas giant with83+ moons', true, false, 4543, 10.12, 2, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'An ice giant with narrow rings', true, false, 4543, 20.1, 3, 1);
INSERT INTO public.planet VALUES (8, 'Neptun', 'The most distant planet of our system', true, false, 4543, 30.5, 3, 1);
INSERT INTO public.planet VALUES (9, 'Proxima-b', 'The closest exoplanet to Earth', true, false, 4850, 0.5, 1, 3);
INSERT INTO public.planet VALUES (10, 'Trappist 1b', 'The first Trappist-1 planet of Trappist-1', true, false, 7600, 0.0115, 1, 4);
INSERT INTO public.planet VALUES (11, 'Trappist 1c', 'Earth-sized exoplanet', true, false, 7600, 0.0158, 1, 4);
INSERT INTO public.planet VALUES (12, 'Trappist 1d', 'More massive but less dense than Mars', true, false, 7600, 0.02228, 1, 4);
INSERT INTO public.planet VALUES (13, 'Trappist 1e', 'Similar in density with  Earth', true, false, 7600, 0.029282, 1, 4);
INSERT INTO public.planet VALUES (14, 'Trappist 1f', 'Entirely glaciated snowball planet', true, false, 7600, 0.038, 1, 4);
INSERT INTO public.planet VALUES (15, 'Trappist 1g', 'Might host a subsurface ocean', true, false, 7600, 0.04683, 1, 4);
INSERT INTO public.planet VALUES (16, 'Trappist 1h', 'Snowball planet, might host a subsurface ocean', true, false, 7600, 0.0619, 1, 4);


--
-- Data for Name: planet_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_type VALUES (1, 'rocky', NULL);
INSERT INTO public.planet_type VALUES (2, 'gas giants', NULL);
INSERT INTO public.planet_type VALUES (3, 'ice giants', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sirius', 'The brightest star in the sky', NULL, NULL, 300, 544000, 3, 1);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 'The closest star to our solar system', NULL, NULL, 4850, 268550, 7, 9);
INSERT INTO public.star VALUES (4, 'Trappist-1', 'A nearby planetary system ', NULL, NULL, 8000, 2530000, 7, 10);
INSERT INTO public.star VALUES (5, 'Alpheratz', 'The brightest star in Andromeda', NULL, NULL, 60, 6137000, 3, 1);
INSERT INTO public.star VALUES (6, 'Mirach', 'A prominent star in Andromeda', NULL, NULL, NULL, 12458490, 7, 1);
INSERT INTO public.star VALUES (1, 'Sun', 'The star of our planetary system', NULL, NULL, 4500, 1, 3, 2);


--
-- Data for Name: star_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_type VALUES (1, 'o-blue', NULL);
INSERT INTO public.star_type VALUES (2, 'b-blue', NULL);
INSERT INTO public.star_type VALUES (3, 'a-blue-white', NULL);
INSERT INTO public.star_type VALUES (4, 'f-blue-white', NULL);
INSERT INTO public.star_type VALUES (5, 'g-white-yellow', NULL);
INSERT INTO public.star_type VALUES (6, 'k-orrange-red', NULL);
INSERT INTO public.star_type VALUES (7, 'm-red', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_type_galaxy_type_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 60, true);


--
-- Name: moon_type_moon_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_type_moon_type_id_seq', 5, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 2, true);


--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_type_planet_type_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 2, true);


--
-- Name: star_type_star_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_type_star_type_id_seq', 7, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_type galaxy_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_name_key UNIQUE (name);


--
-- Name: galaxy_type galaxy_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_pkey PRIMARY KEY (galaxy_type_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon_type moon_type_moon_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_type
    ADD CONSTRAINT moon_type_moon_type_name_key UNIQUE (name);


--
-- Name: moon_type moon_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_type
    ADD CONSTRAINT moon_type_pkey PRIMARY KEY (moon_type_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet_type planet_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_name_key UNIQUE (name);


--
-- Name: planet_type planet_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_pkey PRIMARY KEY (planet_type_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star_type star_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_type
    ADD CONSTRAINT star_type_name_key UNIQUE (name);


--
-- Name: star_type star_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_type
    ADD CONSTRAINT star_type_pkey PRIMARY KEY (star_type_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

