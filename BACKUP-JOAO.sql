toc.dat                                                                                             0000600 0004000 0002000 00000005537 15012702747 0014456 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                       }            visualspa-joao-db    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    24590    visualspa-joao-db    DATABASE     �   CREATE DATABASE "visualspa-joao-db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
 #   DROP DATABASE "visualspa-joao-db";
                postgres    false         �            1259    24622    hospede    TABLE     �   CREATE TABLE public.hospede (
    nome character varying(25) NOT NULL,
    genero character varying(1),
    biotipo character varying(1),
    altura numeric(5,2)
);
    DROP TABLE public.hospede;
       public         heap    postgres    false         �            1259    24642    quarto    TABLE     �   CREATE TABLE public.quarto (
    nome character varying(25) NOT NULL,
    quarto integer NOT NULL,
    chegada date NOT NULL,
    "saída" date NOT NULL,
    desconto numeric(5,2)
);
    DROP TABLE public.quarto;
       public         heap    postgres    false         �          0    24622    hospede 
   TABLE DATA           @   COPY public.hospede (nome, genero, biotipo, altura) FROM stdin;
    public          postgres    false    215       4839.dat �          0    24642    quarto 
   TABLE DATA           K   COPY public.quarto (nome, quarto, chegada, "saída", desconto) FROM stdin;
    public          postgres    false    216       4840.dat T           2606    24626    hospede hospede_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.hospede
    ADD CONSTRAINT hospede_pkey PRIMARY KEY (nome);
 >   ALTER TABLE ONLY public.hospede DROP CONSTRAINT hospede_pkey;
       public            postgres    false    215         V           2606    24646    quarto quarto_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.quarto
    ADD CONSTRAINT quarto_pkey PRIMARY KEY (nome, quarto);
 <   ALTER TABLE ONLY public.quarto DROP CONSTRAINT quarto_pkey;
       public            postgres    false    216    216         W           2606    24647    quarto fkquarto    FK CONSTRAINT     �   ALTER TABLE ONLY public.quarto
    ADD CONSTRAINT fkquarto FOREIGN KEY (nome) REFERENCES public.hospede(nome) ON UPDATE CASCADE ON DELETE CASCADE;
 9   ALTER TABLE ONLY public.quarto DROP CONSTRAINT fkquarto;
       public          postgres    false    216    215    4692                                                                                                                                                                         4839.dat                                                                                            0000600 0004000 0002000 00000000146 15012702747 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        migueL	M	M	1.67
josiel	M	M	1.72
raquel	F	G	1.65
luciana	F	G	1.80
joana	F	M	1.65
emanuel	M	M	1.78
\.


                                                                                                                                                                                                                                                                                                                                                                                                                          4840.dat                                                                                            0000600 0004000 0002000 00000000005 15012702747 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000006004 15012702747 0015371 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

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

DROP DATABASE "visualspa-joao-db";
--
-- Name: visualspa-joao-db; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "visualspa-joao-db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';


ALTER DATABASE "visualspa-joao-db" OWNER TO postgres;

\connect -reuse-previous=on "dbname='visualspa-joao-db'"

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
-- Name: hospede; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hospede (
    nome character varying(25) NOT NULL,
    genero character varying(1),
    biotipo character varying(1),
    altura numeric(5,2)
);


ALTER TABLE public.hospede OWNER TO postgres;

--
-- Name: quarto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.quarto (
    nome character varying(25) NOT NULL,
    quarto integer NOT NULL,
    chegada date NOT NULL,
    "saída" date NOT NULL,
    desconto numeric(5,2)
);


ALTER TABLE public.quarto OWNER TO postgres;

--
-- Data for Name: hospede; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hospede (nome, genero, biotipo, altura) FROM stdin;
\.
COPY public.hospede (nome, genero, biotipo, altura) FROM '$$PATH$$/4839.dat';

--
-- Data for Name: quarto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.quarto (nome, quarto, chegada, "saída", desconto) FROM stdin;
\.
COPY public.quarto (nome, quarto, chegada, "saída", desconto) FROM '$$PATH$$/4840.dat';

--
-- Name: hospede hospede_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hospede
    ADD CONSTRAINT hospede_pkey PRIMARY KEY (nome);


--
-- Name: quarto quarto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quarto
    ADD CONSTRAINT quarto_pkey PRIMARY KEY (nome, quarto);


--
-- Name: quarto fkquarto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quarto
    ADD CONSTRAINT fkquarto FOREIGN KEY (nome) REFERENCES public.hospede(nome) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            