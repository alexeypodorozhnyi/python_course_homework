toc.dat                                                                                             0000600 0004000 0002000 00000015551 13551072567 0014461 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       '                	    w            film_studio    12.0    12.0     $           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         %           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         &           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         '           1262    16403    film_studio    DATABASE     П   CREATE DATABASE film_studio WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Ukraine.1251' LC_CTYPE = 'Russian_Ukraine.1251';
    DROP DATABASE film_studio;
                postgres    false         ═            1259    16412    actors    TABLE     ╧   CREATE TABLE public.actors (
    id integer NOT NULL,
    lstname character varying(100),
    fstname character varying(100),
    mdlname character varying(100),
    age smallint,
    costs numeric(10,0)
);
    DROP TABLE public.actors;
       public         heap    postgres    false         ╠            1259    16410 
   actors_id_seq    SEQUENCE     Е   CREATE SEQUENCE public.actors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.actors_id_seq;
       public          postgres    false    205         (           0    0 
   actors_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.actors_id_seq OWNED BY public.actors.id;
          public          postgres    false    204         ╧            1259    16418 	   directors    TABLE     з   CREATE TABLE public.directors (
    id integer NOT NULL,
    lstname character varying(100),
    fstname character varying(100),
    mdlname character varying(100)
);
    DROP TABLE public.directors;
       public         heap    postgres    false         ╬            1259    16416    directors_id_seq    SEQUENCE     И   CREATE SEQUENCE public.directors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.directors_id_seq;
       public          postgres    false    207         )           0    0    directors_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.directors_id_seq OWNED BY public.directors.id;
          public          postgres    false    206         ╨            1259    16428    film_actors    TABLE     Q   CREATE TABLE public.film_actors (
    film_id smallint,
    actor_id smallint
);
    DROP TABLE public.film_actors;
       public         heap    postgres    false         ╤            1259    16476    film_directors    TABLE     U   CREATE TABLE public.film_directors (
    film_id integer,
    director_id integer
);
 "   DROP TABLE public.film_directors;
       public         heap    postgres    false         ╦            1259    16406    films    TABLE     |   CREATE TABLE public.films (
    id integer NOT NULL,
    film_name character varying(100),
    film_budget numeric(10,0)
);
    DROP TABLE public.films;
       public         heap    postgres    false         ╩            1259    16404    films_id_seq    SEQUENCE     Д   CREATE SEQUENCE public.films_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.films_id_seq;
       public          postgres    false    203         *           0    0    films_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.films_id_seq OWNED BY public.films.id;
          public          postgres    false    202         Ф
           2604    16415 	   actors id    DEFAULT     f   ALTER TABLE ONLY public.actors ALTER COLUMN id SET DEFAULT nextval('public.actors_id_seq'::regclass);
 8   ALTER TABLE public.actors ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205         Х
           2604    16421    directors id    DEFAULT     l   ALTER TABLE ONLY public.directors ALTER COLUMN id SET DEFAULT nextval('public.directors_id_seq'::regclass);
 ;   ALTER TABLE public.directors ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207         У
           2604    16409    films id    DEFAULT     d   ALTER TABLE ONLY public.films ALTER COLUMN id SET DEFAULT nextval('public.films_id_seq'::regclass);
 7   ALTER TABLE public.films ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203                   0    16412    actors 
   TABLE DATA                 public          postgres    false    205       2845.dat           0    16418 	   directors 
   TABLE DATA                 public          postgres    false    207       2847.dat            0    16428    film_actors 
   TABLE DATA                 public          postgres    false    208       2848.dat !          0    16476    film_directors 
   TABLE DATA                 public          postgres    false    209       2849.dat           0    16406    films 
   TABLE DATA                 public          postgres    false    203       2843.dat +           0    0 
   actors_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.actors_id_seq', 5, true);
          public          postgres    false    204         ,           0    0    directors_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.directors_id_seq', 4, true);
          public          postgres    false    206         -           0    0    films_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.films_id_seq', 5, true);
          public          postgres    false    202         Щ
           2606    16425    actors actors_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.actors
    ADD CONSTRAINT actors_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.actors DROP CONSTRAINT actors_pkey;
       public            postgres    false    205         Ы
           2606    16423    directors directors_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.directors
    ADD CONSTRAINT directors_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.directors DROP CONSTRAINT directors_pkey;
       public            postgres    false    207         Ч
           2606    16427    films films_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.films
    ADD CONSTRAINT films_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.films DROP CONSTRAINT films_pkey;
       public            postgres    false    203                                                                                                                                                               2845.dat                                                                                            0000600 0004000 0002000 00000000613 13551072567 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.actors VALUES (1, 'Cluni', 'Djordj', 'Ivanovich', 52, 2000000);
