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
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    name character varying(20) NOT NULL
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

INSERT INTO public.games VALUES (345, 2018, 'Final', 369, 370, 4, 2);
INSERT INTO public.games VALUES (346, 2018, 'Third Place', 371, 372, 2, 0);
INSERT INTO public.games VALUES (347, 2018, 'Semi-Final', 370, 372, 2, 1);
INSERT INTO public.games VALUES (348, 2018, 'Semi-Final', 369, 371, 1, 0);
INSERT INTO public.games VALUES (349, 2018, 'Quarter-Final', 370, 373, 3, 2);
INSERT INTO public.games VALUES (350, 2018, 'Quarter-Final', 372, 374, 2, 0);
INSERT INTO public.games VALUES (351, 2018, 'Quarter-Final', 371, 375, 2, 1);
INSERT INTO public.games VALUES (352, 2018, 'Quarter-Final', 369, 376, 2, 0);
INSERT INTO public.games VALUES (353, 2018, 'Eighth-Final', 372, 377, 2, 1);
INSERT INTO public.games VALUES (354, 2018, 'Eighth-Final', 374, 378, 1, 0);
INSERT INTO public.games VALUES (355, 2018, 'Eighth-Final', 371, 379, 3, 2);
INSERT INTO public.games VALUES (356, 2018, 'Eighth-Final', 375, 380, 2, 0);
INSERT INTO public.games VALUES (357, 2018, 'Eighth-Final', 370, 381, 2, 1);
INSERT INTO public.games VALUES (358, 2018, 'Eighth-Final', 373, 382, 2, 1);
INSERT INTO public.games VALUES (359, 2018, 'Eighth-Final', 376, 383, 2, 1);
INSERT INTO public.games VALUES (360, 2018, 'Eighth-Final', 369, 384, 4, 3);
INSERT INTO public.games VALUES (361, 2014, 'Final', 385, 384, 1, 0);
INSERT INTO public.games VALUES (362, 2014, 'Third Place', 386, 375, 3, 0);
INSERT INTO public.games VALUES (363, 2014, 'Semi-Final', 384, 386, 1, 0);
INSERT INTO public.games VALUES (364, 2014, 'Semi-Final', 385, 375, 7, 1);
INSERT INTO public.games VALUES (365, 2014, 'Quarter-Final', 386, 387, 1, 0);
INSERT INTO public.games VALUES (366, 2014, 'Quarter-Final', 384, 371, 1, 0);
INSERT INTO public.games VALUES (367, 2014, 'Quarter-Final', 375, 377, 2, 1);
INSERT INTO public.games VALUES (368, 2014, 'Quarter-Final', 385, 369, 1, 0);
INSERT INTO public.games VALUES (369, 2014, 'Eighth-Final', 375, 388, 2, 1);
INSERT INTO public.games VALUES (370, 2014, 'Eighth-Final', 377, 376, 2, 0);
INSERT INTO public.games VALUES (371, 2014, 'Eighth-Final', 369, 389, 2, 0);
INSERT INTO public.games VALUES (372, 2014, 'Eighth-Final', 385, 390, 2, 1);
INSERT INTO public.games VALUES (373, 2014, 'Eighth-Final', 386, 380, 2, 1);
INSERT INTO public.games VALUES (374, 2014, 'Eighth-Final', 387, 391, 2, 1);
INSERT INTO public.games VALUES (375, 2014, 'Eighth-Final', 384, 378, 1, 0);
INSERT INTO public.games VALUES (376, 2014, 'Eighth-Final', 371, 392, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (369, 'France');
INSERT INTO public.teams VALUES (370, 'Croatia');
INSERT INTO public.teams VALUES (371, 'Belgium');
INSERT INTO public.teams VALUES (372, 'England');
INSERT INTO public.teams VALUES (373, 'Russia');
INSERT INTO public.teams VALUES (374, 'Sweden');
INSERT INTO public.teams VALUES (375, 'Brazil');
INSERT INTO public.teams VALUES (376, 'Uruguay');
INSERT INTO public.teams VALUES (377, 'Colombia');
INSERT INTO public.teams VALUES (378, 'Switzerland');
INSERT INTO public.teams VALUES (379, 'Japan');
INSERT INTO public.teams VALUES (380, 'Mexico');
INSERT INTO public.teams VALUES (381, 'Denmark');
INSERT INTO public.teams VALUES (382, 'Spain');
INSERT INTO public.teams VALUES (383, 'Portugal');
INSERT INTO public.teams VALUES (384, 'Argentina');
INSERT INTO public.teams VALUES (385, 'Germany');
INSERT INTO public.teams VALUES (386, 'Netherlands');
INSERT INTO public.teams VALUES (387, 'Costa Rica');
INSERT INTO public.teams VALUES (388, 'Chile');
INSERT INTO public.teams VALUES (389, 'Nigeria');
INSERT INTO public.teams VALUES (390, 'Algeria');
INSERT INTO public.teams VALUES (391, 'Greece');
INSERT INTO public.teams VALUES (392, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 376, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 392, true);


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
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

