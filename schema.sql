--
-- PostgreSQL database dump
--

\restrict Zvh2JxdV5oEWauPKgICZS6Al1UColj4coUNi90GjmsqJfvoXPISqIWmEYo83SkW

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: beekeepers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.beekeepers (
    id integer NOT NULL,
    name text NOT NULL,
    age integer NOT NULL,
    exp_years integer NOT NULL,
    location text NOT NULL
);


ALTER TABLE public.beekeepers OWNER TO postgres;

--
-- Name: beekeepers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.beekeepers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.beekeepers_id_seq OWNER TO postgres;

--
-- Name: beekeepers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.beekeepers_id_seq OWNED BY public.beekeepers.id;


--
-- Name: beekeepers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.beekeepers ALTER COLUMN id SET DEFAULT nextval('public.beekeepers_id_seq'::regclass);


--
-- Name: beekeepers beekeepers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.beekeepers
    ADD CONSTRAINT beekeepers_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict Zvh2JxdV5oEWauPKgICZS6Al1UColj4coUNi90GjmsqJfvoXPISqIWmEYo83SkW

