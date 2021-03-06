PGDMP                          z            Tienda    9.6.21    9.6.21     P           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            Q           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            R           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            S           1262    41109    Tienda    DATABASE     ?   CREATE DATABASE "Tienda" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Ecuador.1252' LC_CTYPE = 'Spanish_Ecuador.1252';
    DROP DATABASE "Tienda";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            T           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            U           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            ?            1259    41112 	   productos    TABLE     +  CREATE TABLE public.productos (
    prod_id integer NOT NULL,
    codigo character varying(50) NOT NULL,
    precio numeric(10,2) NOT NULL,
    nombre character varying(255) NOT NULL,
    infor character varying(500) NOT NULL,
    unidades numeric(8,0) NOT NULL,
    oferta numeric(8,0) NOT NULL
);
    DROP TABLE public.productos;
       public         postgres    false    3            ?            1259    41110    productos_prod_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.productos_prod_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.productos_prod_id_seq;
       public       postgres    false    186    3            V           0    0    productos_prod_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.productos_prod_id_seq OWNED BY public.productos.prod_id;
            public       postgres    false    185            ?           2604    41115    productos prod_id    DEFAULT     v   ALTER TABLE ONLY public.productos ALTER COLUMN prod_id SET DEFAULT nextval('public.productos_prod_id_seq'::regclass);
 @   ALTER TABLE public.productos ALTER COLUMN prod_id DROP DEFAULT;
       public       postgres    false    186    185    186            M          0    41112 	   productos 
   TABLE DATA                     public       postgres    false    186   E       W           0    0    productos_prod_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.productos_prod_id_seq', 1, false);
            public       postgres    false    185            ?           2606    41122    productos productos_codigo_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_codigo_key UNIQUE (codigo);
 H   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_codigo_key;
       public         postgres    false    186    186            ?           2606    41120    productos productos_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (prod_id);
 B   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_pkey;
       public         postgres    false    186    186            M   ?   x??ͱ
?0??O?oU?Ŧ??S?"?`?{l3R??4??.1?َ???i???C???????i??f?p?N???EN ?iQ?U???:c?wՋA??o?#???lʖۤ?ǧ?߅???z??}?+?g??|??C?O??3?x?y?}9i#,??!I^?x?F     