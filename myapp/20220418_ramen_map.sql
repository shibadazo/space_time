--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9
-- Dumped by pg_dump version 12.9

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: ken
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO ken;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: ken
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO ken;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ken
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: ken
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO ken;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ken
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO ken;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ken
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: ken
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO ken;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: ken
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO ken;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ken
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: ken
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO ken;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: ken
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO ken;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: ken
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO ken;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ken
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: ken
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO ken;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ken
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: ken
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO ken;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ken
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO ken;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ken
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: ken
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO ken;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: ken
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO ken;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ken
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: ken
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO ken;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: ken
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO ken;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ken
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: ken
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO ken;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: ken
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO ken;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ken
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: ken
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO ken;

--
-- Name: lunchmap_category; Type: TABLE; Schema: public; Owner: ken
--

CREATE TABLE public.lunchmap_category (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    author_id integer NOT NULL
);


ALTER TABLE public.lunchmap_category OWNER TO ken;

--
-- Name: lunchmap_category_id_seq; Type: SEQUENCE; Schema: public; Owner: ken
--

CREATE SEQUENCE public.lunchmap_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lunchmap_category_id_seq OWNER TO ken;

--
-- Name: lunchmap_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ken
--

ALTER SEQUENCE public.lunchmap_category_id_seq OWNED BY public.lunchmap_category.id;


--
-- Name: lunchmap_shop; Type: TABLE; Schema: public; Owner: ken
--

