--
-- PostgreSQL database dump
--

\restrict C4QCrkHNiSm7SRYCRzA11LmiPO9ZPgzRSFwK7hnNlZlvL6SbtrDHIyy1sBTbP28

-- Dumped from database version 16.10 (Debian 16.10-1.pgdg13+1)
-- Dumped by pg_dump version 17.6

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

--
-- Data for Name: beekeepers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.beekeepers VALUES (1, 'Jim', 20, 4, 'Oregon');


--
-- Name: beekeepers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.beekeepers_id_seq', 1, true);


--
-- PostgreSQL database dump complete
--

\unrestrict C4QCrkHNiSm7SRYCRzA11LmiPO9ZPgzRSFwK7hnNlZlvL6SbtrDHIyy1sBTbP28

