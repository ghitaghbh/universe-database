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
    age_in_millions_of_years integer,
    centuries integer,
    description text,
    distance_from_earth numeric,
    has_life boolean NOT NULL
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    centuries integer,
    description text,
    distance_from_earth numeric,
    has_life boolean NOT NULL,
    planet_id integer
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
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    size integer,
    weight integer,
    name character varying(30) NOT NULL
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    centuries integer,
    description text,
    distance_from_earth numeric,
    has_life boolean NOT NULL,
    star_id integer
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    centuries integer,
    description text,
    distance_from_earth numeric,
    has_life boolean NOT NULL,
    galaxy_id integer
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_info_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 199, 400, 'our home galaxy', 10000000000000, true);
INSERT INTO public.galaxy VALUES (2, 'andromeda', 60, 5444, 'closest to our galaxy', 1000000000000, false);
INSERT INTO public.galaxy VALUES (3, 'whirlpool', 50, 55, 'classical spiral galaxy', 4560000000, false);
INSERT INTO public.galaxy VALUES (4, 'pinwheel', 45, 78, 'large face-on spiral galaxy', 4000000000, false);
INSERT INTO public.galaxy VALUES (5, 'sombrero', 57, 4576, 'bright galaxy', 3900000, true);
INSERT INTO public.galaxy VALUES (6, 'cigar', 23, 87, 'cigar shaped galaxy', 234505678, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (17, 'moon2', 40, 13224, 'the second moon', 0, true, 1);
INSERT INTO public.moon VALUES (18, 'moon3', 45, 78, 'the third moon', 4000000000, false, 1);
INSERT INTO public.moon VALUES (19, 'moon4', 57, 4576, 'the fourth moon', 3900000, true, 1);
INSERT INTO public.moon VALUES (20, 'moon5', 23, 87, 'the fifth moon', 234505678, false, 1);
INSERT INTO public.moon VALUES (21, 'moon6', 234, 567, 'the sixth moon', 2356578, false, 1);
INSERT INTO public.moon VALUES (22, 'moon7', 23, 76, 'the seventh row', 460000000, false, 1);
INSERT INTO public.moon VALUES (23, 'moon8', 12, 67, 'the eigth moon', 34000000000, false, 1);
INSERT INTO public.moon VALUES (24, 'moon9', 34, 234, 'the ninth moon', 24565785678, false, 1);
INSERT INTO public.moon VALUES (25, 'moon1', 234, 578, 'the first moon', 36500000, false, 1);
INSERT INTO public.moon VALUES (26, 'moon10', 23, 456, 'the tenth moon', 23000000, false, 1);
INSERT INTO public.moon VALUES (27, 'moon11', 25, 46, 'the eleventh moon', 230000, false, 1);
INSERT INTO public.moon VALUES (28, 'moon12', 57, 587, 'the twelve moon', 270000, false, 1);
INSERT INTO public.moon VALUES (29, 'moon13', 47, 2497, 'the thirteenth moon', 230000, true, 1);
INSERT INTO public.moon VALUES (30, 'moon14', 239, 397, 'the fourteenth moon', 36800000, false, 1);
INSERT INTO public.moon VALUES (31, 'moon15', 276376, 38347, 'the fifteenth moon', 2800000, true, 1);
INSERT INTO public.moon VALUES (32, 'moon16', 37, 299, 'the sixteenth moon', 890000, false, 1);
INSERT INTO public.moon VALUES (33, 'moon17', 3, 666, 'the seventeeth moon', 90000, false, 1);
INSERT INTO public.moon VALUES (34, 'moon18', 387, 29043, 'the eighteeth moon', 3900000, false, 1);
INSERT INTO public.moon VALUES (35, 'moon19', 368, 497, 'the nineteeth moon', 190000, true, 1);
INSERT INTO public.moon VALUES (36, 'moon20', 28, 202, 'the 20th moon', 2920, false, 1);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 288, 292, 'haha');
INSERT INTO public.more_info VALUES (2, 88, 27, 'hihi');
INSERT INTO public.more_info VALUES (3, 90, 1, 'hoho');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 40, 13224, 'our planet', 0, true, 6);
INSERT INTO public.planet VALUES (2, 'moon', 45, 78, 'the moon ', 4000000000, false, 6);
INSERT INTO public.planet VALUES (3, 'neptune', 57, 4576, 'big', 3900000, true, 5);
INSERT INTO public.planet VALUES (4, 'mars', 23, 87, 'red', 234505678, false, 5);
INSERT INTO public.planet VALUES (5, 'mercury', 234, 567, 'mercury planet', 2356578, false, 5);
INSERT INTO public.planet VALUES (6, 'venus', 23, 76, 'venus planet', 460000000, false, 5);
INSERT INTO public.planet VALUES (7, 'jupiter', 12, 67, 'jupiter planet', 34000000000, false, 5);
INSERT INTO public.planet VALUES (8, 'saturn', 34, 234, 'saturn planet', 24565785678, false, 3);
INSERT INTO public.planet VALUES (9, 'uranus
', 234, 578, 'uranus planet', 36500000, false, 4);
INSERT INTO public.planet VALUES (10, 'eris', 40, 13224, 'eris planet', 0, true, 1);
INSERT INTO public.planet VALUES (11, 'pluto', 45, 78, 'pluto planet', 4000000000, false, 5);
INSERT INTO public.planet VALUES (12, 'ceres', 57, 4576, 'ceres planet', 3900000, true, 2);
INSERT INTO public.planet VALUES (13, 'rigel', 40, 13224, 'rigel star', 0, true, 2);
INSERT INTO public.planet VALUES (14, 'vega', 45, 78, 'vega star', 4000000000, false, 2);
INSERT INTO public.planet VALUES (15, 'arcturus', 57, 4576, 'arcturus star', 3900000, true, 2);
INSERT INTO public.planet VALUES (16, 'canopus', 23, 87, 'canopus star', 234505678, false, 2);
INSERT INTO public.planet VALUES (17, 'polaris', 234, 567, 'polaris star', 2356578, false, 2);
INSERT INTO public.planet VALUES (18, 'sirius', 23, 76, 'sirius star', 460000000, false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'rigel', 40, 13224, 'rigel star', 0, true, 2);
INSERT INTO public.star VALUES (2, 'vega', 45, 78, 'vega star', 4000000000, false, 2);
INSERT INTO public.star VALUES (3, 'arcturus', 57, 4576, 'arcturus star', 3900000, true, 2);
INSERT INTO public.star VALUES (4, 'canopus', 23, 87, 'canopus star', 234505678, false, 1);
INSERT INTO public.star VALUES (5, 'polaris', 234, 567, 'polaris star', 2356578, false, 5);
INSERT INTO public.star VALUES (6, 'sirius', 23, 76, 'sirius star', 460000000, false, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 36, true);


--
-- Name: more_info_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_info_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 18, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: moon const_uniq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT const_uniq UNIQUE (name);


--
-- Name: galaxy const_uniq1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT const_uniq1 UNIQUE (name);


--
-- Name: planet const_uniq2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT const_uniq2 UNIQUE (name);


--
-- Name: star const_uniq3; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT const_uniq3 UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_info more_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_name_key UNIQUE (name);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