CREATE TABLE public.lunchmap_shop (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    author_id integer NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.lunchmap_shop OWNER TO ken;

--
-- Name: lunchmap_shop_id_seq; Type: SEQUENCE; Schema: public; Owner: ken
--

CREATE SEQUENCE public.lunchmap_shop_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lunchmap_shop_id_seq OWNER TO ken;

--
-- Name: lunchmap_shop_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ken
--

ALTER SEQUENCE public.lunchmap_shop_id_seq OWNED BY public.lunchmap_shop.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: lunchmap_category id; Type: DEFAULT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.lunchmap_category ALTER COLUMN id SET DEFAULT nextval('public.lunchmap_category_id_seq'::regclass);


--
-- Name: lunchmap_shop id; Type: DEFAULT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.lunchmap_shop ALTER COLUMN id SET DEFAULT nextval('public.lunchmap_shop_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: ken
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: ken
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: ken
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add category	1	add_category
2	Can change category	1	change_category
3	Can delete category	1	delete_category
4	Can view category	1	view_category
5	Can add shop	2	add_shop
6	Can change shop	2	change_shop
7	Can delete shop	2	delete_shop
8	Can view shop	2	view_shop
9	Can add log entry	3	add_logentry
10	Can change log entry	3	change_logentry
11	Can delete log entry	3	delete_logentry
12	Can view log entry	3	view_logentry
13	Can add permission	4	add_permission
14	Can change permission	4	change_permission
15	Can delete permission	4	delete_permission
16	Can view permission	4	view_permission
17	Can add group	5	add_group
18	Can change group	5	change_group
19	Can delete group	5	delete_group
20	Can view group	5	view_group
21	Can add user	6	add_user
22	Can change user	6	change_user
23	Can delete user	6	delete_user
24	Can view user	6	view_user
25	Can add content type	7	add_contenttype
26	Can change content type	7	change_contenttype
27	Can delete content type	7	delete_contenttype
28	Can view content type	7	view_contenttype
29	Can add session	8	add_session
30	Can change session	8	change_session
31	Can delete session	8	delete_session
32	Can view session	8	view_session
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: ken
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$120000$FnBv3Y4DMVGa$j+rF8K4d3oXyuCJeNU0zjF1c4YZeMBfhRpuNsc+ZDK8=	2021-07-27 16:07:48.062274+09	t	ken			s1922062@stu.musashino-u.ac.jp	t	t	2021-07-25 17:41:16.682471+09
2	pbkdf2_sha256$120000$8gHDBUscXVoI$7n8YuPQ6AHJeRdMUrdXMrscO8/wrUiDRuWQz+UpjD3M=	\N	t	48ken			s1922062@stu.musashino-u.ac.jp	t	t	2022-04-15 20:29:48.289593+09
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: ken
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: ken
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: ken
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-07-25 19:02:10.619515+09	1	中華	1	[{"added": {}}]	1	1
2	2021-07-25 19:02:20.12408+09	2	イタリアン	1	[{"added": {}}]	1	1
3	2021-07-25 19:02:26.080685+09	3	和食	1	[{"added": {}}]	1	1
4	2021-07-25 19:04:36.831737+09	1	炭火焼鳥 無門	1	[{"added": {}}]	2	1
5	2021-07-25 19:07:36.669181+09	2	八代目 けいすけ	1	[{"added": {}}]	2	1
6	2021-07-25 19:09:17.109168+09	3	ソラノイロ NIPPON	1	[{"added": {}}]	2	1
7	2021-07-27 19:22:26.946552+09	3	醤油	2	[{"changed": {"fields": ["name"]}}]	1	1
8	2021-07-27 19:22:55.80448+09	1	塩	2	[{"changed": {"fields": ["name"]}}]	1	1
9	2021-07-27 19:23:17.479404+09	2	豚骨	2	[{"changed": {"fields": ["name"]}}]	1	1
10	2021-07-27 19:23:31.374355+09	4	味噌	1	[{"added": {}}]	1	1
11	2021-07-27 19:23:47.423495+09	5	家系	1	[{"added": {}}]	1	1
12	2021-07-27 19:24:06.390515+09	6	魚介つけ麺	1	[{"added": {}}]	1	1
13	2021-07-27 19:25:02.333702+09	7	二郎系	1	[{"added": {}}]	1	1
14	2021-07-27 19:25:12.658087+09	5	醤油豚骨	2	[{"changed": {"fields": ["name"]}}]	1	1
15	2021-07-27 19:25:25.939743+09	8	油そば	1	[{"added": {}}]	1	1
16	2021-07-27 19:25:50.441952+09	9	鶏白湯	1	[{"added": {}}]	1	1
17	2021-07-27 19:26:21.357018+09	10	煮干し	1	[{"added": {}}]	1	1
18	2021-07-27 19:27:19.267583+09	6	つけ麺	2	[{"changed": {"fields": ["name"]}}]	1	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: ken
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	lunchmap	category
2	lunchmap	shop
3	admin	logentry
4	auth	permission
5	auth	group
6	auth	user
7	contenttypes	contenttype
8	sessions	session
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: ken
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-07-25 17:30:12.15805+09
2	auth	0001_initial	2021-07-25 17:30:12.219193+09
3	admin	0001_initial	2021-07-25 17:30:12.243399+09
4	admin	0002_logentry_remove_auto_add	2021-07-25 17:30:12.253829+09
5	admin	0003_logentry_add_action_flag_choices	2021-07-25 17:30:12.269299+09
6	contenttypes	0002_remove_content_type_name	2021-07-25 17:30:12.293614+09
7	auth	0002_alter_permission_name_max_length	2021-07-25 17:30:12.30033+09
8	auth	0003_alter_user_email_max_length	2021-07-25 17:30:12.315945+09
9	auth	0004_alter_user_username_opts	2021-07-25 17:30:12.329623+09
10	auth	0005_alter_user_last_login_null	2021-07-25 17:30:12.342596+09
11	auth	0006_require_contenttypes_0002	2021-07-25 17:30:12.344977+09
12	auth	0007_alter_validators_add_error_messages	2021-07-25 17:30:12.355276+09
13	auth	0008_alter_user_username_max_length	2021-07-25 17:30:12.387448+09
14	auth	0009_alter_user_last_name_max_length	2021-07-25 17:30:12.400583+09
15	lunchmap	0001_initial	2021-07-25 17:30:12.43819+09
16	sessions	0001_initial	2021-07-25 17:30:12.448012+09
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: ken
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
kqsvzle6boifb0be6pr9fs6tvlifoduu	MTVmZDE2YTE2YjA3ZDc5ZWM5NzIzODk4Y2Q2MDFiYjQ5NjQ5MWIxNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2M2YxZWMyNjY4YTViODE0NWRmZDUwOWRkZDI4MDg3MTg1OTYyMmU4In0=	2021-08-10 16:07:48.064197+09
\.


--
-- Data for Name: lunchmap_category; Type: TABLE DATA; Schema: public; Owner: ken
--

COPY public.lunchmap_category (id, name, created_at, updated_at, author_id) FROM stdin;
3	醤油	2021-07-25 19:02:26.079625+09	2021-07-27 19:22:26.94466+09	1
1	塩	2021-07-25 19:02:10.617356+09	2021-07-27 19:22:55.803403+09	1
2	豚骨	2021-07-25 19:02:20.121624+09	2021-07-27 19:23:17.478718+09	1
4	味噌	2021-07-27 19:23:31.372796+09	2021-07-27 19:23:31.372814+09	1
7	二郎系	2021-07-27 19:25:02.332993+09	2021-07-27 19:25:02.33301+09	1
5	醤油豚骨	2021-07-27 19:23:47.422866+09	2021-07-27 19:25:12.656249+09	1
8	油そば	2021-07-27 19:25:25.938971+09	2021-07-27 19:25:25.938989+09	1
9	鶏白湯	2021-07-27 19:25:50.441226+09	2021-07-27 19:25:50.441243+09	1
10	煮干し	2021-07-27 19:26:21.356207+09	2021-07-27 19:26:21.356226+09	1
6	つけ麺	2021-07-27 19:24:06.389519+09	2021-07-27 19:27:19.266627+09	1
\.


--
-- Data for Name: lunchmap_shop; Type: TABLE DATA; Schema: public; Owner: ken
--

COPY public.lunchmap_shop (id, name, address, created_at, updated_at, author_id, category_id) FROM stdin;
2	八代目 けいすけ	東京都中央区銀座５丁目２−１ 東急プラザ 地下２F	2021-07-25 19:07:36.66835+09	2021-07-27 15:46:46.342992+09	1	1
3	ソラノイロ NIPPON	東京都千代田区丸の内１丁目９−１ 東京駅一番街 B1	2021-07-25 19:09:17.108285+09	2021-07-27 19:26:51.712162+09	1	3
5	麺や一途 導	東京都江東区豊洲２丁目２−１ 東京ベイサイドクロス b1	2021-07-26 16:35:05.766676+09	2021-07-27 19:27:02.021891+09	1	2
4	六厘舎	東京都千代田区丸の内１丁目９−１ 東京駅一番街 B1	2021-07-26 16:30:08.17584+09	2021-07-27 19:27:08.301421+09	1	6
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ken
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ken
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ken
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ken
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ken
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ken
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ken
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 18, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ken
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ken
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 16, true);


--
-- Name: lunchmap_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ken
--

SELECT pg_catalog.setval('public.lunchmap_category_id_seq', 10, true);


--
-- Name: lunchmap_shop_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ken
--

SELECT pg_catalog.setval('public.lunchmap_shop_id_seq', 6, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: lunchmap_category lunchmap_category_pkey; Type: CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.lunchmap_category
    ADD CONSTRAINT lunchmap_category_pkey PRIMARY KEY (id);


--
-- Name: lunchmap_shop lunchmap_shop_pkey; Type: CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.lunchmap_shop
    ADD CONSTRAINT lunchmap_shop_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: ken
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: ken
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: ken
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: ken
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: ken
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: ken
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: ken
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: ken
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: ken
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: ken
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: ken
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: ken
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: ken
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: lunchmap_category_author_id_017d116a; Type: INDEX; Schema: public; Owner: ken
--

CREATE INDEX lunchmap_category_author_id_017d116a ON public.lunchmap_category USING btree (author_id);


--
-- Name: lunchmap_shop_author_id_3864ce6e; Type: INDEX; Schema: public; Owner: ken
--

CREATE INDEX lunchmap_shop_author_id_3864ce6e ON public.lunchmap_shop USING btree (author_id);


--
-- Name: lunchmap_shop_category_id_428e20dd; Type: INDEX; Schema: public; Owner: ken
--

CREATE INDEX lunchmap_shop_category_id_428e20dd ON public.lunchmap_shop USING btree (category_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: lunchmap_category lunchmap_category_author_id_017d116a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.lunchmap_category
    ADD CONSTRAINT lunchmap_category_author_id_017d116a_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: lunchmap_shop lunchmap_shop_author_id_3864ce6e_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.lunchmap_shop
    ADD CONSTRAINT lunchmap_shop_author_id_3864ce6e_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: lunchmap_shop lunchmap_shop_category_id_428e20dd_fk_lunchmap_category_id; Type: FK CONSTRAINT; Schema: public; Owner: ken
--

ALTER TABLE ONLY public.lunchmap_shop
    ADD CONSTRAINT lunchmap_shop_category_id_428e20dd_fk_lunchmap_category_id FOREIGN KEY (category_id) REFERENCES public.lunchmap_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

