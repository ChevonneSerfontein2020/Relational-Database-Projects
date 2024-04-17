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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(255) NOT NULL,
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    moon_id integer NOT NULL
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    speed integer,
    description text,
    name character varying(255) NOT NULL,
    star_id integer
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
    name character varying(255) NOT NULL,
    contains_water boolean DEFAULT false NOT NULL,
    planet_id integer NOT NULL,
    id_code character varying(255) NOT NULL
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
    name character varying(255) NOT NULL,
    population numeric,
    inhabitable boolean DEFAULT false NOT NULL,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    radius integer NOT NULL,
    color character varying(255),
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Orion', 1, 1, 1);
INSERT INTO public.constellation VALUES (2, 'Ursa Major', 2, 2, 2);
INSERT INTO public.constellation VALUES (3, 'Leo', 3, 3, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 200, 'A spiral galaxy containing our solar system.', 'Milky Way', 11);
INSERT INTO public.galaxy VALUES (2, 250, 'A spiral galaxy closest to the Milky Way.', 'Andromeda', 11);
INSERT INTO public.galaxy VALUES (3, 180, 'A smaller spiral galaxy near Andromeda.', 'Triangulum', 11);
INSERT INTO public.galaxy VALUES (4, 300, 'An elliptical galaxy located in the Virgo cluster.', 'Messier 87', 11);
INSERT INTO public.galaxy VALUES (5, 220, 'A peculiar galaxy with a prominent dust lane.', 'Centaurus A', 11);
INSERT INTO public.galaxy VALUES (6, 190, 'A spiral galaxy with a prominent bulge and dust lane.', 'Sombrero', 11);
INSERT INTO public.galaxy VALUES (7, 200, 'A spiral galaxy containing our solar system.', 'Milky Way', 11);
INSERT INTO public.galaxy VALUES (8, 250, 'A spiral galaxy closest to the Milky Way.', 'Andromeda', 11);
INSERT INTO public.galaxy VALUES (9, 180, 'A smaller spiral galaxy near Andromeda.', 'Triangulum', 11);
INSERT INTO public.galaxy VALUES (10, 300, 'An elliptical galaxy located in the Virgo cluster.', 'Messier 87', 11);
INSERT INTO public.galaxy VALUES (11, 220, 'A peculiar galaxy with a prominent dust lane.', 'Centaurus A', 11);
INSERT INTO public.galaxy VALUES (12, 190, 'A spiral galaxy with a prominent bulge and dust lane.', 'Sombrero', 11);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', true, 3, 'Luna');
INSERT INTO public.moon VALUES (2, 'Phobos', false, 4, 'Phobos');
INSERT INTO public.moon VALUES (3, 'Deimos', false, 4, 'Deimos');
INSERT INTO public.moon VALUES (4, 'Io', true, 5, 'Io');
INSERT INTO public.moon VALUES (5, 'Europa', true, 5, 'Europa');
INSERT INTO public.moon VALUES (6, 'Ganymede', true, 5, 'Ganymede');
INSERT INTO public.moon VALUES (7, 'Callisto', true, 5, 'Callisto');
INSERT INTO public.moon VALUES (8, 'Titan', true, 6, 'Titan');
INSERT INTO public.moon VALUES (9, 'Enceladus', true, 6, 'Enceladus');
INSERT INTO public.moon VALUES (10, 'Triton', true, 8, 'Triton');
INSERT INTO public.moon VALUES (11, 'Charon', false, 9, 'Charon');
INSERT INTO public.moon VALUES (12, 'Proxima Centauri b I', false, 10, 'Proximab I');
INSERT INTO public.moon VALUES (13, 'Proxima Centauri b II', false, 10, 'Proximab II');
INSERT INTO public.moon VALUES (14, 'Alpha Centauri Bb I', false, 11, 'ACBb I');
INSERT INTO public.moon VALUES (15, 'Alpha Centauri Bb II', false, 11, 'ACBb II');
INSERT INTO public.moon VALUES (16, 'Barnard''s Star b I', false, 12, 'Bsb I');
INSERT INTO public.moon VALUES (17, 'Barnard''s Star b II', false, 12, 'Bsb II');
INSERT INTO public.moon VALUES (18, 'Andromeda I I', false, 13, 'AndI I');
INSERT INTO public.moon VALUES (19, 'Andromeda I II', false, 13, 'AndI II');
INSERT INTO public.moon VALUES (20, 'Triangulum I I', false, 15, 'TriI I');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 0, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 7858000000, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 0, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 0, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 0, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 0, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 0, false, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 0, false, 1);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', 0, true, 2);
INSERT INTO public.planet VALUES (11, 'Alpha Centauri Bb', 0, true, 4);
INSERT INTO public.planet VALUES (12, 'Barnard''s Star b', 0, true, 5);
INSERT INTO public.planet VALUES (13, 'Andromeda I', 0, false, 10);
INSERT INTO public.planet VALUES (14, 'Andromeda II', 0, false, 10);
INSERT INTO public.planet VALUES (15, 'Triangulum I', 0, false, 9);
INSERT INTO public.planet VALUES (16, 'Triangulum II', 0, false, 9);
INSERT INTO public.planet VALUES (17, 'Virgo I', 0, false, 4);
INSERT INTO public.planet VALUES (18, 'Virgo II', 0, false, 4);
INSERT INTO public.planet VALUES (19, 'Centaurus A I', 0, false, 5);
INSERT INTO public.planet VALUES (20, 'Centaurus A II', 0, false, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 696340, 'Yellow', 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 118686, 'Red', 8);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 1169460, 'Yellow', 8);
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', 840128, 'Orange', 8);
INSERT INTO public.star VALUES (5, 'Barnard''s Star', 118946, 'Red', 2);
INSERT INTO public.star VALUES (6, 'Sirius A', 1561200, 'White', 1);
INSERT INTO public.star VALUES (7, 'Sirius B', 181060, 'White', 1);
INSERT INTO public.star VALUES (8, 'Vega', 2375030, 'Blue-White', 1);
INSERT INTO public.star VALUES (9, 'Pollux', 928672, 'Orange', 1);
INSERT INTO public.star VALUES (10, 'Arcturus', 2569680, 'Red Giant', 1);
INSERT INTO public.star VALUES (11, 'Betelgeuse', 6998400, 'Red Supergiant', 1);
INSERT INTO public.star VALUES (12, 'Rigel', 1231200, 'Blue', 1);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 12, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 8, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_code_key UNIQUE (id_code);


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
-- Name: star fk_galaxy_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: galaxy fk_galaxy_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_galaxy_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: constellation fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT fk_moon FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: constellation fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: constellation fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

