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
    guesses integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 7);
INSERT INTO public.games VALUES (2, 1, 3);
INSERT INTO public.games VALUES (3, 2, 5);
INSERT INTO public.games VALUES (4, 3, 502);
INSERT INTO public.games VALUES (5, 3, 411);
INSERT INTO public.games VALUES (6, 4, 451);
INSERT INTO public.games VALUES (7, 4, 451);
INSERT INTO public.games VALUES (8, 3, 342);
INSERT INTO public.games VALUES (9, 3, 175);
INSERT INTO public.games VALUES (10, 3, 143);
INSERT INTO public.games VALUES (11, 5, 154);
INSERT INTO public.games VALUES (12, 5, 745);
INSERT INTO public.games VALUES (13, 6, 929);
INSERT INTO public.games VALUES (14, 6, 700);
INSERT INTO public.games VALUES (15, 5, 631);
INSERT INTO public.games VALUES (16, 5, 365);
INSERT INTO public.games VALUES (17, 5, 753);
INSERT INTO public.games VALUES (18, 7, 366);
INSERT INTO public.games VALUES (19, 7, 338);
INSERT INTO public.games VALUES (20, 8, 663);
INSERT INTO public.games VALUES (21, 8, 291);
INSERT INTO public.games VALUES (22, 7, 708);
INSERT INTO public.games VALUES (23, 7, 398);
INSERT INTO public.games VALUES (24, 7, 471);
INSERT INTO public.games VALUES (25, 9, 211);
INSERT INTO public.games VALUES (26, 9, 20);
INSERT INTO public.games VALUES (27, 10, 973);
INSERT INTO public.games VALUES (28, 10, 359);
INSERT INTO public.games VALUES (29, 9, 460);
INSERT INTO public.games VALUES (30, 9, 818);
INSERT INTO public.games VALUES (31, 9, 766);
INSERT INTO public.games VALUES (32, 11, 757);
INSERT INTO public.games VALUES (33, 11, 717);
INSERT INTO public.games VALUES (34, 12, 198);
INSERT INTO public.games VALUES (35, 12, 912);
INSERT INTO public.games VALUES (36, 11, 432);
INSERT INTO public.games VALUES (37, 11, 817);
INSERT INTO public.games VALUES (38, 11, 189);
INSERT INTO public.games VALUES (39, 13, 901);
INSERT INTO public.games VALUES (40, 13, 851);
INSERT INTO public.games VALUES (41, 14, 352);
INSERT INTO public.games VALUES (42, 14, 557);
INSERT INTO public.games VALUES (43, 13, 934);
INSERT INTO public.games VALUES (44, 13, 672);
INSERT INTO public.games VALUES (45, 13, 950);
INSERT INTO public.games VALUES (46, 15, 623);
INSERT INTO public.games VALUES (47, 15, 908);
INSERT INTO public.games VALUES (48, 16, 196);
INSERT INTO public.games VALUES (49, 16, 931);
INSERT INTO public.games VALUES (50, 15, 533);
INSERT INTO public.games VALUES (51, 15, 807);
INSERT INTO public.games VALUES (52, 15, 890);
INSERT INTO public.games VALUES (53, 17, 359);
INSERT INTO public.games VALUES (54, 17, 492);
INSERT INTO public.games VALUES (55, 18, 200);
INSERT INTO public.games VALUES (56, 18, 439);
INSERT INTO public.games VALUES (57, 17, 419);
INSERT INTO public.games VALUES (58, 17, 968);
INSERT INTO public.games VALUES (59, 17, 248);
INSERT INTO public.games VALUES (60, 19, 256);
INSERT INTO public.games VALUES (61, 19, 741);
INSERT INTO public.games VALUES (62, 20, 822);
INSERT INTO public.games VALUES (63, 20, 3);
INSERT INTO public.games VALUES (64, 19, 758);
INSERT INTO public.games VALUES (65, 19, 221);
INSERT INTO public.games VALUES (66, 19, 45);
INSERT INTO public.games VALUES (67, 21, 947);
INSERT INTO public.games VALUES (68, 21, 424);
INSERT INTO public.games VALUES (69, 22, 195);
INSERT INTO public.games VALUES (70, 22, 401);
INSERT INTO public.games VALUES (71, 21, 314);
INSERT INTO public.games VALUES (72, 21, 835);
INSERT INTO public.games VALUES (73, 21, 601);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'alice');
INSERT INTO public.users VALUES (2, 'bob');
INSERT INTO public.users VALUES (3, 'user_1752579663683');
INSERT INTO public.users VALUES (4, 'user_1752579663682');
INSERT INTO public.users VALUES (5, 'user_1752579740102');
INSERT INTO public.users VALUES (6, 'user_1752579740101');
INSERT INTO public.users VALUES (7, 'user_1752580824328');
INSERT INTO public.users VALUES (8, 'user_1752580824327');
INSERT INTO public.users VALUES (9, 'user_1752581467529');
INSERT INTO public.users VALUES (10, 'user_1752581467528');
INSERT INTO public.users VALUES (11, 'user_1752581827394');
INSERT INTO public.users VALUES (12, 'user_1752581827393');
INSERT INTO public.users VALUES (13, 'user_1752581842088');
INSERT INTO public.users VALUES (14, 'user_1752581842087');
INSERT INTO public.users VALUES (15, 'user_1752581853600');
INSERT INTO public.users VALUES (16, 'user_1752581853599');
INSERT INTO public.users VALUES (17, 'user_1752581900079');
INSERT INTO public.users VALUES (18, 'user_1752581900078');
INSERT INTO public.users VALUES (19, 'user_1752581958334');
INSERT INTO public.users VALUES (20, 'user_1752581958333');
INSERT INTO public.users VALUES (21, 'user_1752582021480');
INSERT INTO public.users VALUES (22, 'user_1752582021479');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 73, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 22, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

