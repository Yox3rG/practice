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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    round character varying(60) NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(60) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2018, 9, 1, 2, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (2, 2018, 7, 2, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (3, 2014, 14, 3, 2, 1, 'Quarter-Final');
INSERT INTO public.games VALUES (4, 2018, 9, 3, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (5, 2014, 8, 4, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (6, 2014, 16, 5, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (7, 2014, 20, 6, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (8, 2018, 16, 6, 1, 0, 'Semi-Final');
INSERT INTO public.games VALUES (9, 2018, 16, 7, 2, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (10, 2014, 3, 7, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (11, 2018, 23, 9, 2, 1, 'Semi-Final');
INSERT INTO public.games VALUES (12, 2018, 6, 9, 2, 0, 'Third Place');
INSERT INTO public.games VALUES (13, 2014, 24, 10, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (14, 2014, 14, 11, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (15, 2018, 6, 12, 3, 2, 'Eighth-Final');
INSERT INTO public.games VALUES (16, 2018, 23, 13, 3, 2, 'Quarter-Final');
INSERT INTO public.games VALUES (17, 2014, 18, 14, 3, 0, 'Third Place');
INSERT INTO public.games VALUES (18, 2014, 8, 14, 7, 1, 'Semi-Final');
INSERT INTO public.games VALUES (19, 2018, 6, 14, 2, 1, 'Quarter-Final');
INSERT INTO public.games VALUES (20, 2014, 18, 15, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (21, 2018, 14, 15, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (22, 2014, 8, 16, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (23, 2014, 6, 17, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (24, 2014, 20, 18, 1, 0, 'Semi-Final');
INSERT INTO public.games VALUES (25, 2018, 13, 19, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (26, 2018, 16, 20, 4, 3, 'Eighth-Final');
INSERT INTO public.games VALUES (27, 2014, 8, 20, 1, 0, 'Final');
INSERT INTO public.games VALUES (28, 2018, 23, 21, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (29, 2014, 20, 22, 1, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (30, 2018, 1, 22, 1, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (31, 2018, 16, 23, 4, 2, 'Final');
INSERT INTO public.games VALUES (32, 2014, 18, 24, 1, 0, 'Quarter-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1, 'Sweden');
INSERT INTO public.teams VALUES (2, 'Portugal');
INSERT INTO public.teams VALUES (3, 'Colombia');
INSERT INTO public.teams VALUES (4, 'Algeria');
INSERT INTO public.teams VALUES (5, 'Nigeria');
INSERT INTO public.teams VALUES (6, 'Belgium');
INSERT INTO public.teams VALUES (7, 'Uruguay');
INSERT INTO public.teams VALUES (8, 'Germany');
INSERT INTO public.teams VALUES (9, 'England');
INSERT INTO public.teams VALUES (10, 'Greece');
INSERT INTO public.teams VALUES (11, 'Chile');
INSERT INTO public.teams VALUES (12, 'Japan');
INSERT INTO public.teams VALUES (13, 'Russia');
INSERT INTO public.teams VALUES (14, 'Brazil');
INSERT INTO public.teams VALUES (15, 'Mexico');
INSERT INTO public.teams VALUES (16, 'France');
INSERT INTO public.teams VALUES (17, 'United States');
INSERT INTO public.teams VALUES (18, 'Netherlands');
INSERT INTO public.teams VALUES (19, 'Spain');
INSERT INTO public.teams VALUES (20, 'Argentina');
INSERT INTO public.teams VALUES (21, 'Denmark');
INSERT INTO public.teams VALUES (22, 'Switzerland');
INSERT INTO public.teams VALUES (23, 'Croatia');
INSERT INTO public.teams VALUES (24, 'Costa Rica');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 24, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fkey_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fkey_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fkey_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fkey_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

