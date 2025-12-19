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
    name character varying(100) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric(20,2)
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
    name character varying(100) NOT NULL,
    planet_id integer,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric(20,2)
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
    name character varying(100) NOT NULL,
    star_id integer,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric(20,2)
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
    description text
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
    name character varying(100) NOT NULL,
    galaxy_id integer,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric(20,2)
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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', true, true, 13600, 0.00);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest spiral galaxy', false, true, 10000, 2537000.00);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Small spiral galaxy', false, true, 12000, 3000000.00);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'Bright galaxy with a large bulge', false, true, 13000, 29000000.00);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'Famous interacting spiral galaxy', false, true, 14000, 23000000.00);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 'Giant elliptical galaxy with a black hole', false, true, 15000, 53000000.00);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 'Earth’s natural satellite', false, true, 4500, 0.38);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 'Innermost moon of Mars', false, true, 4500, 225.00);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 'Outer moon of Mars', false, true, 4500, 225.00);
INSERT INTO public.moon VALUES (4, 'Io', 5, 'Volcanically active moon of Jupiter', false, true, 4500, 628.00);
INSERT INTO public.moon VALUES (5, 'Europa', 5, 'Icy moon of Jupiter with subsurface ocean', false, true, 4500, 628.00);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 'Largest moon in the solar system', false, true, 4500, 628.00);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 'Heavily cratered moon of Jupiter', false, true, 4500, 628.00);
INSERT INTO public.moon VALUES (8, 'Titan', 6, 'Largest moon of Saturn, thick atmosphere', false, true, 4500, 1275.00);
INSERT INTO public.moon VALUES (9, 'Rhea', 6, 'Second largest moon of Saturn', false, true, 4500, 1275.00);
INSERT INTO public.moon VALUES (10, 'Iapetus', 6, 'Two‑toned moon of Saturn', false, true, 4500, 1275.00);
INSERT INTO public.moon VALUES (11, 'Dione', 6, 'Icy moon of Saturn', false, true, 4500, 1275.00);
INSERT INTO public.moon VALUES (12, 'Tethys', 6, 'Saturnian moon with large impact crater', false, true, 4500, 1275.00);
INSERT INTO public.moon VALUES (13, 'Enceladus', 6, 'Saturn moon with geysers', false, true, 4500, 1275.00);
INSERT INTO public.moon VALUES (14, 'Miranda', 7, 'Small moon of Uranus with extreme terrain', false, true, 4500, 2720.00);
INSERT INTO public.moon VALUES (15, 'Ariel', 7, 'Bright moon of Uranus', false, true, 4500, 2720.00);
INSERT INTO public.moon VALUES (16, 'Umbriel', 7, 'Dark moon of Uranus', false, true, 4500, 2720.00);
INSERT INTO public.moon VALUES (17, 'Titania', 7, 'Largest moon of Uranus', false, true, 4500, 2720.00);
INSERT INTO public.moon VALUES (18, 'Oberon', 7, 'Second largest moon of Uranus', false, true, 4500, 2720.00);
INSERT INTO public.moon VALUES (19, 'Triton', 8, 'Largest moon of Neptune, retrograde orbit', false, true, 4500, 4350.00);
INSERT INTO public.moon VALUES (20, 'Nereid', 8, 'Irregular moon of Neptune', false, true, 4500, 4350.00);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 'The only known planet with life', true, true, 4500, 0.00);
INSERT INTO public.planet VALUES (2, 'Mars', 1, 'The red planet, potential for past life', false, true, 4500, 225.00);
INSERT INTO public.planet VALUES (3, 'Venus', 1, 'Hot planet with thick atmosphere', false, true, 4500, 42.00);
INSERT INTO public.planet VALUES (4, 'Mercury', 1, 'Smallest planet, closest to the Sun', false, true, 4500, 77.00);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 'Gas giant with many moons', false, true, 4500, 628.00);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 'Gas giant with iconic rings', false, true, 4500, 1275.00);
INSERT INTO public.planet VALUES (7, 'Proxima b', 2, 'Exoplanet orbiting Proxima Centauri', false, true, 4800, 4.24);
INSERT INTO public.planet VALUES (8, 'Proxima c', 2, 'Second exoplanet in Proxima system', false, true, 4800, 4.24);
INSERT INTO public.planet VALUES (9, 'Sirius b', 3, 'White dwarf companion to Sirius A', false, true, 120, 8.60);
INSERT INTO public.planet VALUES (10, 'Betelgeuse b', 4, 'Hypothetical planet around Betelgeuse', false, true, 8000, 642.50);
INSERT INTO public.planet VALUES (11, 'Rigel b', 5, 'Hypothetical planet around Rigel', false, true, 8000, 860.00);
INSERT INTO public.planet VALUES (12, 'Alpha Centauri Bb', 6, 'Exoplanet candidate in Alpha Centauri system', false, true, 5000, 4.37);


--
-- Data for Name: planet_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_type VALUES (1, 'Terrestrial', 'Rocky planets with solid surfaces, like Earth and Mars');
INSERT INTO public.planet_type VALUES (2, 'Gas Giant', 'Large planets composed mainly of hydrogen and helium, like Jupiter and Saturn');
INSERT INTO public.planet_type VALUES (3, 'Ice Giant', 'Planets with icy compositions and thick atmospheres, like Uranus and Neptune');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'Main sequence star at the center of our solar system', true, true, 4600, 0.00);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 2, 'Closest known star to the Sun', false, true, 4700, 4.24);
INSERT INTO public.star VALUES (3, 'Sirius', 3, 'Brightest star in the night sky', false, true, 242, 8.60);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 4, 'Red supergiant in Orion constellation', false, true, 8000, 642.50);
INSERT INTO public.star VALUES (5, 'Rigel', 5, 'Blue supergiant in Orion constellation', false, true, 8000, 860.00);
INSERT INTO public.star VALUES (6, 'Alpha Centauri A', 6, 'Part of the Alpha Centauri system', false, true, 5000, 4.37);


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
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_type_planet_type_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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

