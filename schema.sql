--
-- PostgreSQL database dump
--

\restrict LAhr7Uf4BXVlZXDONnXkcJbKsNfLKD9qz8T227lWbjPJvAqqwfNNUazZ7COOTVJ

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
-- Name: hives; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hives (
    id integer NOT NULL,
    beekeeper_id integer NOT NULL,
    location_id integer NOT NULL,
    hive_type text NOT NULL,
    active boolean DEFAULT true NOT NULL
);


ALTER TABLE public.hives OWNER TO postgres;

--
-- Name: hives_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hives_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.hives_id_seq OWNER TO postgres;

--
-- Name: hives_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hives_id_seq OWNED BY public.hives.id;


--
-- Name: beekeepers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.beekeepers ALTER COLUMN id SET DEFAULT nextval('public.beekeepers_id_seq'::regclass);


--
-- Name: hives id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hives ALTER COLUMN id SET DEFAULT nextval('public.hives_id_seq'::regclass);


--
-- Name: beekeepers beekeepers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.beekeepers
    ADD CONSTRAINT beekeepers_pkey PRIMARY KEY (id);


--
-- Name: hives hives_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hives
    ADD CONSTRAINT hives_pkey PRIMARY KEY (id);


--
-- Name: idx_hives_beekeeper_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_hives_beekeeper_id ON public.hives USING btree (beekeeper_id);


--
-- Name: hives fk_beekeeper_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hives
    ADD CONSTRAINT fk_beekeeper_id FOREIGN KEY (beekeeper_id) REFERENCES public.beekeepers(id);


--
-- PostgreSQL database dump complete
--

\unrestrict LAhr7Uf4BXVlZXDONnXkcJbKsNfLKD9qz8T227lWbjPJvAqqwfNNUazZ7COOTVJ

