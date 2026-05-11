--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2026-05-08 12:57:07

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
-- TOC entry 4814 (class 0 OID 99955)
-- Dependencies: 222
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.client (id_client, surname_client, firstname_client, middlename_client) FROM stdin;
1	Абрамов	Илья	Борисович
3	Прокошев	Дмитрий	Евгеньевич
4	Медведева	Юлия	Александровна
5	Чупин	Алексей	Дмитриевич
6	Лапин	Даниил	Александрович
\.


--
-- TOC entry 4816 (class 0 OID 99963)
-- Dependencies: 224
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.events (id_event, name_event, date_event, cost, id_staff, id_hall, id_services, id_client) FROM stdin;
1	День рождения	2025-08-03	1500.00	2	1	3	1
2	Юбилей фирмы	2025-09-10	3000.00	1	3	2	3
3	Свадьба	2025-08-11	5700.00	3	2	1	4
4	Защита диссертации	2025-09-15	1400.00	4	1	4	5
5	Встреча одноклассников	2025-09-26	1890.00	5	2	5	6
\.


--
-- TOC entry 4812 (class 0 OID 99947)
-- Dependencies: 220
-- Data for Name: halls; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.halls (id_hall, name_hall, capacity) FROM stdin;
1	Банкетный зал	45
2	Аванзал	30
3	Бар	20
\.


--
-- TOC entry 4809 (class 0 OID 99935)
-- Dependencies: 217
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.services (id_services, name_services, cost) FROM stdin;
1	Шведский стол	1150.00
2	Полное обслуживание	4000.00
3	Банкет	4500.00
4	Комбинированная подача	3500.00
5	Обслуживание по-американски	1800.00
\.


--
-- TOC entry 4807 (class 0 OID 99924)
-- Dependencies: 215
-- Data for Name: staff; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.staff (id_staff, surname, first_name, middle_name, recycling) FROM stdin;
1	Абрикосов	Артем	Максимович	4
2	Шувалова	Алена	Викторовна	2
3	Носов	Вадим	Анатольевич	5
4	Фролова	Надежда	Алексеевна	8
5	Лебедев	Никита	Григорьевич	3
\.


--
-- TOC entry 4822 (class 0 OID 0)
-- Dependencies: 219
-- Name: Halls_id_hall_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Halls_id_hall_seq"', 3, true);


--
-- TOC entry 4823 (class 0 OID 0)
-- Dependencies: 221
-- Name: client_id_client_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.client_id_client_seq', 6, true);


--
-- TOC entry 4824 (class 0 OID 0)
-- Dependencies: 223
-- Name: events_id_event_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.events_id_event_seq', 5, true);


--
-- TOC entry 4825 (class 0 OID 0)
-- Dependencies: 218
-- Name: services_id_services_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.services_id_services_seq', 5, true);


--
-- TOC entry 4826 (class 0 OID 0)
-- Dependencies: 216
-- Name: staff_id_staff_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.staff_id_staff_seq', 5, true);


-- Completed on 2026-05-08 12:57:07

--
-- PostgreSQL database dump complete
--

