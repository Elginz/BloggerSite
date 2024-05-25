--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    mass numeric NOT NULL,
    radius numeric NOT NULL,
    age_in_millions_of_years numeric NOT NULL
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    galaxy_type character varying,
    age_in_millions_of_years numeric,
    distance_from_earth integer NOT NULL
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
    name character varying NOT NULL,
    description text,
    moon_type character varying,
    age_in_millions_of_years numeric,
    distance_from_earth integer NOT NULL,
    has_life boolean,
    is_spherical boolean,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    planet_type character varying,
    age_in_millions_of_years numeric,
    distance_from_earth integer NOT NULL,
    has_life boolean,
    is_spherical boolean,
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
    name character varying NOT NULL,
    description text,
    star_type character varying,
    age_in_millions_of_years numeric,
    distance_from_earth integer NOT NULL,
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'Sagittarius A*', 'Supermassive black hole at the center of the Milky Way', 4000000, 0, 10000);
INSERT INTO public.blackhole VALUES (2, 'Cygnus X-1', 'First black hole candidate discovered', 15, 10, 7);
INSERT INTO public.blackhole VALUES (3, 'V616 Monocerotis', 'Black hole in a binary system with a red giant star', 9, 30, 20);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', 'Barred Spiral', 13600, 0);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest major galaxy to the Milky Way', 'Spiral', 9000, 2537000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Third-largest galaxy in Local Group', 'Spiral', 9000, 3000000);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Famous for its spiral structure', 'Spiral', 8000, 2300000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Known for its bright nucleus', 'Elliptical', 10000, 2900000);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 'Home to a supermassive black hole', 'Elliptical', 12000, 5300000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Callisto', 'A moon of Jupiter', 'Galilean', 4500, 1883000, false, true, 1);
INSERT INTO public.moon VALUES (2, 'Ganymede', 'A moon of Jupiter', 'Galilean', 4500, 1070400, false, true, 1);
INSERT INTO public.moon VALUES (3, 'Europa', 'A moon of Jupiter', 'Galilean', 4500, 671100, false, true, 1);
INSERT INTO public.moon VALUES (4, 'Io', 'A moon of Jupiter', 'Galilean', 4500, 421800, false, true, 1);
INSERT INTO public.moon VALUES (5, 'Titan', 'A moon of Saturn', 'Titanian', 4500, 1221870, false, true, 2);
INSERT INTO public.moon VALUES (6, 'Rhea', 'A moon of Saturn', 'Regular', 4500, 527040, false, true, 2);
INSERT INTO public.moon VALUES (7, 'Iapetus', 'A moon of Saturn', 'Regular', 4500, 3561300, false, true, 2);
INSERT INTO public.moon VALUES (8, 'Dione', 'A moon of Saturn', 'Regular', 4500, 377400, false, true, 2);
INSERT INTO public.moon VALUES (9, 'Triton', 'A moon of Neptune', 'Tritonian', 4500, 354760, false, true, 3);
INSERT INTO public.moon VALUES (10, 'Charon', 'A moon of Pluto', 'Regular', 4500, 19571, false, true, 4);
INSERT INTO public.moon VALUES (11, 'Enceladus', 'A moon of Saturn', 'Regular', 4500, 238040, false, true, 2);
INSERT INTO public.moon VALUES (12, 'Mimas', 'A moon of Saturn', 'Regular', 4500, 185520, false, true, 2);
INSERT INTO public.moon VALUES (13, 'Phoebe', 'A moon of Saturn', 'Regular', 4500, 12952000, false, true, 2);
INSERT INTO public.moon VALUES (14, 'Umbriel', 'A moon of Uranus', 'Regular', 4500, 266300, false, true, 5);
INSERT INTO public.moon VALUES (15, 'Ariel', 'A moon of Uranus', 'Regular', 4500, 191020, false, true, 5);
INSERT INTO public.moon VALUES (16, 'Miranda', 'A moon of Uranus', 'Regular', 4500, 129780, false, true, 5);
INSERT INTO public.moon VALUES (17, 'Titania', 'A moon of Uranus', 'Regular', 4500, 435910, false, true, 5);
INSERT INTO public.moon VALUES (18, 'Oberon', 'A moon of Uranus', 'Regular', 4500, 583520, false, true, 5);
INSERT INTO public.moon VALUES (19, 'Tethys', 'A moon of Saturn', 'Regular', 4500, 294660, false, true, 2);
INSERT INTO public.moon VALUES (20, 'Hyperion', 'A moon of Saturn', 'Regular', 4500, 1481000, false, true, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'The third planet from the Sun', 'Terrestrial', 4500, 0, true, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'The fourth planet from the Sun', 'Terrestrial', 4500, 225000000, false, true, 1);
INSERT INTO public.planet VALUES (3, 'Proxima b', 'An exoplanet orbiting the star Proxima Centauri', 'Exoplanet', 5000, 42400, false, true, 2);
INSERT INTO public.planet VALUES (4, 'Rigel b', 'A hypothetical planet orbiting Rigel', 'Gas Giant', 6000, 860, false, true, 4);
INSERT INTO public.planet VALUES (5, 'Vega c', 'A hypothetical planet orbiting Vega', 'Terrestrial', 4000, 25800, false, true, 5);
INSERT INTO public.planet VALUES (6, 'Sirius d', 'A hypothetical planet orbiting Sirius', 'Gas Giant', 3000, 8600, false, true, 6);
INSERT INTO public.planet VALUES (7, 'Alpha Centauri Bb', 'An exoplanet orbiting Alpha Centauri B', 'Exoplanet', 5000, 4400, false, true, 2);
INSERT INTO public.planet VALUES (8, 'Tau Ceti e', 'An exoplanet orbiting Tau Ceti', 'Exoplanet', 6000, 11900000, false, true, 5);
INSERT INTO public.planet VALUES (9, 'Gliese 581g', 'An exoplanet orbiting Gliese 581', 'Exoplanet', 8000, 20100000, false, true, 6);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 'An exoplanet orbiting Kepler-22', 'Super-Earth', 5000, 600000, false, true, 4);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', 'An exoplanet orbiting HD 209458', 'Hot Jupiter', 4000, 100000, false, true, 5);
INSERT INTO public.planet VALUES (12, 'Kepler-69c', 'An exoplanet orbiting Kepler-69', 'Super-Earth', 7000, 2100000, false, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The star at the center of the Solar System', 'G-type main-sequence', 4600, 0, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Closest known star to the Sun', 'Red Dwarf', 4500, 42400, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'A red supergiant star in the Milky Way', 'Red Supergiant', 10000, 642, 1);
INSERT INTO public.star VALUES (4, 'Rigel', 'The brightest star in the constellation Orion', 'Blue Supergiant', 8000, 863, 2);
INSERT INTO public.star VALUES (5, 'Vega', 'The fifth-brightest star in the night sky', 'A-type main-sequence', 4500, 25800, 2);
INSERT INTO public.star VALUES (6, 'Sirius', 'The brightest star in the night sky', 'A-type main-sequence', 3000, 8600, 2);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: blackhole blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_key UNIQUE (name);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


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

