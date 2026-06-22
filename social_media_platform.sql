--
-- PostgreSQL database dump
--

\restrict zKmDKj8GL3sGfTYCWbbHkkz4WeUxw80rwec9Nf3BHsJfCa4h1xyZefeHG2qRoUM

-- Dumped from database version 18.4
-- Dumped by pg_dump version 18.4

-- Started on 2026-06-22 15:45:53

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 231 (class 1259 OID 24782)
-- Name: likes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.likes (
    username character varying(50),
    number_of_likes integer
);


ALTER TABLE public.likes OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 24776)
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts (
    comments character varying(30),
    number_of_likes integer NOT NULL
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 24761)
-- Name: user_accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_accounts (
    username character varying(50),
    biography character varying(30)
);


ALTER TABLE public.user_accounts OWNER TO postgres;

--
-- TOC entry 5000 (class 0 OID 24782)
-- Dependencies: 231
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.likes (username, number_of_likes) FROM stdin;
\.


--
-- TOC entry 4999 (class 0 OID 24776)
-- Dependencies: 230
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts (comments, number_of_likes) FROM stdin;
I want that dress	30
\.


--
-- TOC entry 4998 (class 0 OID 24761)
-- Dependencies: 229
-- Data for Name: user_accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_accounts (username, biography) FROM stdin;
luminaboutique5	closet
\.


--
-- TOC entry 4848 (class 2606 OID 24786)
-- Name: likes likes_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_username_key UNIQUE (username);


--
-- TOC entry 4846 (class 2606 OID 24781)
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (number_of_likes);


--
-- TOC entry 4844 (class 2606 OID 24765)
-- Name: user_accounts user_accounts_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_accounts
    ADD CONSTRAINT user_accounts_username_key UNIQUE (username);


--
-- TOC entry 4849 (class 2606 OID 24792)
-- Name: likes likes_number_of_likes_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_number_of_likes_fkey FOREIGN KEY (number_of_likes) REFERENCES public.posts(number_of_likes);


--
-- TOC entry 4850 (class 2606 OID 24787)
-- Name: likes likes_username_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_username_fkey FOREIGN KEY (username) REFERENCES public.user_accounts(username);


-- Completed on 2026-06-22 15:45:53

--
-- PostgreSQL database dump complete
--

\unrestrict zKmDKj8GL3sGfTYCWbbHkkz4WeUxw80rwec9Nf3BHsJfCa4h1xyZefeHG2qRoUM

