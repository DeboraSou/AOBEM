PGDMP  0    9    
            |            backend    16.3    16.3 5    "           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            #           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            $           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            %           1262    33751    backend    DATABASE     ~   CREATE DATABASE backend WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE backend;
                postgres    false            �            1259    33762    appointment    TABLE     �   CREATE TABLE public.appointment (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    phone text NOT NULL,
    reason text NOT NULL,
    status text NOT NULL,
    psych_id integer,
    user_id integer
);
    DROP TABLE public.appointment;
       public         heap    postgres    false            �            1259    33761    appointment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.appointment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.appointment_id_seq;
       public          postgres    false    218            &           0    0    appointment_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.appointment_id_seq OWNED BY public.appointment.id;
          public          postgres    false    217            �            1259    33784    evaluations    TABLE     �   CREATE TABLE public.evaluations (
    id integer NOT NULL,
    rating integer NOT NULL,
    comment text NOT NULL,
    date date NOT NULL,
    psych_id integer,
    user_id integer
);
    DROP TABLE public.evaluations;
       public         heap    postgres    false            �            1259    33783    evaluations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.evaluations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.evaluations_id_seq;
       public          postgres    false    222            '           0    0    evaluations_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.evaluations_id_seq OWNED BY public.evaluations.id;
          public          postgres    false    221            �            1259    33804    forms    TABLE     J  CREATE TABLE public.forms (
    id integer NOT NULL,
    "fullName" text NOT NULL,
    email text NOT NULL,
    phone text NOT NULL,
    state text NOT NULL,
    crp text NOT NULL,
    approach text NOT NULL,
    specialty text NOT NULL,
    specialty2 text,
    specialty3 text,
    formation text NOT NULL,
    "formationArea" text NOT NULL,
    "formationArea2" text,
    service text NOT NULL,
    service2 text,
    service3 text,
    gender text NOT NULL,
    "serviceModality" text NOT NULL,
    pounds text NOT NULL,
    "shortBio" text NOT NULL,
    "fullBio" text NOT NULL
);
    DROP TABLE public.forms;
       public         heap    postgres    false            �            1259    33803    forms_id_seq    SEQUENCE     �   CREATE SEQUENCE public.forms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.forms_id_seq;
       public          postgres    false    226            (           0    0    forms_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.forms_id_seq OWNED BY public.forms.id;
          public          postgres    false    225            �            1259    33753 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    "timestamp" bigint NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    33752    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    216            )           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    215            �            1259    33773    psychs    TABLE     �   CREATE TABLE public.psychs (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL,
    phone text NOT NULL,
    crp text NOT NULL,
    state text NOT NULL
);
    DROP TABLE public.psychs;
       public         heap    postgres    false            �            1259    33772    psychs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.psychs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.psychs_id_seq;
       public          postgres    false    220            *           0    0    psychs_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.psychs_id_seq OWNED BY public.psychs.id;
          public          postgres    false    219            �            1259    33793    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    33792    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    224            +           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    223            j           2604    33765    appointment id    DEFAULT     p   ALTER TABLE ONLY public.appointment ALTER COLUMN id SET DEFAULT nextval('public.appointment_id_seq'::regclass);
 =   ALTER TABLE public.appointment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            l           2604    33787    evaluations id    DEFAULT     p   ALTER TABLE ONLY public.evaluations ALTER COLUMN id SET DEFAULT nextval('public.evaluations_id_seq'::regclass);
 =   ALTER TABLE public.evaluations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            n           2604    33807    forms id    DEFAULT     d   ALTER TABLE ONLY public.forms ALTER COLUMN id SET DEFAULT nextval('public.forms_id_seq'::regclass);
 7   ALTER TABLE public.forms ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            i           2604    33756    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            k           2604    33776 	   psychs id    DEFAULT     f   ALTER TABLE ONLY public.psychs ALTER COLUMN id SET DEFAULT nextval('public.psychs_id_seq'::regclass);
 8   ALTER TABLE public.psychs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            m           2604    33796    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224                      0    33762    appointment 
   TABLE DATA           `   COPY public.appointment (id, name, email, phone, reason, status, psych_id, user_id) FROM stdin;
    public          postgres    false    218   �>                 0    33784    evaluations 
   TABLE DATA           S   COPY public.evaluations (id, rating, comment, date, psych_id, user_id) FROM stdin;
    public          postgres    false    222   !?                 0    33804    forms 
   TABLE DATA           �   COPY public.forms (id, "fullName", email, phone, state, crp, approach, specialty, specialty2, specialty3, formation, "formationArea", "formationArea2", service, service2, service3, gender, "serviceModality", pounds, "shortBio", "fullBio") FROM stdin;
    public          postgres    false    226   >?                 0    33753 
   migrations 
   TABLE DATA           ;   COPY public.migrations (id, "timestamp", name) FROM stdin;
    public          postgres    false    216   [?                 0    33773    psychs 
   TABLE DATA           N   COPY public.psychs (id, name, email, password, phone, crp, state) FROM stdin;
    public          postgres    false    220   �?                 0    33793    users 
   TABLE DATA           :   COPY public.users (id, name, email, password) FROM stdin;
    public          postgres    false    224   tA       ,           0    0    appointment_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.appointment_id_seq', 1, true);
          public          postgres    false    217            -           0    0    evaluations_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.evaluations_id_seq', 1, false);
          public          postgres    false    221            .           0    0    forms_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.forms_id_seq', 1, false);
          public          postgres    false    225            /           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 1, true);
          public          postgres    false    215            0           0    0    psychs_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.psychs_id_seq', 7, true);
          public          postgres    false    219            1           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 7, true);
          public          postgres    false    223            v           2606    33780 %   psychs PK_75644fa26f195dbc4b1ba7e5353 
   CONSTRAINT     e   ALTER TABLE ONLY public.psychs
    ADD CONSTRAINT "PK_75644fa26f195dbc4b1ba7e5353" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.psychs DROP CONSTRAINT "PK_75644fa26f195dbc4b1ba7e5353";
       public            postgres    false    220            p           2606    33760 )   migrations PK_8c82d7f526340ab734260ea46be 
   CONSTRAINT     i   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT "PK_8c82d7f526340ab734260ea46be" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.migrations DROP CONSTRAINT "PK_8c82d7f526340ab734260ea46be";
       public            postgres    false    216            |           2606    33800 $   users PK_a3ffb1c0c8416b9fc6f907b7433 
   CONSTRAINT     d   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "PK_a3ffb1c0c8416b9fc6f907b7433" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.users DROP CONSTRAINT "PK_a3ffb1c0c8416b9fc6f907b7433";
       public            postgres    false    224            �           2606    33811 $   forms PK_ba062fd30b06814a60756f233da 
   CONSTRAINT     d   ALTER TABLE ONLY public.forms
    ADD CONSTRAINT "PK_ba062fd30b06814a60756f233da" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.forms DROP CONSTRAINT "PK_ba062fd30b06814a60756f233da";
       public            postgres    false    226            r           2606    33769 *   appointment PK_e8be1a53027415e709ce8a2db74 
   CONSTRAINT     j   ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT "PK_e8be1a53027415e709ce8a2db74" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.appointment DROP CONSTRAINT "PK_e8be1a53027415e709ce8a2db74";
       public            postgres    false    218            z           2606    33791 *   evaluations PK_f683b433eba0e6dae7e19b29e29 
   CONSTRAINT     j   ALTER TABLE ONLY public.evaluations
    ADD CONSTRAINT "PK_f683b433eba0e6dae7e19b29e29" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.evaluations DROP CONSTRAINT "PK_f683b433eba0e6dae7e19b29e29";
       public            postgres    false    222            ~           2606    33802 $   users UQ_97672ac88f789774dd47f7c8be3 
   CONSTRAINT     b   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "UQ_97672ac88f789774dd47f7c8be3" UNIQUE (email);
 P   ALTER TABLE ONLY public.users DROP CONSTRAINT "UQ_97672ac88f789774dd47f7c8be3";
       public            postgres    false    224            t           2606    33771 *   appointment UQ_af5eb427522ef1580f30f209170 
   CONSTRAINT     h   ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT "UQ_af5eb427522ef1580f30f209170" UNIQUE (email);
 V   ALTER TABLE ONLY public.appointment DROP CONSTRAINT "UQ_af5eb427522ef1580f30f209170";
       public            postgres    false    218            x           2606    33782 %   psychs UQ_e0682fa4bf0b4ce09a3fbeb90c7 
   CONSTRAINT     c   ALTER TABLE ONLY public.psychs
    ADD CONSTRAINT "UQ_e0682fa4bf0b4ce09a3fbeb90c7" UNIQUE (email);
 Q   ALTER TABLE ONLY public.psychs DROP CONSTRAINT "UQ_e0682fa4bf0b4ce09a3fbeb90c7";
       public            postgres    false    220            �           2606    33817 *   appointment FK_15d50a87502380623ff0c27e458    FK CONSTRAINT     �   ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT "FK_15d50a87502380623ff0c27e458" FOREIGN KEY (user_id) REFERENCES public.users(id);
 V   ALTER TABLE ONLY public.appointment DROP CONSTRAINT "FK_15d50a87502380623ff0c27e458";
       public          postgres    false    218    224    4732            �           2606    33827 *   evaluations FK_3d371b1ebe55ca4c60cbf66fa0e    FK CONSTRAINT     �   ALTER TABLE ONLY public.evaluations
    ADD CONSTRAINT "FK_3d371b1ebe55ca4c60cbf66fa0e" FOREIGN KEY (user_id) REFERENCES public.users(id);
 V   ALTER TABLE ONLY public.evaluations DROP CONSTRAINT "FK_3d371b1ebe55ca4c60cbf66fa0e";
       public          postgres    false    4732    224    222            �           2606    33822 *   evaluations FK_a1fb6ff666edaee209315c6b4ec    FK CONSTRAINT     �   ALTER TABLE ONLY public.evaluations
    ADD CONSTRAINT "FK_a1fb6ff666edaee209315c6b4ec" FOREIGN KEY (psych_id) REFERENCES public.psychs(id);
 V   ALTER TABLE ONLY public.evaluations DROP CONSTRAINT "FK_a1fb6ff666edaee209315c6b4ec";
       public          postgres    false    222    4726    220            �           2606    33812 *   appointment FK_d2f9ce05aea074a7a68d1480abd    FK CONSTRAINT     �   ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT "FK_d2f9ce05aea074a7a68d1480abd" FOREIGN KEY (psych_id) REFERENCES public.psychs(id);
 V   ALTER TABLE ONLY public.appointment DROP CONSTRAINT "FK_d2f9ce05aea074a7a68d1480abd";
       public          postgres    false    218    4726    220               Y   x�3�H���M�, S���9�z�����F�&�f�f&�E�ə��
)�
�Y�)�
@i�ļ��ԔĔT΂Լ�̼tNsN3�=... ���            x������ � �            x������ � �         '   x�3�447�4101�0772�tIMK,�)A����� �u	         �  x�eѻ��@�xx
c��*�r8�bm2"������?v�L������y`w�`P����	e����a
������//)��*P�ӗzǦ��\�#y/����2�����\e/4 �*�Q��I�ԓc:�q���fD�������v�᯻�G��gD	�{�?/��b�]Լ�N{֧���K������	y��ў�3p��m�O
���kvY<,.8�����sD{n\��\r�:Cn��ץ�x��'���#��g.\��I�QFڵ#<�']J�Qݺ��l��*DU�b�d;�k�ZV��5)��s�l��͏4�iH;��jkF��t����S��ּ����̍�aۛ�ԑW�]�q�:��5�cy>��A���(C�M�χ.��I?<��䧈~����B[IYG����q*���.���Y�p�=�8�ѽ���;o�:�
��'V���2��Q�A         n  x�m�;��0 ��~�5�e�F\EfDq�{�	&@�K#��ݳg���{�����P�o���Z�u��R��W��6Onݖ�]9����@�[+�g��Wr�K���*��{<R"B�F��z�>w�.�l���c^�M����L���	mv��_�[L��v۽�Q��hK����F�p���y�Ư�>��yYȸ���$J!�����RYfFDM�)��%O_Î��.�\!��+-V�������ҟZ9=���{IE]�Q�5��<����R�ֳ<X�p�N�"��D1��B��V���� �s�4�}��,V,�rca��/���ˠ
�hb5ۗs�*,�0��_zmC�$��z8�t     