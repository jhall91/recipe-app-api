--
-- PostgreSQL database dump
--

-- Dumped from database version 13.14
-- Dumped by pg_dump version 13.14

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: devuser
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO devuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: devuser
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO devuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devuser
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: devuser
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO devuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: devuser
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO devuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devuser
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: devuser
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO devuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: devuser
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO devuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devuser
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: devuser
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO devuser;

--
-- Name: core_ingredient; Type: TABLE; Schema: public; Owner: devuser
--

CREATE TABLE public.core_ingredient (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.core_ingredient OWNER TO devuser;

--
-- Name: core_ingredient_id_seq; Type: SEQUENCE; Schema: public; Owner: devuser
--

CREATE SEQUENCE public.core_ingredient_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_ingredient_id_seq OWNER TO devuser;

--
-- Name: core_ingredient_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devuser
--

ALTER SEQUENCE public.core_ingredient_id_seq OWNED BY public.core_ingredient.id;


--
-- Name: core_recipe; Type: TABLE; Schema: public; Owner: devuser
--

CREATE TABLE public.core_recipe (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    description text NOT NULL,
    time_minutes integer NOT NULL,
    price numeric(5,2) NOT NULL,
    link character varying(255) NOT NULL,
    user_id bigint NOT NULL,
    image character varying(100)
);


ALTER TABLE public.core_recipe OWNER TO devuser;

--
-- Name: core_recipe_id_seq; Type: SEQUENCE; Schema: public; Owner: devuser
--

CREATE SEQUENCE public.core_recipe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_recipe_id_seq OWNER TO devuser;

--
-- Name: core_recipe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devuser
--

ALTER SEQUENCE public.core_recipe_id_seq OWNED BY public.core_recipe.id;


--
-- Name: core_recipe_ingredients; Type: TABLE; Schema: public; Owner: devuser
--

CREATE TABLE public.core_recipe_ingredients (
    id bigint NOT NULL,
    recipe_id bigint NOT NULL,
    ingredient_id bigint NOT NULL
);


ALTER TABLE public.core_recipe_ingredients OWNER TO devuser;

--
-- Name: core_recipe_ingredients_id_seq; Type: SEQUENCE; Schema: public; Owner: devuser
--

CREATE SEQUENCE public.core_recipe_ingredients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_recipe_ingredients_id_seq OWNER TO devuser;

--
-- Name: core_recipe_ingredients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devuser
--

ALTER SEQUENCE public.core_recipe_ingredients_id_seq OWNED BY public.core_recipe_ingredients.id;


--
-- Name: core_recipe_tags; Type: TABLE; Schema: public; Owner: devuser
--

CREATE TABLE public.core_recipe_tags (
    id bigint NOT NULL,
    recipe_id bigint NOT NULL,
    tag_id bigint NOT NULL
);


ALTER TABLE public.core_recipe_tags OWNER TO devuser;

--
-- Name: core_recipe_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: devuser
--

CREATE SEQUENCE public.core_recipe_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_recipe_tags_id_seq OWNER TO devuser;

--
-- Name: core_recipe_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devuser
--

ALTER SEQUENCE public.core_recipe_tags_id_seq OWNED BY public.core_recipe_tags.id;


--
-- Name: core_tag; Type: TABLE; Schema: public; Owner: devuser
--

CREATE TABLE public.core_tag (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.core_tag OWNER TO devuser;

--
-- Name: core_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: devuser
--

CREATE SEQUENCE public.core_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_tag_id_seq OWNER TO devuser;

--
-- Name: core_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devuser
--

ALTER SEQUENCE public.core_tag_id_seq OWNED BY public.core_tag.id;


--
-- Name: core_user; Type: TABLE; Schema: public; Owner: devuser
--

CREATE TABLE public.core_user (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    email character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    is_active boolean NOT NULL,
    is_staff boolean NOT NULL
);


ALTER TABLE public.core_user OWNER TO devuser;

--
-- Name: core_user_groups; Type: TABLE; Schema: public; Owner: devuser
--

CREATE TABLE public.core_user_groups (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.core_user_groups OWNER TO devuser;

--
-- Name: core_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: devuser
--

CREATE SEQUENCE public.core_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_user_groups_id_seq OWNER TO devuser;

--
-- Name: core_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devuser
--

ALTER SEQUENCE public.core_user_groups_id_seq OWNED BY public.core_user_groups.id;


--
-- Name: core_user_id_seq; Type: SEQUENCE; Schema: public; Owner: devuser
--

CREATE SEQUENCE public.core_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_user_id_seq OWNER TO devuser;

--
-- Name: core_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devuser
--

ALTER SEQUENCE public.core_user_id_seq OWNED BY public.core_user.id;


--
-- Name: core_user_user_permissions; Type: TABLE; Schema: public; Owner: devuser
--

CREATE TABLE public.core_user_user_permissions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.core_user_user_permissions OWNER TO devuser;

--
-- Name: core_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: devuser
--

CREATE SEQUENCE public.core_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_user_user_permissions_id_seq OWNER TO devuser;

--
-- Name: core_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devuser
--

ALTER SEQUENCE public.core_user_user_permissions_id_seq OWNED BY public.core_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: devuser
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO devuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: devuser
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO devuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devuser
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: devuser
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO devuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: devuser
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO devuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devuser
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: devuser
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO devuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: devuser
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO devuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devuser
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: devuser
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO devuser;

--
-- Name: spec_review_requirement_components; Type: TABLE; Schema: public; Owner: devuser
--

CREATE TABLE public.spec_review_requirement_components (
    id bigint NOT NULL,
    requirement_id bigint NOT NULL,
    component_id bigint NOT NULL
);


ALTER TABLE public.spec_review_requirement_components OWNER TO devuser;

--
-- Name: requirements_components_id_seq; Type: SEQUENCE; Schema: public; Owner: devuser
--

CREATE SEQUENCE public.requirements_components_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.requirements_components_id_seq OWNER TO devuser;

--
-- Name: requirements_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devuser
--

ALTER SEQUENCE public.requirements_components_id_seq OWNED BY public.spec_review_requirement_components.id;


--
-- Name: spec_review_requirement; Type: TABLE; Schema: public; Owner: devuser
--

CREATE TABLE public.spec_review_requirement (
    id bigint NOT NULL,
    requirement character varying(255) NOT NULL,
    deviation text,
    specification_id bigint NOT NULL,
    clause character varying(20) NOT NULL,
    page_number integer NOT NULL
);


ALTER TABLE public.spec_review_requirement OWNER TO devuser;

--
-- Name: requirements_id_seq; Type: SEQUENCE; Schema: public; Owner: devuser
--

CREATE SEQUENCE public.requirements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.requirements_id_seq OWNER TO devuser;

--
-- Name: requirements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devuser
--

ALTER SEQUENCE public.requirements_id_seq OWNED BY public.spec_review_requirement.id;


--
-- Name: spec_review_component; Type: TABLE; Schema: public; Owner: devuser
--

CREATE TABLE public.spec_review_component (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    part_number character varying(50)
);


ALTER TABLE public.spec_review_component OWNER TO devuser;

--
-- Name: spec_review_component_id_seq; Type: SEQUENCE; Schema: public; Owner: devuser
--

CREATE SEQUENCE public.spec_review_component_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spec_review_component_id_seq OWNER TO devuser;

--
-- Name: spec_review_component_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devuser
--

ALTER SEQUENCE public.spec_review_component_id_seq OWNED BY public.spec_review_component.id;


--
-- Name: spec_review_specification; Type: TABLE; Schema: public; Owner: devuser
--

CREATE TABLE public.spec_review_specification (
    id bigint NOT NULL,
    spec_number character varying(100) NOT NULL,
    spec_title character varying(255) NOT NULL,
    spec_authority character varying(100) NOT NULL,
    revision character varying(50) NOT NULL,
    pdf character varying(100)
);


ALTER TABLE public.spec_review_specification OWNER TO devuser;

--
-- Name: spec_review_specification_id_seq; Type: SEQUENCE; Schema: public; Owner: devuser
--

CREATE SEQUENCE public.spec_review_specification_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spec_review_specification_id_seq OWNER TO devuser;

--
-- Name: spec_review_specification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devuser
--

ALTER SEQUENCE public.spec_review_specification_id_seq OWNED BY public.spec_review_specification.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: core_ingredient id; Type: DEFAULT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_ingredient ALTER COLUMN id SET DEFAULT nextval('public.core_ingredient_id_seq'::regclass);


--
-- Name: core_recipe id; Type: DEFAULT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_recipe ALTER COLUMN id SET DEFAULT nextval('public.core_recipe_id_seq'::regclass);


--
-- Name: core_recipe_ingredients id; Type: DEFAULT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_recipe_ingredients ALTER COLUMN id SET DEFAULT nextval('public.core_recipe_ingredients_id_seq'::regclass);


--
-- Name: core_recipe_tags id; Type: DEFAULT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_recipe_tags ALTER COLUMN id SET DEFAULT nextval('public.core_recipe_tags_id_seq'::regclass);


--
-- Name: core_tag id; Type: DEFAULT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_tag ALTER COLUMN id SET DEFAULT nextval('public.core_tag_id_seq'::regclass);


--
-- Name: core_user id; Type: DEFAULT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_user ALTER COLUMN id SET DEFAULT nextval('public.core_user_id_seq'::regclass);


--
-- Name: core_user_groups id; Type: DEFAULT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_user_groups ALTER COLUMN id SET DEFAULT nextval('public.core_user_groups_id_seq'::regclass);


--
-- Name: core_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.core_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: spec_review_component id; Type: DEFAULT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.spec_review_component ALTER COLUMN id SET DEFAULT nextval('public.spec_review_component_id_seq'::regclass);


--
-- Name: spec_review_requirement id; Type: DEFAULT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.spec_review_requirement ALTER COLUMN id SET DEFAULT nextval('public.requirements_id_seq'::regclass);


--
-- Name: spec_review_requirement_components id; Type: DEFAULT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.spec_review_requirement_components ALTER COLUMN id SET DEFAULT nextval('public.requirements_components_id_seq'::regclass);


--
-- Name: spec_review_specification id; Type: DEFAULT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.spec_review_specification ALTER COLUMN id SET DEFAULT nextval('public.spec_review_specification_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: devuser
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: devuser
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: devuser
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add user	6	add_user
22	Can change user	6	change_user
23	Can delete user	6	delete_user
24	Can view user	6	view_user
25	Can add Token	7	add_token
26	Can change Token	7	change_token
27	Can delete Token	7	delete_token
28	Can view Token	7	view_token
29	Can add token	8	add_tokenproxy
30	Can change token	8	change_tokenproxy
31	Can delete token	8	delete_tokenproxy
32	Can view token	8	view_tokenproxy
33	Can add recipe	9	add_recipe
34	Can change recipe	9	change_recipe
35	Can delete recipe	9	delete_recipe
36	Can view recipe	9	view_recipe
37	Can add tag	10	add_tag
38	Can change tag	10	change_tag
39	Can delete tag	10	delete_tag
40	Can view tag	10	view_tag
41	Can add ingredient	11	add_ingredient
42	Can change ingredient	11	change_ingredient
43	Can delete ingredient	11	delete_ingredient
44	Can view ingredient	11	view_ingredient
45	Can add component	12	add_component
46	Can change component	12	change_component
47	Can delete component	12	delete_component
48	Can view component	12	view_component
49	Can add requirement	13	add_requirement
50	Can change requirement	13	change_requirement
51	Can delete requirement	13	delete_requirement
52	Can view requirement	13	view_requirement
53	Can add specification	14	add_specification
54	Can change specification	14	change_specification
55	Can delete specification	14	delete_specification
56	Can view specification	14	view_specification
\.


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: devuser
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
cbe8165440fbf4b0308f7ee3a5d1deb685ed721e	2024-07-03 20:52:32.565709+00	2
4a513234092ae9dc526bd2ab9e3b1623d7d43eec	2024-07-29 09:37:43.594178+00	1
033f83bc714cf5fa235d7c71428ac3ab01588d7d	2024-07-30 09:11:18.87898+00	3
\.


--
-- Data for Name: core_ingredient; Type: TABLE DATA; Schema: public; Owner: devuser
--

COPY public.core_ingredient (id, name, user_id) FROM stdin;
1	salt	1
\.


--
-- Data for Name: core_recipe; Type: TABLE DATA; Schema: public; Owner: devuser
--

COPY public.core_recipe (id, title, description, time_minutes, price, link, user_id, image) FROM stdin;
3	recipe 1	some description	10	2.50	example.com	3	\N
4	recipe 1	some description	100	2.50	example.com	1	\N
5	recipe 1	some description	100	2.50	example.com	1	\N
6	new recipe	salt recipe	30	5.50	http:/example.com	1	\N
2	Recipe 1	sample description	100	2.50	example.com	1	uploads/recipe/7a91401e-c5c0-4d8b-b1c4-c141b75abdcb.jfif
\.


--
-- Data for Name: core_recipe_ingredients; Type: TABLE DATA; Schema: public; Owner: devuser
--

COPY public.core_recipe_ingredients (id, recipe_id, ingredient_id) FROM stdin;
1	6	1
\.


--
-- Data for Name: core_recipe_tags; Type: TABLE DATA; Schema: public; Owner: devuser
--

COPY public.core_recipe_tags (id, recipe_id, tag_id) FROM stdin;
1	4	1
2	5	1
3	5	2
\.


--
-- Data for Name: core_tag; Type: TABLE DATA; Schema: public; Owner: devuser
--

COPY public.core_tag (id, name, user_id) FROM stdin;
1	tag1	1
2	Tag 2 updated	1
\.


--
-- Data for Name: core_user; Type: TABLE DATA; Schema: public; Owner: devuser
--

COPY public.core_user (id, password, last_login, is_superuser, email, name, is_active, is_staff) FROM stdin;
2	pbkdf2_sha256$260000$lscBPBoovjd2CddFCTI9Ct$vku5gPfvD7wEH3tD2l+5WkPAPzwb+EotGBhdF+q8eIM=	\N	f	user2@example.com	User2_new_name	t	f
3	pbkdf2_sha256$260000$rsqDEXOwJN9YVlvdBwoAak$SljavthSLTi9NUbp1ohmK/mDq96k1EBaOBBJRah0hH0=	\N	f	user@example.com	string	t	f
1	pbkdf2_sha256$260000$wZXz8VumbpwFeDfuA44VmQ$RhnMx1WwZdivWvCNki+tY6J9h9FajDgKCgVXMMvlXZo=	2024-08-31 11:23:16.675452+00	t	admin@example.com		t	t
\.


--
-- Data for Name: core_user_groups; Type: TABLE DATA; Schema: public; Owner: devuser
--

COPY public.core_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: core_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: devuser
--

COPY public.core_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: devuser
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2024-08-13 20:18:44.867412+00	6	valves	1	[{"added": {}}]	12	1
2	2024-08-14 19:58:48.266357+00	1	cooler spec - to be stainless steel	1	[{"added": {}}]	13	1
3	2024-08-14 19:59:33.646505+00	1	main spec - to be stainless steel	2	[{"changed": {"fields": ["Components", "Specification title", "Specification code"]}}]	13	1
4	2024-08-14 20:13:11.404606+00	2	filter spec - fully flanged	1	[{"added": {}}]	13	1
5	2024-08-14 20:14:43.882997+00	3	filter spec - vents & drains returned to tank	1	[{"added": {}}]	13	1
6	2024-08-17 14:22:17.713448+00	51	TCV	1	[{"added": {}}]	12	1
7	2024-08-17 14:22:57.972705+00	51	TCV	2	[{"added": {"name": "requirement-component relationship", "object": "Requirement_components object (8)"}}]	12	1
8	2024-08-17 14:27:46.293195+00	3	filter spec - vents & drains returned to tank	3		13	1
9	2024-08-17 14:28:46.520584+00	2	filter spec - fully flanged	2	[{"changed": {"fields": ["Components"]}}]	13	1
10	2024-08-18 17:21:16.693995+00	1	API 614 - Lubrication Specification	1	[{"added": {}}]	14	1
11	2024-08-20 20:12:18.649238+00	1	API 614 - Lubrication Specification	2	[{"changed": {"fields": ["Revision"]}}]	14	1
12	2024-08-20 20:22:42.584843+00	4	vents & drains returned to tank	1	[{"added": {}}]	13	1
13	2024-08-21 19:48:26.238248+00	4	vents & drains returned to tank	2	[{"changed": {"fields": ["Clause", "Page number"]}}]	13	1
14	2024-08-21 19:48:41.910867+00	2	fully flanged	2	[{"changed": {"fields": ["Clause", "Page number", "Deviation"]}}]	13	1
15	2024-08-21 19:48:56.365997+00	1	to be stainless steel	2	[{"changed": {"fields": ["Deviation"]}}]	13	1
16	2024-08-21 19:49:02.152969+00	2	fully flanged	2	[{"changed": {"fields": ["Deviation"]}}]	13	1
17	2024-08-21 19:49:07.083236+00	4	vents & drains returned to tank	2	[{"changed": {"fields": ["Deviation"]}}]	13	1
18	2024-08-21 19:49:18.335176+00	1	to be stainless steel	2	[{"changed": {"fields": ["Clause", "Page number"]}}]	13	1
19	2024-08-31 12:01:00.404179+00	1	API 614 - Lubrication Specification	2	[{"changed": {"fields": ["Revision", "Pdf"]}}]	14	1
20	2024-08-31 12:02:09.0903+00	1	API 614 - Lubrication Specification	2	[{"changed": {"fields": ["Revision"]}}]	14	1
21	2024-08-31 12:05:05.009228+00	2	API 617 - Axial and Centrifugal Compressors and Expander-compressors for Petroleum, Chemical and Gas Industry Services	1	[{"added": {}}]	14	1
22	2024-08-31 12:05:49.155516+00	1	API 614 - Lubrication, Shaft-sealing and Oil-control Systems and Auxiliaries	2	[{"changed": {"fields": ["Spec title"]}}]	14	1
23	2024-08-31 13:35:01.955609+00	4	vents & drains returned to tank	2	[]	13	1
24	2024-08-31 13:48:56.980434+00	3	API 614 - Lubrication, Shaft-sealing and Oil-control Systems and Auxiliaries (Rev: 6th Edition)	1	[{"added": {}}]	14	1
25	2024-08-31 15:57:07.01384+00	4	new - new1 (Rev: 1)	1	[{"added": {}}]	14	1
26	2024-09-07 16:13:06.510535+00	5	to have welded support feet	1	[{"added": {}}]	13	1
27	2024-09-07 18:49:22.532713+00	3	API 614 - Lubrication, Shaft-sealing and Oil-control Systems and Auxiliaries (Rev: 6th Edition)	3		14	1
28	2024-09-07 18:49:31.261391+00	4	new - new1 (Rev: 1)	3		14	1
29	2024-09-07 18:57:16.608732+00	51	Temperature Control Valve	2	[{"changed": {"fields": ["Name"]}}]	12	1
30	2024-09-07 18:57:35.053059+00	51	temperature control valve	2	[{"changed": {"fields": ["Name"]}}]	12	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: devuser
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	core	user
7	authtoken	token
8	authtoken	tokenproxy
9	core	recipe
10	core	tag
11	core	ingredient
12	spec_review	component
13	spec_review	requirement
14	spec_review	specification
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: devuser
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2024-05-08 19:26:44.931274+00
2	contenttypes	0002_remove_content_type_name	2024-05-08 19:26:44.949268+00
3	auth	0001_initial	2024-05-08 19:26:45.065389+00
4	auth	0002_alter_permission_name_max_length	2024-05-08 19:26:45.077077+00
5	auth	0003_alter_user_email_max_length	2024-05-08 19:26:45.09073+00
6	auth	0004_alter_user_username_opts	2024-05-08 19:26:45.103196+00
7	auth	0005_alter_user_last_login_null	2024-05-08 19:26:45.114855+00
8	auth	0006_require_contenttypes_0002	2024-05-08 19:26:45.12037+00
9	auth	0007_alter_validators_add_error_messages	2024-05-08 19:26:45.131698+00
10	auth	0008_alter_user_username_max_length	2024-05-08 19:26:45.144288+00
11	auth	0009_alter_user_last_name_max_length	2024-05-08 19:26:45.158995+00
12	auth	0010_alter_group_name_max_length	2024-05-08 19:26:45.175704+00
13	auth	0011_update_proxy_permissions	2024-05-08 19:26:45.188434+00
14	auth	0012_alter_user_first_name_max_length	2024-05-08 19:26:45.202286+00
15	core	0001_initial	2024-05-08 19:26:45.326342+00
16	admin	0001_initial	2024-05-08 19:26:45.387189+00
17	admin	0002_logentry_remove_auto_add	2024-05-08 19:26:45.403196+00
18	admin	0003_logentry_add_action_flag_choices	2024-05-08 19:26:45.419504+00
19	sessions	0001_initial	2024-05-08 19:26:45.455058+00
20	authtoken	0001_initial	2024-07-02 20:28:56.291301+00
21	authtoken	0002_auto_20160226_1747	2024-07-02 20:28:56.346643+00
22	authtoken	0003_tokenproxy	2024-07-02 20:28:56.353526+00
23	core	0002_recipe	2024-07-15 19:16:58.200158+00
24	core	0003_auto_20240730_0727	2024-07-30 09:16:30.842736+00
25	core	0004_auto_20240730_1030	2024-07-30 11:25:55.467435+00
26	core	0005_recipe_image	2024-07-30 13:03:27.381402+00
27	spec_review	0001_initial	2024-08-13 19:48:47.449246+00
28	spec_review	0002_component_part_number	2024-08-13 20:25:09.348064+00
29	spec_review	0003_requirement	2024-08-14 19:56:39.485193+00
30	spec_review	0004_auto_20240817_1419	2024-08-17 14:19:57.822862+00
31	spec_review	0005_specification	2024-08-18 17:12:41.084927+00
32	spec_review	0006_auto_20240818_1726	2024-08-18 17:26:42.17393+00
33	spec_review	0007_auto_20240821_1947	2024-08-21 19:47:51.074793+00
34	spec_review	0008_specification_pdf	2024-08-31 11:33:45.474766+00
35	spec_review	0009_auto_20240831_1347	2024-08-31 13:47:56.007493+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: devuser
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
4hxluexb3cidz74oxcrnxh7kmflzpzva	.eJxVjDkOwjAUBe_iGlmO91DScwbLfzEOIEeKkwpxd4iUAto3M-8lUt7WmrbOS5pInMUgTr8bZHxw2wHdc7vNEue2LhPIXZEH7fI6Ez8vh_t3UHOv31q7aJwp4HSggVVWIRgcyZOJxmJhFVxBCkyxQGHQ3sfo1chsLQTALN4f4Dc4dw:1s4nVD:yEjph3ZjH7GLjZ_GsXioofQQvJOtWatYuGrfnTFETT8	2024-05-22 20:02:59.835906+00
7tbkjqyajhcenjk35r6knmib63cr100z	.eJxVjDkOwjAUBe_iGlmO91DScwbLfzEOIEeKkwpxd4iUAto3M-8lUt7WmrbOS5pInMUgTr8bZHxw2wHdc7vNEue2LhPIXZEH7fI6Ez8vh_t3UHOv31q7aJwp4HSggVVWIRgcyZOJxmJhFVxBCkyxQGHQ3sfo1chsLQTALN4f4Dc4dw:1sJezs:kdYdXfePvuYgNuxfQ8zSsgE0m0Dwn1dxsQfnJELQOR0	2024-07-02 20:00:04.925236+00
dec744ez109gt61eifwo3q8jymbpf56n	.eJxVjDkOwjAUBe_iGlmO91DScwbLfzEOIEeKkwpxd4iUAto3M-8lUt7WmrbOS5pInMUgTr8bZHxw2wHdc7vNEue2LhPIXZEH7fI6Ez8vh_t3UHOv31q7aJwp4HSggVVWIRgcyZOJxmJhFVxBCkyxQGHQ3sfo1chsLQTALN4f4Dc4dw:1sP6sB:AfY0Z3VCgO6vbHZkdk4-AWSuvWL_gwbADmuidWOslA8	2024-07-17 20:46:39.814752+00
6ldtepyp8vyk3ejzxdavnpcvf85d1c00	.eJxVjDkOwjAUBe_iGlmO91DScwbLfzEOIEeKkwpxd4iUAto3M-8lUt7WmrbOS5pInMUgTr8bZHxw2wHdc7vNEue2LhPIXZEH7fI6Ez8vh_t3UHOv31q7aJwp4HSggVVWIRgcyZOJxmJhFVxBCkyxQGHQ3sfo1chsLQTALN4f4Dc4dw:1sYj7z:897Cdo_n37pU-xjebctWBJmEcDKsQ0Oz0J_GtBV6_Kw	2024-08-13 09:26:43.966246+00
dbq55ut2gn0w9cngyeozxur1bubc8jmh	.eJxVjDkOwjAUBe_iGlmO91DScwbLfzEOIEeKkwpxd4iUAto3M-8lUt7WmrbOS5pInMUgTr8bZHxw2wHdc7vNEue2LhPIXZEH7fI6Ez8vh_t3UHOv31q7aJwp4HSggVVWIRgcyZOJxmJhFVxBCkyxQGHQ3sfo1chsLQTALN4f4Dc4dw:1sdxhh:ilu9qW3Q5aQkrHl8r7StqjZK3vM1KtiCETE5z1qhRZg	2024-08-27 20:01:13.726055+00
apfd26bu739laet2409hblcs2yfnxttt	.eJxVjDkOwjAUBe_iGlmO91DScwbLfzEOIEeKkwpxd4iUAto3M-8lUt7WmrbOS5pInMUgTr8bZHxw2wHdc7vNEue2LhPIXZEH7fI6Ez8vh_t3UHOv31q7aJwp4HSggVVWIRgcyZOJxmJhFVxBCkyxQGHQ3sfo1chsLQTALN4f4Dc4dw:1skMCK:I-l42FevqBrIGBqRbwWb7j6JTGAqgRNvr5qSc8VO9vk	2024-09-14 11:23:16.683216+00
\.


--
-- Data for Name: spec_review_component; Type: TABLE DATA; Schema: public; Owner: devuser
--

COPY public.spec_review_component (id, name, part_number) FROM stdin;
18	baseframe	BF-001
19	pumps	P-002
20	cooler	C-003
21	filter	F-004
22	oil tank	OT-005
51	temperature control valve	TCV-001
\.


--
-- Data for Name: spec_review_requirement; Type: TABLE DATA; Schema: public; Owner: devuser
--

COPY public.spec_review_requirement (id, requirement, deviation, specification_id, clause, page_number) FROM stdin;
2	fully flanged	No	1	3.5.6.	9
1	to be stainless steel	No	1	2.5.6.	15
4	vents & drains returned to tank	No	1	1.2.4	5
5	to have welded support feet	No	1	5.3.2.	25
\.


--
-- Data for Name: spec_review_requirement_components; Type: TABLE DATA; Schema: public; Owner: devuser
--

COPY public.spec_review_requirement_components (id, requirement_id, component_id) FROM stdin;
1	1	20
2	1	18
3	1	19
4	1	21
5	1	22
6	2	21
8	1	51
9	2	51
10	4	20
11	4	21
12	5	18
\.


--
-- Data for Name: spec_review_specification; Type: TABLE DATA; Schema: public; Owner: devuser
--

COPY public.spec_review_specification (id, spec_number, spec_title, spec_authority, revision, pdf) FROM stdin;
2	API 617	Axial and Centrifugal Compressors and Expander-compressors for Petroleum, Chemical and Gas Industry Services	API	7th Edition	specifications_pdfs/API_617_2002_book_marked.pdf
1	API 614	Lubrication, Shaft-sealing and Oil-control Systems and Auxiliaries	API	5th Edition	specifications_pdfs/API614-2008.pdf
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: devuser
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: devuser
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: devuser
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);


--
-- Name: core_ingredient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: devuser
--

SELECT pg_catalog.setval('public.core_ingredient_id_seq', 1, true);


--
-- Name: core_recipe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: devuser
--

SELECT pg_catalog.setval('public.core_recipe_id_seq', 6, true);


--
-- Name: core_recipe_ingredients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: devuser
--

SELECT pg_catalog.setval('public.core_recipe_ingredients_id_seq', 1, true);


--
-- Name: core_recipe_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: devuser
--

SELECT pg_catalog.setval('public.core_recipe_tags_id_seq', 3, true);


--
-- Name: core_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: devuser
--

SELECT pg_catalog.setval('public.core_tag_id_seq', 2, true);


--
-- Name: core_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: devuser
--

SELECT pg_catalog.setval('public.core_user_groups_id_seq', 1, false);


--
-- Name: core_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: devuser
--

SELECT pg_catalog.setval('public.core_user_id_seq', 3, true);


--
-- Name: core_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: devuser
--

SELECT pg_catalog.setval('public.core_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: devuser
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 30, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: devuser
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: devuser
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 35, true);


--
-- Name: requirements_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: devuser
--

SELECT pg_catalog.setval('public.requirements_components_id_seq', 12, true);


--
-- Name: requirements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: devuser
--

SELECT pg_catalog.setval('public.requirements_id_seq', 5, true);


--
-- Name: spec_review_component_id_seq; Type: SEQUENCE SET; Schema: public; Owner: devuser
--

SELECT pg_catalog.setval('public.spec_review_component_id_seq', 51, true);


--
-- Name: spec_review_specification_id_seq; Type: SEQUENCE SET; Schema: public; Owner: devuser
--

SELECT pg_catalog.setval('public.spec_review_specification_id_seq', 4, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: core_ingredient core_ingredient_pkey; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_ingredient
    ADD CONSTRAINT core_ingredient_pkey PRIMARY KEY (id);


--
-- Name: core_recipe_ingredients core_recipe_ingredients_pkey; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_recipe_ingredients
    ADD CONSTRAINT core_recipe_ingredients_pkey PRIMARY KEY (id);


--
-- Name: core_recipe_ingredients core_recipe_ingredients_recipe_id_ingredient_id_c9de55ee_uniq; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_recipe_ingredients
    ADD CONSTRAINT core_recipe_ingredients_recipe_id_ingredient_id_c9de55ee_uniq UNIQUE (recipe_id, ingredient_id);


--
-- Name: core_recipe core_recipe_pkey; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_recipe
    ADD CONSTRAINT core_recipe_pkey PRIMARY KEY (id);


--
-- Name: core_recipe_tags core_recipe_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_recipe_tags
    ADD CONSTRAINT core_recipe_tags_pkey PRIMARY KEY (id);


--
-- Name: core_recipe_tags core_recipe_tags_recipe_id_tag_id_f51d05f6_uniq; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_recipe_tags
    ADD CONSTRAINT core_recipe_tags_recipe_id_tag_id_f51d05f6_uniq UNIQUE (recipe_id, tag_id);


--
-- Name: core_tag core_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_tag
    ADD CONSTRAINT core_tag_pkey PRIMARY KEY (id);


--
-- Name: core_user core_user_email_key; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_user
    ADD CONSTRAINT core_user_email_key UNIQUE (email);


--
-- Name: core_user_groups core_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_user_groups
    ADD CONSTRAINT core_user_groups_pkey PRIMARY KEY (id);


--
-- Name: core_user_groups core_user_groups_user_id_group_id_c82fcad1_uniq; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_user_groups
    ADD CONSTRAINT core_user_groups_user_id_group_id_c82fcad1_uniq UNIQUE (user_id, group_id);


--
-- Name: core_user core_user_pkey; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_user
    ADD CONSTRAINT core_user_pkey PRIMARY KEY (id);


--
-- Name: core_user_user_permissions core_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_user_user_permissions
    ADD CONSTRAINT core_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: core_user_user_permissions core_user_user_permissions_user_id_permission_id_73ea0daa_uniq; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_user_user_permissions
    ADD CONSTRAINT core_user_user_permissions_user_id_permission_id_73ea0daa_uniq UNIQUE (user_id, permission_id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: spec_review_requirement_components requirements_components_pkey; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.spec_review_requirement_components
    ADD CONSTRAINT requirements_components_pkey PRIMARY KEY (id);


--
-- Name: spec_review_requirement_components requirements_components_requirement_id_component_a4cf4451_uniq; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.spec_review_requirement_components
    ADD CONSTRAINT requirements_components_requirement_id_component_a4cf4451_uniq UNIQUE (requirement_id, component_id);


--
-- Name: spec_review_requirement requirements_pkey; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.spec_review_requirement
    ADD CONSTRAINT requirements_pkey PRIMARY KEY (id);


--
-- Name: spec_review_component spec_review_component_name_key; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.spec_review_component
    ADD CONSTRAINT spec_review_component_name_key UNIQUE (name);


--
-- Name: spec_review_component spec_review_component_part_number_key; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.spec_review_component
    ADD CONSTRAINT spec_review_component_part_number_key UNIQUE (part_number);


--
-- Name: spec_review_component spec_review_component_pkey; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.spec_review_component
    ADD CONSTRAINT spec_review_component_pkey PRIMARY KEY (id);


--
-- Name: spec_review_specification spec_review_specification_pkey; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.spec_review_specification
    ADD CONSTRAINT spec_review_specification_pkey PRIMARY KEY (id);


--
-- Name: spec_review_specification unique_specification_revision; Type: CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.spec_review_specification
    ADD CONSTRAINT unique_specification_revision UNIQUE (spec_number, spec_title, revision);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: devuser
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: devuser
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: devuser
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: devuser
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: devuser
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: core_ingredient_user_id_73e97fe3; Type: INDEX; Schema: public; Owner: devuser
--

CREATE INDEX core_ingredient_user_id_73e97fe3 ON public.core_ingredient USING btree (user_id);


--
-- Name: core_recipe_ingredients_ingredient_id_a8fec9ee; Type: INDEX; Schema: public; Owner: devuser
--

CREATE INDEX core_recipe_ingredients_ingredient_id_a8fec9ee ON public.core_recipe_ingredients USING btree (ingredient_id);


--
-- Name: core_recipe_ingredients_recipe_id_eeb7255a; Type: INDEX; Schema: public; Owner: devuser
--

CREATE INDEX core_recipe_ingredients_recipe_id_eeb7255a ON public.core_recipe_ingredients USING btree (recipe_id);


--
-- Name: core_recipe_tags_recipe_id_7754231e; Type: INDEX; Schema: public; Owner: devuser
--

CREATE INDEX core_recipe_tags_recipe_id_7754231e ON public.core_recipe_tags USING btree (recipe_id);


--
-- Name: core_recipe_tags_tag_id_10c0ffea; Type: INDEX; Schema: public; Owner: devuser
--

CREATE INDEX core_recipe_tags_tag_id_10c0ffea ON public.core_recipe_tags USING btree (tag_id);


--
-- Name: core_recipe_user_id_04234149; Type: INDEX; Schema: public; Owner: devuser
--

CREATE INDEX core_recipe_user_id_04234149 ON public.core_recipe USING btree (user_id);


--
-- Name: core_tag_user_id_1b670500; Type: INDEX; Schema: public; Owner: devuser
--

CREATE INDEX core_tag_user_id_1b670500 ON public.core_tag USING btree (user_id);


--
-- Name: core_user_email_92a71487_like; Type: INDEX; Schema: public; Owner: devuser
--

CREATE INDEX core_user_email_92a71487_like ON public.core_user USING btree (email varchar_pattern_ops);


--
-- Name: core_user_groups_group_id_fe8c697f; Type: INDEX; Schema: public; Owner: devuser
--

CREATE INDEX core_user_groups_group_id_fe8c697f ON public.core_user_groups USING btree (group_id);


--
-- Name: core_user_groups_user_id_70b4d9b8; Type: INDEX; Schema: public; Owner: devuser
--

CREATE INDEX core_user_groups_user_id_70b4d9b8 ON public.core_user_groups USING btree (user_id);


--
-- Name: core_user_user_permissions_permission_id_35ccf601; Type: INDEX; Schema: public; Owner: devuser
--

CREATE INDEX core_user_user_permissions_permission_id_35ccf601 ON public.core_user_user_permissions USING btree (permission_id);


--
-- Name: core_user_user_permissions_user_id_085123d3; Type: INDEX; Schema: public; Owner: devuser
--

CREATE INDEX core_user_user_permissions_user_id_085123d3 ON public.core_user_user_permissions USING btree (user_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: devuser
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: devuser
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: devuser
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: devuser
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: requirements_components_component_id_c6abf7ff; Type: INDEX; Schema: public; Owner: devuser
--

CREATE INDEX requirements_components_component_id_c6abf7ff ON public.spec_review_requirement_components USING btree (component_id);


--
-- Name: requirements_components_requirement_id_22f76454; Type: INDEX; Schema: public; Owner: devuser
--

CREATE INDEX requirements_components_requirement_id_22f76454 ON public.spec_review_requirement_components USING btree (requirement_id);


--
-- Name: spec_review_component_name_0bfe39d1_like; Type: INDEX; Schema: public; Owner: devuser
--

CREATE INDEX spec_review_component_name_0bfe39d1_like ON public.spec_review_component USING btree (name varchar_pattern_ops);


--
-- Name: spec_review_component_part_number_7e2595ef_like; Type: INDEX; Schema: public; Owner: devuser
--

CREATE INDEX spec_review_component_part_number_7e2595ef_like ON public.spec_review_component USING btree (part_number varchar_pattern_ops);


--
-- Name: spec_review_requirement_specification_id_3a08b6c6; Type: INDEX; Schema: public; Owner: devuser
--

CREATE INDEX spec_review_requirement_specification_id_3a08b6c6 ON public.spec_review_requirement USING btree (specification_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_core_user_id; Type: FK CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_core_user_id FOREIGN KEY (user_id) REFERENCES public.core_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_ingredient core_ingredient_user_id_73e97fe3_fk_core_user_id; Type: FK CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_ingredient
    ADD CONSTRAINT core_ingredient_user_id_73e97fe3_fk_core_user_id FOREIGN KEY (user_id) REFERENCES public.core_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_recipe_ingredients core_recipe_ingredie_ingredient_id_a8fec9ee_fk_core_ingr; Type: FK CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_recipe_ingredients
    ADD CONSTRAINT core_recipe_ingredie_ingredient_id_a8fec9ee_fk_core_ingr FOREIGN KEY (ingredient_id) REFERENCES public.core_ingredient(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_recipe_ingredients core_recipe_ingredients_recipe_id_eeb7255a_fk_core_recipe_id; Type: FK CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_recipe_ingredients
    ADD CONSTRAINT core_recipe_ingredients_recipe_id_eeb7255a_fk_core_recipe_id FOREIGN KEY (recipe_id) REFERENCES public.core_recipe(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_recipe_tags core_recipe_tags_recipe_id_7754231e_fk_core_recipe_id; Type: FK CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_recipe_tags
    ADD CONSTRAINT core_recipe_tags_recipe_id_7754231e_fk_core_recipe_id FOREIGN KEY (recipe_id) REFERENCES public.core_recipe(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_recipe_tags core_recipe_tags_tag_id_10c0ffea_fk_core_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_recipe_tags
    ADD CONSTRAINT core_recipe_tags_tag_id_10c0ffea_fk_core_tag_id FOREIGN KEY (tag_id) REFERENCES public.core_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_recipe core_recipe_user_id_04234149_fk_core_user_id; Type: FK CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_recipe
    ADD CONSTRAINT core_recipe_user_id_04234149_fk_core_user_id FOREIGN KEY (user_id) REFERENCES public.core_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_tag core_tag_user_id_1b670500_fk_core_user_id; Type: FK CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_tag
    ADD CONSTRAINT core_tag_user_id_1b670500_fk_core_user_id FOREIGN KEY (user_id) REFERENCES public.core_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_user_groups core_user_groups_group_id_fe8c697f_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_user_groups
    ADD CONSTRAINT core_user_groups_group_id_fe8c697f_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_user_groups core_user_groups_user_id_70b4d9b8_fk_core_user_id; Type: FK CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_user_groups
    ADD CONSTRAINT core_user_groups_user_id_70b4d9b8_fk_core_user_id FOREIGN KEY (user_id) REFERENCES public.core_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_user_user_permissions core_user_user_permi_permission_id_35ccf601_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_user_user_permissions
    ADD CONSTRAINT core_user_user_permi_permission_id_35ccf601_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_user_user_permissions core_user_user_permissions_user_id_085123d3_fk_core_user_id; Type: FK CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.core_user_user_permissions
    ADD CONSTRAINT core_user_user_permissions_user_id_085123d3_fk_core_user_id FOREIGN KEY (user_id) REFERENCES public.core_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_core_user_id; Type: FK CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_core_user_id FOREIGN KEY (user_id) REFERENCES public.core_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: spec_review_requirement_components requirements_compone_component_id_c6abf7ff_fk_spec_revi; Type: FK CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.spec_review_requirement_components
    ADD CONSTRAINT requirements_compone_component_id_c6abf7ff_fk_spec_revi FOREIGN KEY (component_id) REFERENCES public.spec_review_component(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: spec_review_requirement_components requirements_compone_requirement_id_22f76454_fk_requireme; Type: FK CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.spec_review_requirement_components
    ADD CONSTRAINT requirements_compone_requirement_id_22f76454_fk_requireme FOREIGN KEY (requirement_id) REFERENCES public.spec_review_requirement(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: spec_review_requirement spec_review_requirem_specification_id_3a08b6c6_fk_spec_revi; Type: FK CONSTRAINT; Schema: public; Owner: devuser
--

ALTER TABLE ONLY public.spec_review_requirement
    ADD CONSTRAINT spec_review_requirem_specification_id_3a08b6c6_fk_spec_revi FOREIGN KEY (specification_id) REFERENCES public.spec_review_specification(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

