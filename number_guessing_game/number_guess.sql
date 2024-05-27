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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer,
    number_of_guesses integer,
    secret_number integer
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
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    user_id integer NOT NULL,
    username character varying(30)
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_user_id_seq OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_user_id_seq OWNED BY public.players.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN user_id SET DEFAULT nextval('public.players_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 604, 603);
INSERT INTO public.games VALUES (2, 1, 236, 235);
INSERT INTO public.games VALUES (3, 2, 611, 610);
INSERT INTO public.games VALUES (4, 2, 217, 216);
INSERT INTO public.games VALUES (5, 1, 672, 669);
INSERT INTO public.games VALUES (6, 1, 205, 203);
INSERT INTO public.games VALUES (7, 1, 57, 56);
INSERT INTO public.games VALUES (8, 3, 32, 619);
INSERT INTO public.games VALUES (9, 4, 448, 447);
INSERT INTO public.games VALUES (10, 4, 335, 334);
INSERT INTO public.games VALUES (11, 5, 632, 631);
INSERT INTO public.games VALUES (12, 5, 130, 129);
INSERT INTO public.games VALUES (13, 4, 132, 129);
INSERT INTO public.games VALUES (14, 4, 205, 203);
INSERT INTO public.games VALUES (15, 4, 122, 121);
INSERT INTO public.games VALUES (16, 6, 295, 294);
INSERT INTO public.games VALUES (17, 6, 455, 454);
INSERT INTO public.games VALUES (18, 7, 588, 587);
INSERT INTO public.games VALUES (19, 7, 27, 26);
INSERT INTO public.games VALUES (20, 6, 1, 1);
INSERT INTO public.games VALUES (21, 6, 567, 565);
INSERT INTO public.games VALUES (22, 6, 688, 687);
INSERT INTO public.games VALUES (23, 8, 512, 511);
INSERT INTO public.games VALUES (24, 8, 625, 624);
INSERT INTO public.games VALUES (25, 9, 208, 207);
INSERT INTO public.games VALUES (26, 9, 943, 942);
INSERT INTO public.games VALUES (27, 8, 383, 380);
INSERT INTO public.games VALUES (28, 8, 993, 991);
INSERT INTO public.games VALUES (29, 8, 354, 353);
INSERT INTO public.games VALUES (30, 10, 125, 124);
INSERT INTO public.games VALUES (31, 10, 808, 807);
INSERT INTO public.games VALUES (32, 11, 497, 496);
INSERT INTO public.games VALUES (33, 11, 68, 67);
INSERT INTO public.games VALUES (34, 10, 493, 490);
INSERT INTO public.games VALUES (35, 10, 399, 397);
INSERT INTO public.games VALUES (36, 10, 393, 392);
INSERT INTO public.games VALUES (37, 12, 401, 400);
INSERT INTO public.games VALUES (38, 12, 216, 215);
INSERT INTO public.games VALUES (39, 13, 347, 346);
INSERT INTO public.games VALUES (40, 13, 868, 867);
INSERT INTO public.games VALUES (41, 12, 660, 657);
INSERT INTO public.games VALUES (42, 12, 142, 140);
INSERT INTO public.games VALUES (43, 12, 776, 775);
INSERT INTO public.games VALUES (44, 14, 50, 49);
INSERT INTO public.games VALUES (45, 14, 803, 802);
INSERT INTO public.games VALUES (46, 15, 133, 132);
INSERT INTO public.games VALUES (47, 15, 963, 962);
INSERT INTO public.games VALUES (48, 14, 806, 803);
INSERT INTO public.games VALUES (49, 14, 14, 12);
INSERT INTO public.games VALUES (50, 14, 62, 61);
INSERT INTO public.games VALUES (51, 16, 570, 569);
INSERT INTO public.games VALUES (52, 16, 52, 51);
INSERT INTO public.games VALUES (53, 17, 299, 298);
INSERT INTO public.games VALUES (54, 17, 603, 602);
INSERT INTO public.games VALUES (55, 16, 217, 214);
INSERT INTO public.games VALUES (56, 16, 516, 514);
INSERT INTO public.games VALUES (57, 16, 657, 656);
INSERT INTO public.games VALUES (58, 18, 667, 666);
INSERT INTO public.games VALUES (59, 18, 643, 642);
INSERT INTO public.games VALUES (60, 19, 354, 353);
INSERT INTO public.games VALUES (61, 19, 753, 752);
INSERT INTO public.games VALUES (62, 18, 947, 944);
INSERT INTO public.games VALUES (63, 18, 86, 84);
INSERT INTO public.games VALUES (64, 18, 303, 302);
INSERT INTO public.games VALUES (65, 20, 881, 880);
INSERT INTO public.games VALUES (66, 20, 914, 913);
INSERT INTO public.games VALUES (67, 21, 691, 690);
INSERT INTO public.games VALUES (68, 21, 953, 952);
INSERT INTO public.games VALUES (69, 20, 534, 531);
INSERT INTO public.games VALUES (70, 20, 998, 996);
INSERT INTO public.games VALUES (71, 20, 893, 892);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (1, 'user_1716820252305');
INSERT INTO public.players VALUES (2, 'user_1716820252304');
INSERT INTO public.players VALUES (3, 'blue');
INSERT INTO public.players VALUES (4, 'user_1716820910765');
INSERT INTO public.players VALUES (5, 'user_1716820910764');
INSERT INTO public.players VALUES (6, 'user_1716821021804');
INSERT INTO public.players VALUES (7, 'user_1716821021803');
INSERT INTO public.players VALUES (8, 'user_1716821193461');
INSERT INTO public.players VALUES (9, 'user_1716821193460');
INSERT INTO public.players VALUES (10, 'user_1716821277645');
INSERT INTO public.players VALUES (11, 'user_1716821277644');
INSERT INTO public.players VALUES (12, 'user_1716821335495');
INSERT INTO public.players VALUES (13, 'user_1716821335494');
INSERT INTO public.players VALUES (14, 'user_1716821422161');
INSERT INTO public.players VALUES (15, 'user_1716821422160');
INSERT INTO public.players VALUES (16, 'user_1716821447058');
INSERT INTO public.players VALUES (17, 'user_1716821447057');
INSERT INTO public.players VALUES (18, 'user_1716821609803');
INSERT INTO public.players VALUES (19, 'user_1716821609802');
INSERT INTO public.players VALUES (20, 'user_1716821709049');
INSERT INTO public.players VALUES (21, 'user_1716821709048');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 71, true);


--
-- Name: players_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_user_id_seq', 21, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.players(user_id);


--
-- PostgreSQL database dump complete
--

