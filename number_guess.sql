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
    user_id integer,
    games_played integer DEFAULT 0,
    best_game integer DEFAULT 0
);


ALTER TABLE public.games OWNER TO freecodecamp;

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
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (14, 4, 6);
INSERT INTO public.games VALUES (16, 2, 33);
INSERT INTO public.games VALUES (36, 2, 168);
INSERT INTO public.games VALUES (60, 2, 71);
INSERT INTO public.games VALUES (18, 2, 367);
INSERT INTO public.games VALUES (35, 5, 190);
INSERT INTO public.games VALUES (17, 5, 51);
INSERT INTO public.games VALUES (20, 2, 850);
INSERT INTO public.games VALUES (38, 2, 448);
INSERT INTO public.games VALUES (19, 5, 302);
INSERT INTO public.games VALUES (22, 2, 566);
INSERT INTO public.games VALUES (59, 5, 250);
INSERT INTO public.games VALUES (37, 5, 57);
INSERT INTO public.games VALUES (21, 5, 57);
INSERT INTO public.games VALUES (24, 2, 692);
INSERT INTO public.games VALUES (23, 5, 56);
INSERT INTO public.games VALUES (40, 2, 192);
INSERT INTO public.games VALUES (26, 2, 80);
INSERT INTO public.games VALUES (25, 5, 163);
INSERT INTO public.games VALUES (39, 5, 123);
INSERT INTO public.games VALUES (28, 2, 355);
INSERT INTO public.games VALUES (62, 2, 632);
INSERT INTO public.games VALUES (27, 5, 37);
INSERT INTO public.games VALUES (30, 2, 182);
INSERT INTO public.games VALUES (42, 2, 373);
INSERT INTO public.games VALUES (29, 5, 187);
INSERT INTO public.games VALUES (32, 2, 48);
INSERT INTO public.games VALUES (41, 5, 14);
INSERT INTO public.games VALUES (31, 5, 126);
INSERT INTO public.games VALUES (61, 5, 283);
INSERT INTO public.games VALUES (34, 2, 50);
INSERT INTO public.games VALUES (44, 2, 943);
INSERT INTO public.games VALUES (33, 5, 33);
INSERT INTO public.games VALUES (43, 5, 209);
INSERT INTO public.games VALUES (15, 6, 4);
INSERT INTO public.games VALUES (46, 2, 136);
INSERT INTO public.games VALUES (45, 5, 330);
INSERT INTO public.games VALUES (48, 2, 82);
INSERT INTO public.games VALUES (47, 5, 27);
INSERT INTO public.games VALUES (50, 2, 580);
INSERT INTO public.games VALUES (49, 5, 227);
INSERT INTO public.games VALUES (52, 2, 395);
INSERT INTO public.games VALUES (51, 5, 100);
INSERT INTO public.games VALUES (54, 2, 152);
INSERT INTO public.games VALUES (53, 5, 158);
INSERT INTO public.games VALUES (56, 2, 396);
INSERT INTO public.games VALUES (55, 5, 158);
INSERT INTO public.games VALUES (58, 2, 304);
INSERT INTO public.games VALUES (57, 5, 9);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (14, 'Mau');
INSERT INTO public.users VALUES (15, 'user_1732711643531');
INSERT INTO public.users VALUES (16, 'user_1732711643530');
INSERT INTO public.users VALUES (17, 'user_1732711719606');
INSERT INTO public.users VALUES (18, 'user_1732711719605');
INSERT INTO public.users VALUES (19, 'user_1732711793490');
INSERT INTO public.users VALUES (20, 'user_1732711793489');
INSERT INTO public.users VALUES (21, 'user_1732712093106');
INSERT INTO public.users VALUES (22, 'user_1732712093105');
INSERT INTO public.users VALUES (23, 'user_1732712477229');
INSERT INTO public.users VALUES (24, 'user_1732712477228');
INSERT INTO public.users VALUES (25, 'user_1732712480577');
INSERT INTO public.users VALUES (26, 'user_1732712480576');
INSERT INTO public.users VALUES (27, 'user_1732712483584');
INSERT INTO public.users VALUES (28, 'user_1732712483583');
INSERT INTO public.users VALUES (29, 'user_1732712486454');
INSERT INTO public.users VALUES (30, 'user_1732712486453');
INSERT INTO public.users VALUES (31, 'user_1732712490264');
INSERT INTO public.users VALUES (32, 'user_1732712490263');
INSERT INTO public.users VALUES (33, 'user_1732712494397');
INSERT INTO public.users VALUES (34, 'user_1732712494396');
INSERT INTO public.users VALUES (35, 'user_1732712539244');
INSERT INTO public.users VALUES (36, 'user_1732712539243');
INSERT INTO public.users VALUES (37, 'user_1732712544782');
INSERT INTO public.users VALUES (38, 'user_1732712544781');
INSERT INTO public.users VALUES (39, 'user_1732712605949');
INSERT INTO public.users VALUES (40, 'user_1732712605948');
INSERT INTO public.users VALUES (41, 'user_1732712610910');
INSERT INTO public.users VALUES (42, 'user_1732712610909');
INSERT INTO public.users VALUES (43, 'user_1732712800244');
INSERT INTO public.users VALUES (44, 'user_1732712800243');
INSERT INTO public.users VALUES (45, 'user_1732712887140');
INSERT INTO public.users VALUES (46, 'user_1732712887139');
INSERT INTO public.users VALUES (47, 'user_1732713378766');
INSERT INTO public.users VALUES (48, 'user_1732713378765');
INSERT INTO public.users VALUES (49, 'user_1732713473977');
INSERT INTO public.users VALUES (50, 'user_1732713473976');
INSERT INTO public.users VALUES (51, 'user_1732713485388');
INSERT INTO public.users VALUES (52, 'user_1732713485387');
INSERT INTO public.users VALUES (53, 'user_1732713488353');
INSERT INTO public.users VALUES (54, 'user_1732713488352');
INSERT INTO public.users VALUES (55, 'user_1732713490515');
INSERT INTO public.users VALUES (56, 'user_1732713490514');
INSERT INTO public.users VALUES (57, 'user_1732713492750');
INSERT INTO public.users VALUES (58, 'user_1732713492749');
INSERT INTO public.users VALUES (59, 'user_1732713528042');
INSERT INTO public.users VALUES (60, 'user_1732713528041');
INSERT INTO public.users VALUES (61, 'user_1732713548491');
INSERT INTO public.users VALUES (62, 'user_1732713548490');


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 62, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

