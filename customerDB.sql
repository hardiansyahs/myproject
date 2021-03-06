PGDMP         8                x         
   customerDB    13.0    13.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16876 
   customerDB    DATABASE     p   CREATE DATABASE "customerDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "customerDB";
                postgres    false            �            1259    17063    employeeapi_customertargetting    TABLE     �  CREATE TABLE public.employeeapi_customertargetting (
    id integer NOT NULL,
    customer_name character varying(255) NOT NULL,
    customer_address character varying(255) NOT NULL,
    customer_type character varying(50) NOT NULL,
    keyword character varying(100) NOT NULL,
    radius character varying(20) NOT NULL,
    place_id character varying(50) NOT NULL,
    latitude_origin double precision NOT NULL,
    longitude_origin double precision NOT NULL,
    latitude_destination double precision NOT NULL,
    longitude_destination double precision NOT NULL,
    phone_number character varying(20) NOT NULL,
    driving_distance character varying(50) NOT NULL,
    walking_distance character varying(50) NOT NULL
);
 2   DROP TABLE public.employeeapi_customertargetting;
       public         heap    postgres    false            �            1259    17061 %   employeeapi_customertargetting_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employeeapi_customertargetting_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.employeeapi_customertargetting_id_seq;
       public          postgres    false    224            �           0    0 %   employeeapi_customertargetting_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.employeeapi_customertargetting_id_seq OWNED BY public.employeeapi_customertargetting.id;
          public          postgres    false    223            a           2604    17066 !   employeeapi_customertargetting id    DEFAULT     �   ALTER TABLE ONLY public.employeeapi_customertargetting ALTER COLUMN id SET DEFAULT nextval('public.employeeapi_customertargetting_id_seq'::regclass);
 P   ALTER TABLE public.employeeapi_customertargetting ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �          0    17063    employeeapi_customertargetting 
   TABLE DATA           	  COPY public.employeeapi_customertargetting (id, customer_name, customer_address, customer_type, keyword, radius, place_id, latitude_origin, longitude_origin, latitude_destination, longitude_destination, phone_number, driving_distance, walking_distance) FROM stdin;
    public          postgres    false    224   q       �           0    0 %   employeeapi_customertargetting_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.employeeapi_customertargetting_id_seq', 1, false);
          public          postgres    false    223            c           2606    17071 B   employeeapi_customertargetting employeeapi_customertargetting_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.employeeapi_customertargetting
    ADD CONSTRAINT employeeapi_customertargetting_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.employeeapi_customertargetting DROP CONSTRAINT employeeapi_customertargetting_pkey;
       public            postgres    false    224            �      x������ � �     