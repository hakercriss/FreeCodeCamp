--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    name character varying(25) NOT NULL,
    galaxy_types character varying(20),
    description text,
    age_in_millions_of_years integer
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
-- Name: magnitude; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.magnitude (
    name character varying(20) NOT NULL,
    magnitud integer NOT NULL,
    magnitude_id integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.magnitude OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(25) NOT NULL,
    is_spherical boolean,
    distance_from_earth integer,
    age_in_millions_of_years integer
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
    name character varying(25) NOT NULL,
    planet_types character varying(20),
    has_life boolean,
    description text
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
    name character varying(25) NOT NULL,
    is_spherical boolean,
    distance_from_earth numeric(4,2),
    age_in_millions_of_years integer,
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

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Espiral', 'Esta cerca a la tierra', 2500000);
INSERT INTO public.galaxy VALUES (2, 'Remolino', 'espiral', 'Tiene estructura de brazos espirales', 23000000);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 'epíptica', 'tiene un disco de polvo oscuro que rode su núcleo brillante', 28000000);
INSERT INTO public.galaxy VALUES (4, 'Magallanes', 'enana irregular', 'Es una de las galaxias más cercanas a la Vía láctea', 160000);
INSERT INTO public.galaxy VALUES (6, 'Cigarro', 'galaxia irregular', 'Caracterizado por su forma alargada y intensa formación estelar', 12000000);
INSERT INTO public.galaxy VALUES (5, 'Triángulo', 'espiral', 'Es la tercera galaxia más grande', 3000000);


--
-- Data for Name: magnitude; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.magnitude VALUES ('tierra', 2, 1, 3);
INSERT INTO public.magnitude VALUES ('mercurio', 5, 2, 1);
INSERT INTO public.magnitude VALUES ('venus', 7, 3, 2);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', true, 384400, 4500000);
INSERT INTO public.moon VALUES (2, 'Fobos', false, 9377, 4300000);
INSERT INTO public.moon VALUES (3, 'Deimos', false, 23460, 4300000);
INSERT INTO public.moon VALUES (4, 'Io', true, 628300, 4500000);
INSERT INTO public.moon VALUES (5, 'Europa', true, 628300, 4500000);
INSERT INTO public.moon VALUES (7, 'moon1', false, 52000, 45000000);
INSERT INTO public.moon VALUES (8, 'moon2', false, 52000, 45000000);
INSERT INTO public.moon VALUES (9, 'moon3', false, 52000, 45000000);
INSERT INTO public.moon VALUES (10, 'moon4', false, 52000, 45000000);
INSERT INTO public.moon VALUES (11, 'moon5', false, 52000, 45000000);
INSERT INTO public.moon VALUES (12, 'moon6', false, 52000, 45000000);
INSERT INTO public.moon VALUES (13, 'moon7', false, 52000, 45000000);
INSERT INTO public.moon VALUES (14, 'moon8', false, 52000, 45000000);
INSERT INTO public.moon VALUES (15, 'moon9', false, 52000, 45000000);
INSERT INTO public.moon VALUES (16, 'moon10', false, 52000, 45000000);
INSERT INTO public.moon VALUES (17, 'moon11', false, 52000, 45000000);
INSERT INTO public.moon VALUES (18, 'moon12', false, 52000, 45000000);
INSERT INTO public.moon VALUES (19, 'moon13', false, 52000, 45000000);
INSERT INTO public.moon VALUES (20, 'moon14', false, 52000, 45000000);
INSERT INTO public.moon VALUES (21, 'moon15', false, 52000, 45000000);
INSERT INTO public.moon VALUES (22, 'moon16', false, 52000, 45000000);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', 'Rocoso', false, 'planeta que tiene un orbita rapida alrededor del sol');
INSERT INTO public.planet VALUES (2, 'Venus', 'terrestre', false, 'planeta compuesto por rocas y metales');
INSERT INTO public.planet VALUES (3, 'Tierra', 'terrestre', true, 'planeta con una composicion rocosa y una atmoesfera rica en oxigeno');
INSERT INTO public.planet VALUES (4, 'Marte', 'terrestre', false, 'Conocido como planeta rojo por su superficie rocosa');
INSERT INTO public.planet VALUES (5, 'Jupiter', 'gaseoso', false, 'Compuesto por hidrógeno y helio');
INSERT INTO public.planet VALUES (6, 'Saturno', 'gaseoso', false, 'Con anillos gigantes compuestos por helio');
INSERT INTO public.planet VALUES (7, 'Urano', 'gaseoso', false, 'compuesto por hidrógeno y helio');
INSERT INTO public.planet VALUES (8, 'Neptuno', 'gaseoso', false, 'compuesto por hidrógeno y helio');
INSERT INTO public.planet VALUES (9, 'Kepler-452b', 'terrestre', false, 'Es un planeta súper rocoso');
INSERT INTO public.planet VALUES (10, 'hd 209458 b', 'gaseoso', false, 'un gigante gaseoso que orbita cerca de su estrella');
INSERT INTO public.planet VALUES (11, 'Trappist-1e', 'terrestre', false, 'Es un planeta súper rocoso similar a la tierra');
INSERT INTO public.planet VALUES (12, 'Centauri b', 'terrestre', false, 'Es rocoso y puede tener una zona habitable de su estrella');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Barnard', true, 5.96, 10000000, 2);
INSERT INTO public.star VALUES (2, 'Polar', true, 43.30, 50000000, 2);
INSERT INTO public.star VALUES (3, 'sirius', false, 8.60, 300000000, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', true, 6.40, 10000000, 3);
INSERT INTO public.star VALUES (5, 'Rigel', true, 8.60, 9000000, 3);
INSERT INTO public.star VALUES (6, 'Antares', true, 5.50, 7000000, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: magnitude magnitude_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.magnitude
    ADD CONSTRAINT magnitude_name_key UNIQUE (name);


--
-- Name: magnitude magnitude_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.magnitude
    ADD CONSTRAINT magnitude_pkey PRIMARY KEY (magnitude_id);


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
-- Name: magnitude magnitude_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.magnitude
    ADD CONSTRAINT magnitude_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
