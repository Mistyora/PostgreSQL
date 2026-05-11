--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2026-05-08 12:54:50

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
-- TOC entry 220 (class 1259 OID 99947)
-- Name: halls; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.halls (
    id_hall integer NOT NULL,
    name_hall text NOT NULL,
    capacity integer
);


ALTER TABLE public.halls OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 99946)
-- Name: Halls_id_hall_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.halls ALTER COLUMN id_hall ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Halls_id_hall_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 222 (class 1259 OID 99955)
-- Name: client; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.client (
    id_client integer NOT NULL,
    surname_client text NOT NULL,
    firstname_client text,
    middlename_client text
);


ALTER TABLE public.client OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 99954)
-- Name: client_id_client_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.client ALTER COLUMN id_client ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.client_id_client_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 224 (class 1259 OID 99963)
-- Name: events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.events (
    id_event integer NOT NULL,
    name_event text,
    date_event date,
    cost numeric,
    id_staff integer,
    id_hall integer,
    id_services integer,
    id_client integer
);


ALTER TABLE public.events OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 99962)
-- Name: events_id_event_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.events ALTER COLUMN id_event ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.events_id_event_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 217 (class 1259 OID 99935)
-- Name: services; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.services (
    id_services integer NOT NULL,
    name_services text NOT NULL,
    cost numeric
);


ALTER TABLE public.services OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 99938)
-- Name: services_id_services_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.services ALTER COLUMN id_services ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.services_id_services_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 215 (class 1259 OID 99924)
-- Name: staff; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.staff (
    id_staff integer NOT NULL,
    surname text NOT NULL,
    first_name text,
    middle_name text,
    recycling integer
);


ALTER TABLE public.staff OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 99927)
-- Name: staff_id_staff_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.staff ALTER COLUMN id_staff ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.staff_id_staff_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 4659 (class 2606 OID 99953)
-- Name: halls Halls_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.halls
    ADD CONSTRAINT "Halls_pkey" PRIMARY KEY (id_hall);


--
-- TOC entry 4661 (class 2606 OID 99961)
-- Name: client client_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id_client);


--
-- TOC entry 4663 (class 2606 OID 99969)
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id_event);


--
-- TOC entry 4657 (class 2606 OID 99945)
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (id_services);


--
-- TOC entry 4655 (class 2606 OID 99934)
-- Name: staff staff_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_pkey PRIMARY KEY (id_staff);


-- Completed on 2026-05-08 12:54:51

--
-- PostgreSQL database dump complete
--