INSERT INTO public.actors VALUES (2, 'Dicapro', 'Leonardo', NULL, 48, 2000000);
INSERT INTO public.actors VALUES (3, 'Djonson', 'Duein', NULL, 43, 2500000);
INSERT INTO public.actors VALUES (4, 'Hemsvort', 'Kris', NULL, 50, 2300000);
INSERT INTO public.actors VALUES (5, 'Dauni', 'Robert', NULL, 50, 2500000);


                                                                                                                     2847.dat                                                                                            0000600 0004000 0002000 00000000421 13551072567 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.directors VALUES (1, 'Nolan', 'Kristofer', NULL);
INSERT INTO public.directors VALUES (2, 'Kventin', 'Tarantino', NULL);
INSERT INTO public.directors VALUES (3, 'Sem', 'Mendes', NULL);
INSERT INTO public.directors VALUES (4, 'Devid', 'Fincher', NULL);


                                                                                                                                                                                                                                               2848.dat                                                                                            0000600 0004000 0002000 00000000426 13551072567 0014274 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.film_actors VALUES (1, 3);
INSERT INTO public.film_actors VALUES (1, 4);
INSERT INTO public.film_actors VALUES (2, 4);
INSERT INTO public.film_actors VALUES (2, 5);
INSERT INTO public.film_actors VALUES (3, 4);
INSERT INTO public.film_actors VALUES (3, 6);


                                                                                                                                                                                                                                          2849.dat                                                                                            0000600 0004000 0002000 00000000225 13551072567 0014272 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.film_directors VALUES (1, 3);
INSERT INTO public.film_directors VALUES (2, 5);
INSERT INTO public.film_directors VALUES (1, 4);


                                                                                                                                                                                                                                                                                                                                                                           2843.dat                                                                                            0000600 0004000 0002000 00000000513 13551072567 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.films VALUES (1, 'Avatar', 150000000);
INSERT INTO public.films VALUES (2, 'Terminator 2: Judgment Day', 150000000);
INSERT INTO public.films VALUES (3, 'The Green Mile', 20000000);
INSERT INTO public.films VALUES (4, 'The Dark Knight', 100000000);
INSERT INTO public.films VALUES (5, 'The Matrix', 12000000);


                                                                                                                                                                                     restore.sql                                                                                         0000600 0004000 0002000 00000013510 13551072567 0015377 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.0
-- Dumped by pg_dump version 12.0

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

DROP DATABASE IF EXISTS film_studio;
--
-- Name: film_studio; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE film_studio WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Ukraine.1251' LC_CTYPE = 'Russian_Ukraine.1251';


ALTER DATABASE film_studio OWNER TO postgres;

\connect film_studio

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
-- Name: actors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actors (
    id integer NOT NULL,
    lstname character varying(100),
    fstname character varying(100),
    mdlname character varying(100),
    age smallint,
    costs numeric(10,0)
);


ALTER TABLE public.actors OWNER TO postgres;

--
-- Name: actors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.actors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actors_id_seq OWNER TO postgres;

--
-- Name: actors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.actors_id_seq OWNED BY public.actors.id;


--
-- Name: directors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.directors (
    id integer NOT NULL,
    lstname character varying(100),
    fstname character varying(100),
    mdlname character varying(100)
);


ALTER TABLE public.directors OWNER TO postgres;

--
-- Name: directors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.directors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.directors_id_seq OWNER TO postgres;

--
-- Name: directors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.directors_id_seq OWNED BY public.directors.id;


--
-- Name: film_actors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.film_actors (
    film_id smallint,
    actor_id smallint
);


ALTER TABLE public.film_actors OWNER TO postgres;

--
-- Name: film_directors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.film_directors (
    film_id integer,
    director_id integer
);


ALTER TABLE public.film_directors OWNER TO postgres;

--
-- Name: films; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.films (
    id integer NOT NULL,
    film_name character varying(100),
    film_budget numeric(10,0)
);


ALTER TABLE public.films OWNER TO postgres;

--
-- Name: films_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.films_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.films_id_seq OWNER TO postgres;

--
-- Name: films_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.films_id_seq OWNED BY public.films.id;


--
-- Name: actors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actors ALTER COLUMN id SET DEFAULT nextval('public.actors_id_seq'::regclass);


--
-- Name: directors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.directors ALTER COLUMN id SET DEFAULT nextval('public.directors_id_seq'::regclass);


--
-- Name: films id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films ALTER COLUMN id SET DEFAULT nextval('public.films_id_seq'::regclass);


--
-- Data for Name: actors; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/2845.dat

--
-- Data for Name: directors; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/2847.dat

--
-- Data for Name: film_actors; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/2848.dat

--
-- Data for Name: film_directors; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/2849.dat

--
-- Data for Name: films; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/2843.dat

--
-- Name: actors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.actors_id_seq', 5, true);


--
-- Name: directors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.directors_id_seq', 4, true);


--
-- Name: films_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.films_id_seq', 5, true);


--
-- Name: actors actors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actors
    ADD CONSTRAINT actors_pkey PRIMARY KEY (id);


--
-- Name: directors directors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.directors
    ADD CONSTRAINT directors_pkey PRIMARY KEY (id);


--
-- Name: films films_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films
    ADD CONSTRAINT films_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
