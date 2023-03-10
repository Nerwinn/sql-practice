PGDMP                 
        {            school    15.1    15.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16396    school    DATABASE     ?   CREATE DATABASE school WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE school;
                postgres    false            ?            1259    16397    city    TABLE     O   CREATE TABLE public.city (
    city_id bigint NOT NULL,
    city_mayor text
);
    DROP TABLE public.city;
       public         heap    postgres    false            ?            1259    16402    city_city_id_seq    SEQUENCE     y   CREATE SEQUENCE public.city_city_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.city_city_id_seq;
       public          postgres    false    214                       0    0    city_city_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.city_city_id_seq OWNED BY public.city.city_id;
          public          postgres    false    215            ?            1259    16403    compsci    TABLE     ?   CREATE TABLE public.compsci (
    id bigint NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    age integer,
    date_of_birth date,
    cityid integer
);
    DROP TABLE public.compsci;
       public         heap    postgres    false            ?            1259    16408    compsci_id_seq    SEQUENCE     w   CREATE SEQUENCE public.compsci_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.compsci_id_seq;
       public          postgres    false    216                       0    0    compsci_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.compsci_id_seq OWNED BY public.compsci.id;
          public          postgres    false    217            ?            1259    16409    faculty    TABLE     ?   CREATE TABLE public.faculty (
    id_no bigint NOT NULL,
    firstname text NOT NULL,
    lastname text NOT NULL,
    position_no text NOT NULL,
    age integer NOT NULL,
    birth_date date NOT NULL,
    salary bigint
);
    DROP TABLE public.faculty;
       public         heap    postgres    false            n           2604    16414    city city_id    DEFAULT     l   ALTER TABLE ONLY public.city ALTER COLUMN city_id SET DEFAULT nextval('public.city_city_id_seq'::regclass);
 ;   ALTER TABLE public.city ALTER COLUMN city_id DROP DEFAULT;
       public          postgres    false    215    214            o           2604    16415 
   compsci id    DEFAULT     h   ALTER TABLE ONLY public.compsci ALTER COLUMN id SET DEFAULT nextval('public.compsci_id_seq'::regclass);
 9   ALTER TABLE public.compsci ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216                      0    16397    city 
   TABLE DATA           3   COPY public.city (city_id, city_mayor) FROM stdin;
    public          postgres    false    214   0                 0    16403    compsci 
   TABLE DATA           V   COPY public.compsci (id, firstname, lastname, age, date_of_birth, cityid) FROM stdin;
    public          postgres    false    216   ?                 0    16409    faculty 
   TABLE DATA           c   COPY public.faculty (id_no, firstname, lastname, position_no, age, birth_date, salary) FROM stdin;
    public          postgres    false    218   ?                  0    0    city_city_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.city_city_id_seq', 7, true);
          public          postgres    false    215                       0    0    compsci_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.compsci_id_seq', 10, true);
          public          postgres    false    217            q           2606    16417    city city_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (city_id);
 8   ALTER TABLE ONLY public.city DROP CONSTRAINT city_pkey;
       public            postgres    false    214            s           2606    16419    compsci compsci_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.compsci
    ADD CONSTRAINT compsci_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.compsci DROP CONSTRAINT compsci_pkey;
       public            postgres    false    216            u           2606    16421    faculty faculty_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.faculty
    ADD CONSTRAINT faculty_pkey PRIMARY KEY (id_no);
 >   ALTER TABLE ONLY public.faculty DROP CONSTRAINT faculty_pkey;
       public            postgres    false    218               J   x?3?tI??L??2??K-.?/?2??ON?2??J?M-?2?.I-?H??2?tO?/JO?2?tL*J?H??????? q?A         ?   x?U??n?0??ӻ????il??EQ??Љ???T?Q??K?Y
\x?xw>???O?a?Q<?H????????9aGe???6	?-K*??/~H??S,?Q?u5?(9?F??2L?$g??hpH?u!},t?y&T??I?Iݢ-????0$h??k??4Ftx?%E_??{??J0?ϩVRר??y?L??Lc?i??-J%???.z??gҊ?1V?:?iZ?F?2RN??G??N|?!~?lT         ?   x?=??j?0?????h?r?8??zhY?t?]v1??R?$?o??d??C?d1???C??%f??????*??[Ҋ??QR???7Gl?p_i?*??t?J?!??.)??~A??t?TG?????1?
?B?)?]9-ʵ?,1??????=ܖp???Xl?H?j??b5?i.C???˰??+Ll???m????|	???/?????xn??:D?     