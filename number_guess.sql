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
    user_id integer NOT NULL,
    best_guess integer NOT NULL
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
-- Name: users_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users_info (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    game_played integer NOT NULL
);


ALTER TABLE public.users_info OWNER TO freecodecamp;

--
-- Name: users_info_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_info_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_info_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_info_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_info_user_id_seq OWNED BY public.users_info.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users_info user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users_info ALTER COLUMN user_id SET DEFAULT nextval('public.users_info_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (89, 45, 3);
INSERT INTO public.games VALUES (90, 45, 4);
INSERT INTO public.games VALUES (91, 46, 3);
INSERT INTO public.games VALUES (92, 47, 729);
INSERT INTO public.games VALUES (93, 47, 665);
INSERT INTO public.games VALUES (94, 48, 292);
INSERT INTO public.games VALUES (95, 48, 716);
INSERT INTO public.games VALUES (96, 47, 937);
INSERT INTO public.games VALUES (97, 47, 326);
INSERT INTO public.games VALUES (98, 47, 706);
INSERT INTO public.games VALUES (99, 45, 9);
INSERT INTO public.games VALUES (100, 46, 9);
INSERT INTO public.games VALUES (101, 49, 750);
INSERT INTO public.games VALUES (102, 49, 740);
INSERT INTO public.games VALUES (103, 50, 442);
INSERT INTO public.games VALUES (104, 50, 242);
INSERT INTO public.games VALUES (105, 49, 999);
INSERT INTO public.games VALUES (106, 49, 879);
INSERT INTO public.games VALUES (107, 49, 812);
INSERT INTO public.games VALUES (108, 51, 877);
INSERT INTO public.games VALUES (109, 51, 657);
INSERT INTO public.games VALUES (110, 52, 694);
INSERT INTO public.games VALUES (111, 52, 830);
INSERT INTO public.games VALUES (112, 51, 634);
INSERT INTO public.games VALUES (113, 51, 394);
INSERT INTO public.games VALUES (114, 51, 142);
INSERT INTO public.games VALUES (115, 53, 908);
INSERT INTO public.games VALUES (116, 53, 167);
INSERT INTO public.games VALUES (117, 54, 217);
INSERT INTO public.games VALUES (118, 54, 46);
INSERT INTO public.games VALUES (119, 53, 241);
INSERT INTO public.games VALUES (120, 53, 107);
INSERT INTO public.games VALUES (121, 53, 448);


--
-- Data for Name: users_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users_info VALUES (45, 'KIEU', 2);
INSERT INTO public.users_info VALUES (48, 'user_1729861893621', 2);
INSERT INTO public.users_info VALUES (47, 'user_1729861893622', 5);
INSERT INTO public.users_info VALUES (46, 'ANH', 2);
INSERT INTO public.users_info VALUES (50, 'user_1729863234793', 2);
INSERT INTO public.users_info VALUES (49, 'user_1729863234794', 5);
INSERT INTO public.users_info VALUES (52, 'user_1729863255276', 2);
INSERT INTO public.users_info VALUES (51, 'user_1729863255277', 5);
INSERT INTO public.users_info VALUES (54, 'user_1729863526378', 2);
INSERT INTO public.users_info VALUES (53, 'user_1729863526379', 5);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 121, true);


--
-- Name: users_info_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_info_user_id_seq', 54, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users_info users_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users_info
    ADD CONSTRAINT users_info_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users_info(user_id);


--
-- PostgreSQL database dump complete
--

