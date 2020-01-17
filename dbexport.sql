--
-- PostgreSQL database dump
--

-- Dumped from database version 10.8
-- Dumped by pg_dump version 10.8

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

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: providers; Type: TABLE; Schema: public; Owner: rafaelribeiro
--

CREATE TABLE public.providers (
    id uuid NOT NULL,
    name text NOT NULL,
    domains jsonb,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);


ALTER TABLE public.providers OWNER TO rafaelribeiro;

--
-- Data for Name: providers; Type: TABLE DATA; Schema: public; Owner: rafaelribeiro
--

COPY public.providers (id, name, domains, created, updated) FROM stdin;
e1410488-6d3b-420e-bacc-daf8528d848d	astrazeneca	["astrazeneca.com", "astrazeneca.de", "astrazenecatest.de"]	2019-07-11 10:18:28.563+02	2019-07-11 10:18:28.563+02
\.


--
-- Name: providers providers_pkey; Type: CONSTRAINT; Schema: public; Owner: rafaelribeiro
--

ALTER TABLE ONLY public.providers
    ADD CONSTRAINT providers_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

