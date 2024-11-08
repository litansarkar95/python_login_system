PGDMP     8    #            
    w            login_system    12.0    12.0     :           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ;           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            <           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            =           1262    18644    login_system    DATABASE     �   CREATE DATABASE login_system WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE login_system;
                postgres    false            �            1259    18815    travello_destination    TABLE       CREATE TABLE public.travello_destination (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    slug character varying(50) NOT NULL,
    "desc" text NOT NULL,
    price integer NOT NULL,
    img character varying(100) NOT NULL,
    offer boolean NOT NULL
);
 (   DROP TABLE public.travello_destination;
       public         heap    postgres    false            �            1259    18813    travello_destination_id_seq    SEQUENCE     �   CREATE SEQUENCE public.travello_destination_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.travello_destination_id_seq;
       public          postgres    false    222            >           0    0    travello_destination_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.travello_destination_id_seq OWNED BY public.travello_destination.id;
          public          postgres    false    221            �
           2604    18818    travello_destination id    DEFAULT     �   ALTER TABLE ONLY public.travello_destination ALTER COLUMN id SET DEFAULT nextval('public.travello_destination_id_seq'::regclass);
 F   ALTER TABLE public.travello_destination ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            7          0    18815    travello_destination 
   TABLE DATA           Z   COPY public.travello_destination (id, title, slug, "desc", price, img, offer) FROM stdin;
    public          postgres    false    222   �       ?           0    0    travello_destination_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.travello_destination_id_seq', 6, true);
          public          postgres    false    221            �
           2606    18823 .   travello_destination travello_destination_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.travello_destination
    ADD CONSTRAINT travello_destination_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.travello_destination DROP CONSTRAINT travello_destination_pkey;
       public            postgres    false    222            �
           1259    18824 "   travello_destination_slug_2ebb7de0    INDEX     c   CREATE INDEX travello_destination_slug_2ebb7de0 ON public.travello_destination USING btree (slug);
 6   DROP INDEX public.travello_destination_slug_2ebb7de0;
       public            postgres    false    222            �
           1259    18825 '   travello_destination_slug_2ebb7de0_like    INDEX     |   CREATE INDEX travello_destination_slug_2ebb7de0_like ON public.travello_destination USING btree (slug varchar_pattern_ops);
 ;   DROP INDEX public.travello_destination_slug_2ebb7de0_like;
       public            postgres    false    222            7     x�]V�n�6>�O1���IS����4��".z*P�$J��"U�x���}�>I�!%�:�w)q83�������M_>�ӳ�&Q�t�n�ܫ������D���O�UI��$�s"��IϳM9�=����Į'��H��P��٥��@%�C]��$�ԙ��D&�u�
����c"���q#�^>�#���J����7ҔczUR�x���W%��d�É��|0��,���	�ʌ���j�	�,w��g�-�4����=�Q3�z�b]��#}�JY�|R%1y����	O)d�ⱹ{w{� ��M��4�M�y�<,�$�J�L���U�SL�9i�] �׷��(Q:7{k��P�61����ԑ>����]Jr��̐-���91����d?*���Wr̅��r���V�:U2�)��PE?)��D���g���G�]��8�c�B���@���_B�MO>�c
|nU@u;Zq���g����P�G~bg+�����NkF8�{�����o�t�H�	G�킄�����7��g��jT���?�)jsb�4��t�����_�(�Q&��x�veĥ��b7o���j��X��_�ٮX���C���)n�{�ab�RS�e��GE\<6���X��u*F�ZtN���z:'��KB	8@L(���r��"�A�kc�ھ"��6�X�ajӮl��Z�[ �Q�N]�/0r�8U���є0pه�'�9T�-��8J�9�[�~�&�_8�l���|᧨Y�&l_�A ������T���4U�>'1��pі��E�C��,�*�m�0�L3LF�[�eAI~<�K�4d��8�`�+ń�	J�o9�ǵP&v�Eǐ��,"���
�r��-�"O��qX�쬙$¦��W]*ɏ���[)�%�/s��n��Ф��YA��� �볅���� mA��G �]:�m��-"\M1����W�)���{��l�G�m�F������-���a룺�DA�Boef޽�	�!׳`���6��L�wۈ�\Tv�FW"�����b�ŉ�R0�T���')�Ȝ8vF��:!��N�� �5X ��h�Y����o�#}1E^#��i�x��ɫ�4�*x�"��Vy�ge�έ��,"�Y�Ƞ7����_��3ǉ�nSuOn���ރ?M[>7PQ���F�'�*oʹWv	�m�R���	���Kʕ&Vi�~Ζ��8�d_�Q����]��`AzA.�,��W�D�*�����<*	m3V��(�[�V�:S����֏b��" Уg�ţVv�	}��Æ�I�AV o�YM�M��S?�kfAMP��T�"NY���s��0��YʓXB2���G9�!G؋��^*@�t��F��\[ˮ�B{dgs�z�����������     