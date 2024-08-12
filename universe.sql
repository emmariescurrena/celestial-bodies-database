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
-- Name: country; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.country (
    country_id integer NOT NULL,
    name character varying(256) NOT NULL,
    description text NOT NULL,
    population numeric,
    planet_id integer
);


ALTER TABLE public.country OWNER TO freecodecamp;

--
-- Name: country_country_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.country_country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.country_country_id_seq OWNER TO freecodecamp;

--
-- Name: country_country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.country_country_id_seq OWNED BY public.country.country_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(256) NOT NULL,
    description text NOT NULL,
    stars_quantity numeric,
    has_life boolean
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
    name character varying(256) NOT NULL,
    description text NOT NULL,
    distance_from_planet_in_km integer,
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
    name character varying(256) NOT NULL,
    description text NOT NULL,
    star_id integer,
    age_in_millions integer
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
    name character varying(256) NOT NULL,
    description text NOT NULL,
    bigger_than_sun boolean,
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
-- Name: country country_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country ALTER COLUMN country_id SET DEFAULT nextval('public.country_country_id_seq'::regclass);


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
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.country VALUES (1, 'Argentina', 'Che, boludo, cebate un mate', 45000000, 1);
INSERT INTO public.country VALUES (2, 'EE.UU.', 'America, for his habitants', 333000000, 1);
INSERT INTO public.country VALUES (3, 'Japan', 'Anime, good music and arigato kusaimas', 125000000, 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Where I live', 100000000000, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Good name', 1000000000000, true);
INSERT INTO public.galaxy VALUES (3, 'Canis Major Dwarf', 'Sounds like medieval fantasy', 1000000000, true);
INSERT INTO public.galaxy VALUES (4, 'Cygnus A', 'It sounds like there are more Cygnus out there', 10, true);
INSERT INTO public.galaxy VALUES (5, 'Maffei 1', 'Brother of Maffei 2', 100000000, true);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 'French discovering, I guess', 1000000000000, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Europa', 'Final countdown starts now', 670000, 5);
INSERT INTO public.moon VALUES (2, 'Io', 'Good Paladins champion', 420000, 5);
INSERT INTO public.moon VALUES (3, 'Thelxinoe', 'Why this moon has a face on google?', 21000000, 5);
INSERT INTO public.moon VALUES (4, 'Triton', 'Poseidon''s son and Little Mermaid''s father', 350000, 7);
INSERT INTO public.moon VALUES (5, 'Hippocamp', 'Seahorse', 105000, 7);
INSERT INTO public.moon VALUES (6, 'Neso', 'The centaur that killed Heracles', 49000000, 7);
INSERT INTO public.moon VALUES (7, 'Titania', 'It''s big for sure', 435000000, 11);
INSERT INTO public.moon VALUES (8, 'Miranda', 'Ya lo sabía', 129000, 11);
INSERT INTO public.moon VALUES (9, 'Ariel', 'Why is your father on Neptune?', 190000, 11);
INSERT INTO public.moon VALUES (10, 'Prospero', 'It has a good econoomy', 16000000, 11);
INSERT INTO public.moon VALUES (11, 'Juliet', 'Romeo''s lover', 64000, 11);
INSERT INTO public.moon VALUES (12, 'Francisco', 'Argentinian pope', 4300000, 11);
INSERT INTO public.moon VALUES (13, 'Titan', 'It can be Chronos the Saturn''s moon', 1200000, 10);
INSERT INTO public.moon VALUES (14, 'Hyperion', 'Titan, but not the moon', 1500000, 10);
INSERT INTO public.moon VALUES (15, 'Rhea', 'Chronos''s mother', 527000, 10);
INSERT INTO public.moon VALUES (16, 'Skoll', 'Mispelling of skull', 17000000, 10);
INSERT INTO public.moon VALUES (17, 'Hydra', 'Monster with many heads', 64000, 8);
INSERT INTO public.moon VALUES (18, 'Charon', 'Not to confuse with Sharon', 19000, 8);
INSERT INTO public.moon VALUES (19, 'Phobos', 'Pavor, god of fear and panic', 6000, 2);
INSERT INTO public.moon VALUES (20, 'Deimos', 'Terror, god of dread and terror', 23000, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Greener one', 6, 4500);
INSERT INTO public.planet VALUES (2, 'Mars', 'Ares, god of war', 6, 4600);
INSERT INTO public.planet VALUES (4, 'Venus', 'Aphrodite, goddess of love', 6, 4500);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Zeus, god of thunder', 6, 4600);
INSERT INTO public.planet VALUES (7, 'Neptune', 'Poseidon, god of water related stuff', 6, 4500);
INSERT INTO public.planet VALUES (8, 'Pluto', 'Hades, god of the underworld and the dead', 6, 4500);
INSERT INTO public.planet VALUES (9, 'Mercury', 'Hermes, god of commerce (and thieves)', 6, 4500);
INSERT INTO public.planet VALUES (10, 'Saturn', 'Chronos, sons eater', 6, 4500);
INSERT INTO public.planet VALUES (11, 'Uranus', 'Caelus, the sky and Saturn father', 6, 4500);
INSERT INTO public.planet VALUES (12, 'Gaia', 'Terra, the earth', 6, 4500);
INSERT INTO public.planet VALUES (13, 'Belona', 'Only for the romans, the war goddess', 6, 4500);
INSERT INTO public.planet VALUES (14, 'Nemesis', 'Némesis, goddess of retribution', 6, 4500);
INSERT INTO public.planet VALUES (15, 'Apollo', 'Apollo, god of arts and healing', 6, 4500);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Antares', 'Antares peek', true, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 'That''s a great satellarknight', true, 1);
INSERT INTO public.star VALUES (3, 'Stephenson 2', 'Son of Stephen', true, 1);
INSERT INTO public.star VALUES (4, 'Pistol Star', 'Pium pium', true, 1);
INSERT INTO public.star VALUES (5, 'Polaris', 'Good Megadeth song', true, 1);
INSERT INTO public.star VALUES (6, 'Sun', 'It makes my day brighter', false, 1);


--
-- Name: country_country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.country_country_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: country country_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_name_key UNIQUE (name);


--
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (country_id);


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
-- Name: country country_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

