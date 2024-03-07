--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2 (Debian 16.2-1.pgdg120+2)
-- Dumped by pg_dump version 16.2 (Debian 16.2-1.pgdg120+2)

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
-- Name: admins; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.admins (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    vendor_id integer NOT NULL,
    mobile character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    image character varying(255),
    confirm character varying(255) NOT NULL,
    status smallint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT admins_confirm_check CHECK (((confirm)::text = ANY ((ARRAY['No'::character varying, 'Yes'::character varying])::text[])))
);


ALTER TABLE public.admins OWNER TO root;

--
-- Name: admins_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.admins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admins_id_seq OWNER TO root;

--
-- Name: admins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.admins_id_seq OWNED BY public.admins.id;


--
-- Name: banners; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.banners (
    id bigint NOT NULL,
    image character varying(255) NOT NULL,
    link character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    alt character varying(255) NOT NULL,
    status smallint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    type character varying(255)
);


ALTER TABLE public.banners OWNER TO root;

--
-- Name: banners_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.banners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.banners_id_seq OWNER TO root;

--
-- Name: banners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.banners_id_seq OWNED BY public.banners.id;


--
-- Name: brands; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.brands (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    status smallint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.brands OWNER TO root;

--
-- Name: brands_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.brands_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.brands_id_seq OWNER TO root;

--
-- Name: brands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.brands_id_seq OWNED BY public.brands.id;


--
-- Name: carts; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.carts (
    id bigint NOT NULL,
    session_id character varying(255) NOT NULL,
    user_id integer,
    product_id integer NOT NULL,
    size character varying(255) NOT NULL,
    quantity integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.carts OWNER TO root;

--
-- Name: carts_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.carts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.carts_id_seq OWNER TO root;

--
-- Name: carts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.carts_id_seq OWNED BY public.carts.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.categories (
    id bigint NOT NULL,
    parent_id integer NOT NULL,
    section_id integer NOT NULL,
    category_name character varying(255) NOT NULL,
    category_image character varying(255) NOT NULL,
    category_discount double precision DEFAULT '0'::double precision NOT NULL,
    description text,
    url character varying(255) NOT NULL,
    meta_title character varying(255),
    meta_description character varying(255),
    meta_keywords character varying(255),
    status smallint DEFAULT '1'::smallint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.categories OWNER TO root;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_id_seq OWNER TO root;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: cod_pincodes; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.cod_pincodes (
    id bigint NOT NULL,
    pincode character varying(10) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.cod_pincodes OWNER TO root;

--
-- Name: cod_pincodes_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.cod_pincodes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cod_pincodes_id_seq OWNER TO root;

--
-- Name: cod_pincodes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.cod_pincodes_id_seq OWNED BY public.cod_pincodes.id;


--
-- Name: countries; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.countries (
    id bigint NOT NULL,
    country_code character varying(255) NOT NULL,
    country_name character varying(255) NOT NULL,
    status smallint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.countries OWNER TO root;

--
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.countries_id_seq OWNER TO root;

--
-- Name: countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;


--
-- Name: coupons; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.coupons (
    id bigint NOT NULL,
    vendor_id integer NOT NULL,
    coupon_option character varying(255) NOT NULL,
    coupon_code character varying(255) NOT NULL,
    categories text NOT NULL,
    brands text,
    users text NOT NULL,
    coupon_type character varying(255) NOT NULL,
    amount_type character varying(255) NOT NULL,
    amount double precision NOT NULL,
    expiry_date date NOT NULL,
    status smallint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.coupons OWNER TO root;

--
-- Name: coupons_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.coupons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.coupons_id_seq OWNER TO root;

--
-- Name: coupons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.coupons_id_seq OWNED BY public.coupons.id;


--
-- Name: delivery_addresses; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.delivery_addresses (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    name character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    state character varying(255) NOT NULL,
    country character varying(255) NOT NULL,
    pincode character varying(255) NOT NULL,
    mobile character varying(255) NOT NULL,
    status smallint DEFAULT '1'::smallint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.delivery_addresses OWNER TO root;

--
-- Name: delivery_addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.delivery_addresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.delivery_addresses_id_seq OWNER TO root;

--
-- Name: delivery_addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.delivery_addresses_id_seq OWNED BY public.delivery_addresses.id;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO root;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.failed_jobs_id_seq OWNER TO root;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO root;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.migrations_id_seq OWNER TO root;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: newsletter_subscribers; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.newsletter_subscribers (
    id bigint NOT NULL,
    email character varying(255) NOT NULL,
    status smallint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.newsletter_subscribers OWNER TO root;

--
-- Name: newsletter_subscribers_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.newsletter_subscribers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.newsletter_subscribers_id_seq OWNER TO root;

--
-- Name: newsletter_subscribers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.newsletter_subscribers_id_seq OWNED BY public.newsletter_subscribers.id;


--
-- Name: oauth_access_tokens; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.oauth_access_tokens (
    id character varying(100) NOT NULL,
    user_id bigint,
    client_id bigint NOT NULL,
    name character varying(255),
    scopes text,
    revoked boolean NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone
);


ALTER TABLE public.oauth_access_tokens OWNER TO root;

--
-- Name: oauth_auth_codes; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.oauth_auth_codes (
    id character varying(100) NOT NULL,
    user_id bigint NOT NULL,
    client_id bigint NOT NULL,
    scopes text,
    revoked boolean NOT NULL,
    expires_at timestamp(0) without time zone
);


ALTER TABLE public.oauth_auth_codes OWNER TO root;

--
-- Name: oauth_clients; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.oauth_clients (
    id bigint NOT NULL,
    user_id bigint,
    name character varying(255) NOT NULL,
    secret character varying(100),
    provider character varying(255),
    redirect text NOT NULL,
    personal_access_client boolean NOT NULL,
    password_client boolean NOT NULL,
    revoked boolean NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.oauth_clients OWNER TO root;

--
-- Name: oauth_clients_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.oauth_clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.oauth_clients_id_seq OWNER TO root;

--
-- Name: oauth_clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.oauth_clients_id_seq OWNED BY public.oauth_clients.id;


--
-- Name: oauth_personal_access_clients; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.oauth_personal_access_clients (
    id bigint NOT NULL,
    client_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.oauth_personal_access_clients OWNER TO root;

--
-- Name: oauth_personal_access_clients_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.oauth_personal_access_clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.oauth_personal_access_clients_id_seq OWNER TO root;

--
-- Name: oauth_personal_access_clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.oauth_personal_access_clients_id_seq OWNED BY public.oauth_personal_access_clients.id;


--
-- Name: oauth_refresh_tokens; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.oauth_refresh_tokens (
    id character varying(100) NOT NULL,
    access_token_id character varying(100) NOT NULL,
    revoked boolean NOT NULL,
    expires_at timestamp(0) without time zone
);


ALTER TABLE public.oauth_refresh_tokens OWNER TO root;

--
-- Name: order_item_statuses; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.order_item_statuses (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    status smallint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.order_item_statuses OWNER TO root;

--
-- Name: order_item_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.order_item_statuses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.order_item_statuses_id_seq OWNER TO root;

--
-- Name: order_item_statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.order_item_statuses_id_seq OWNED BY public.order_item_statuses.id;


--
-- Name: order_statuses; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.order_statuses (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    status smallint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.order_statuses OWNER TO root;

--
-- Name: order_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.order_statuses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.order_statuses_id_seq OWNER TO root;

--
-- Name: order_statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.order_statuses_id_seq OWNED BY public.order_statuses.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.orders (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    name character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    state character varying(255) NOT NULL,
    country character varying(255) NOT NULL,
    pincode character varying(255) NOT NULL,
    mobile character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    shipping_charges double precision NOT NULL,
    coupon_code character varying(255),
    coupon_amount double precision,
    order_status character varying(255) NOT NULL,
    payment_method character varying(255) NOT NULL,
    payment_gateway character varying(255) NOT NULL,
    grand_total double precision NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    courier_name character varying(255),
    tracking_number character varying(255),
    is_pushed smallint DEFAULT '0'::smallint NOT NULL
);


ALTER TABLE public.orders OWNER TO root;

--
-- Name: COLUMN orders.is_pushed; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.orders.is_pushed IS 'Order pushed to Shiprocket or NOT';


--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_id_seq OWNER TO root;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: orders_logs; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.orders_logs (
    id bigint NOT NULL,
    order_id integer NOT NULL,
    order_status character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    order_item_id integer
);


ALTER TABLE public.orders_logs OWNER TO root;

--
-- Name: orders_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.orders_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_logs_id_seq OWNER TO root;

--
-- Name: orders_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.orders_logs_id_seq OWNED BY public.orders_logs.id;


--
-- Name: orders_products; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.orders_products (
    id bigint NOT NULL,
    order_id integer NOT NULL,
    user_id integer NOT NULL,
    vendor_id integer NOT NULL,
    admin_id integer NOT NULL,
    product_id integer NOT NULL,
    product_code character varying(255) NOT NULL,
    product_name character varying(255) NOT NULL,
    product_color character varying(255) NOT NULL,
    product_size character varying(255) NOT NULL,
    product_price double precision NOT NULL,
    product_qty integer NOT NULL,
    item_status character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    courier_name character varying(255),
    tracking_number character varying(255),
    commission double precision
);


ALTER TABLE public.orders_products OWNER TO root;

--
-- Name: orders_products_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.orders_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_products_id_seq OWNER TO root;

--
-- Name: orders_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.orders_products_id_seq OWNED BY public.orders_products.id;


--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO root;

--
-- Name: payments; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.payments (
    id bigint NOT NULL,
    order_id integer NOT NULL,
    user_id integer NOT NULL,
    payment_id character varying(255) NOT NULL,
    payer_id character varying(255) NOT NULL,
    payer_email character varying(255) NOT NULL,
    amount double precision NOT NULL,
    currency character varying(255) NOT NULL,
    payment_status character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.payments OWNER TO root;

--
-- Name: payments_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.payments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payments_id_seq OWNER TO root;

--
-- Name: payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.payments_id_seq OWNED BY public.payments.id;


--
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO root;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.personal_access_tokens_id_seq OWNER TO root;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- Name: prepaid_pincodes; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.prepaid_pincodes (
    id bigint NOT NULL,
    pincode character varying(10) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.prepaid_pincodes OWNER TO root;

--
-- Name: prepaid_pincodes_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.prepaid_pincodes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.prepaid_pincodes_id_seq OWNER TO root;

--
-- Name: prepaid_pincodes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.prepaid_pincodes_id_seq OWNED BY public.prepaid_pincodes.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    section_id integer NOT NULL,
    category_id integer NOT NULL,
    brand_id integer NOT NULL,
    vendor_id integer NOT NULL,
    admin_id integer NOT NULL,
    admin_type character varying(255) NOT NULL,
    product_name character varying(255) NOT NULL,
    product_code character varying(255) NOT NULL,
    product_color character varying(255) NOT NULL,
    product_price double precision NOT NULL,
    product_discount double precision NOT NULL,
    product_weight integer NOT NULL,
    product_image character varying(255),
    product_video character varying(255),
    group_code character varying(255),
    description text,
    meta_title character varying(255),
    meta_keywords character varying(255),
    meta_description character varying(255),
    is_featured character varying(255) NOT NULL,
    status smallint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    is_bestseller character varying(255) NOT NULL,
    CONSTRAINT products_is_bestseller_check CHECK (((is_bestseller)::text = ANY ((ARRAY['No'::character varying, 'Yes'::character varying])::text[]))),
    CONSTRAINT products_is_featured_check CHECK (((is_featured)::text = ANY ((ARRAY['No'::character varying, 'Yes'::character varying])::text[])))
);


ALTER TABLE public.products OWNER TO root;

--
-- Name: products_attributes; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.products_attributes (
    id bigint NOT NULL,
    product_id integer NOT NULL,
    size character varying(255) NOT NULL,
    price double precision NOT NULL,
    stock integer NOT NULL,
    sku character varying(255) NOT NULL,
    status smallint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.products_attributes OWNER TO root;

--
-- Name: products_attributes_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.products_attributes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_attributes_id_seq OWNER TO root;

--
-- Name: products_attributes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.products_attributes_id_seq OWNED BY public.products_attributes.id;


--
-- Name: products_filters; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.products_filters (
    id bigint NOT NULL,
    cat_ids character varying(255) NOT NULL,
    filter_name character varying(255) NOT NULL,
    filter_column character varying(255) NOT NULL,
    status smallint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.products_filters OWNER TO root;

--
-- Name: products_filters_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.products_filters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_filters_id_seq OWNER TO root;

--
-- Name: products_filters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.products_filters_id_seq OWNED BY public.products_filters.id;


--
-- Name: products_filters_values; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.products_filters_values (
    id bigint NOT NULL,
    filter_id integer NOT NULL,
    filter_value character varying(255) NOT NULL,
    status smallint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.products_filters_values OWNER TO root;

--
-- Name: products_filters_values_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.products_filters_values_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_filters_values_id_seq OWNER TO root;

--
-- Name: products_filters_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.products_filters_values_id_seq OWNED BY public.products_filters_values.id;


--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_id_seq OWNER TO root;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: products_images; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.products_images (
    id bigint NOT NULL,
    product_id integer NOT NULL,
    image character varying(255) NOT NULL,
    status smallint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.products_images OWNER TO root;

--
-- Name: products_images_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.products_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_images_id_seq OWNER TO root;

--
-- Name: products_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.products_images_id_seq OWNED BY public.products_images.id;


--
-- Name: ratings; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.ratings (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    product_id integer NOT NULL,
    review text NOT NULL,
    rating integer NOT NULL,
    status smallint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.ratings OWNER TO root;

--
-- Name: ratings_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.ratings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ratings_id_seq OWNER TO root;

--
-- Name: ratings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings.id;


--
-- Name: recently_viewed_products; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.recently_viewed_products (
    id bigint NOT NULL,
    product_id integer NOT NULL,
    session_id character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.recently_viewed_products OWNER TO root;

--
-- Name: recently_viewed_products_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.recently_viewed_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.recently_viewed_products_id_seq OWNER TO root;

--
-- Name: recently_viewed_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.recently_viewed_products_id_seq OWNED BY public.recently_viewed_products.id;


--
-- Name: sections; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.sections (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    status smallint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.sections OWNER TO root;

--
-- Name: sections_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.sections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sections_id_seq OWNER TO root;

--
-- Name: sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.sections_id_seq OWNED BY public.sections.id;


--
-- Name: shipping_charges; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.shipping_charges (
    id bigint NOT NULL,
    country character varying(255) NOT NULL,
    status smallint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    "0_500g" double precision NOT NULL,
    "501g_1000g" double precision NOT NULL,
    "1001_2000g" double precision NOT NULL,
    "2001g_5000g" double precision NOT NULL,
    above_5000g double precision NOT NULL
);


ALTER TABLE public.shipping_charges OWNER TO root;

--
-- Name: shipping_charges_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.shipping_charges_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.shipping_charges_id_seq OWNER TO root;

--
-- Name: shipping_charges_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.shipping_charges_id_seq OWNED BY public.shipping_charges.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    address character varying(255),
    city character varying(255),
    state character varying(255),
    country character varying(255),
    pincode character varying(255),
    mobile character varying(255),
    status smallint NOT NULL,
    access_token text
);


ALTER TABLE public.users OWNER TO root;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO root;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: vendors; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.vendors (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    address character varying(255),
    city character varying(255),
    state character varying(255),
    country character varying(255),
    pincode character varying(255),
    mobile character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    confirm character varying(255) NOT NULL,
    status smallint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    commission double precision,
    CONSTRAINT vendors_confirm_check CHECK (((confirm)::text = ANY ((ARRAY['No'::character varying, 'Yes'::character varying])::text[])))
);


ALTER TABLE public.vendors OWNER TO root;

--
-- Name: vendors_bank_details; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.vendors_bank_details (
    id bigint NOT NULL,
    vendor_id integer NOT NULL,
    account_holder_name character varying(255) NOT NULL,
    bank_name character varying(255) NOT NULL,
    account_number character varying(255) NOT NULL,
    bank_ifsc_code character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.vendors_bank_details OWNER TO root;

--
-- Name: vendors_bank_details_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.vendors_bank_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vendors_bank_details_id_seq OWNER TO root;

--
-- Name: vendors_bank_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.vendors_bank_details_id_seq OWNED BY public.vendors_bank_details.id;


--
-- Name: vendors_business_details; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.vendors_business_details (
    id bigint NOT NULL,
    vendor_id integer NOT NULL,
    shop_name character varying(255),
    shop_address character varying(255),
    shop_city character varying(255),
    shop_state character varying(255),
    shop_country character varying(255),
    shop_pincode character varying(255),
    shop_mobile character varying(255),
    shop_website character varying(255),
    shop_email character varying(255),
    address_proof character varying(255),
    address_proof_image character varying(255),
    business_license_number character varying(255),
    gst_number character varying(255),
    pan_number character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.vendors_business_details OWNER TO root;

--
-- Name: vendors_business_details_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.vendors_business_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vendors_business_details_id_seq OWNER TO root;

--
-- Name: vendors_business_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.vendors_business_details_id_seq OWNED BY public.vendors_business_details.id;


--
-- Name: vendors_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.vendors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vendors_id_seq OWNER TO root;

--
-- Name: vendors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.vendors_id_seq OWNED BY public.vendors.id;


--
-- Name: admins id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.admins ALTER COLUMN id SET DEFAULT nextval('public.admins_id_seq'::regclass);


--
-- Name: banners id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.banners ALTER COLUMN id SET DEFAULT nextval('public.banners_id_seq'::regclass);


--
-- Name: brands id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.brands ALTER COLUMN id SET DEFAULT nextval('public.brands_id_seq'::regclass);


--
-- Name: carts id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.carts ALTER COLUMN id SET DEFAULT nextval('public.carts_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: cod_pincodes id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.cod_pincodes ALTER COLUMN id SET DEFAULT nextval('public.cod_pincodes_id_seq'::regclass);


--
-- Name: countries id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);


--
-- Name: coupons id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.coupons ALTER COLUMN id SET DEFAULT nextval('public.coupons_id_seq'::regclass);


--
-- Name: delivery_addresses id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.delivery_addresses ALTER COLUMN id SET DEFAULT nextval('public.delivery_addresses_id_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: newsletter_subscribers id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.newsletter_subscribers ALTER COLUMN id SET DEFAULT nextval('public.newsletter_subscribers_id_seq'::regclass);


--
-- Name: oauth_clients id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.oauth_clients ALTER COLUMN id SET DEFAULT nextval('public.oauth_clients_id_seq'::regclass);


--
-- Name: oauth_personal_access_clients id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.oauth_personal_access_clients ALTER COLUMN id SET DEFAULT nextval('public.oauth_personal_access_clients_id_seq'::regclass);


--
-- Name: order_item_statuses id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.order_item_statuses ALTER COLUMN id SET DEFAULT nextval('public.order_item_statuses_id_seq'::regclass);


--
-- Name: order_statuses id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.order_statuses ALTER COLUMN id SET DEFAULT nextval('public.order_statuses_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: orders_logs id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.orders_logs ALTER COLUMN id SET DEFAULT nextval('public.orders_logs_id_seq'::regclass);


--
-- Name: orders_products id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.orders_products ALTER COLUMN id SET DEFAULT nextval('public.orders_products_id_seq'::regclass);


--
-- Name: payments id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.payments ALTER COLUMN id SET DEFAULT nextval('public.payments_id_seq'::regclass);


--
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- Name: prepaid_pincodes id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.prepaid_pincodes ALTER COLUMN id SET DEFAULT nextval('public.prepaid_pincodes_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: products_attributes id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.products_attributes ALTER COLUMN id SET DEFAULT nextval('public.products_attributes_id_seq'::regclass);


--
-- Name: products_filters id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.products_filters ALTER COLUMN id SET DEFAULT nextval('public.products_filters_id_seq'::regclass);


--
-- Name: products_filters_values id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.products_filters_values ALTER COLUMN id SET DEFAULT nextval('public.products_filters_values_id_seq'::regclass);


--
-- Name: products_images id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.products_images ALTER COLUMN id SET DEFAULT nextval('public.products_images_id_seq'::regclass);


--
-- Name: ratings id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);


--
-- Name: recently_viewed_products id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.recently_viewed_products ALTER COLUMN id SET DEFAULT nextval('public.recently_viewed_products_id_seq'::regclass);


--
-- Name: sections id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.sections ALTER COLUMN id SET DEFAULT nextval('public.sections_id_seq'::regclass);


--
-- Name: shipping_charges id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shipping_charges ALTER COLUMN id SET DEFAULT nextval('public.shipping_charges_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: vendors id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.vendors ALTER COLUMN id SET DEFAULT nextval('public.vendors_id_seq'::regclass);


--
-- Name: vendors_bank_details id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.vendors_bank_details ALTER COLUMN id SET DEFAULT nextval('public.vendors_bank_details_id_seq'::regclass);


--
-- Name: vendors_business_details id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.vendors_business_details ALTER COLUMN id SET DEFAULT nextval('public.vendors_business_details_id_seq'::regclass);


--
-- Data for Name: admins; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.admins (id, name, type, vendor_id, mobile, email, password, image, confirm, status, created_at, updated_at) FROM stdin;
1	Administrador	superadmin	0	9800000000	admin@admin.com	$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC		Yes	1	\N	\N
2	Vendedor	vendor	1	9700000000	john@admin.com	$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC		Yes	1	\N	\N
3	Hernando	superadmin	0	9700000000	hernando@admin.com	$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC		Yes	1	\N	\N
4	Raul	superadmin	0	9700000000	raul@admin.com	$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC		Yes	1	\N	\N
5	Mauricio	superadmin	0	9700000000	mauricio@admin.com	$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC		Yes	1	\N	\N
\.


--
-- Data for Name: banners; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.banners (id, image, link, title, alt, status, created_at, updated_at, type) FROM stdin;
1	banner-1.jpg	spring-collection	Spring Collection	Spring Collection	1	\N	\N	Slider
2	banner-2.jpg	tops	Tops	Tops	1	\N	\N	Slider
\.


--
-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.brands (id, name, status, created_at, updated_at) FROM stdin;
1	Arrow	1	\N	\N
2	Gap	1	\N	\N
3	Lee	1	\N	\N
4	Samsung	1	\N	\N
5	LG	1	\N	\N
6	Lenovo	1	\N	\N
7	MI	1	\N	\N
\.


--
-- Data for Name: carts; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.carts (id, session_id, user_id, product_id, size, quantity, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.categories (id, parent_id, section_id, category_name, category_image, category_discount, description, url, meta_title, meta_description, meta_keywords, status, created_at, updated_at) FROM stdin;
1	0	1	Men		0		men				1	\N	\N
2	0	1	Women		0		women				1	\N	\N
3	0	1	Kids		0		kids				1	\N	\N
4	0	1	Kid2		0		kids2				1	\N	\N
5	0	1	Kids3		0		kids3				1	\N	\N
6	0	1	Kids4		0		kids4				1	\N	\N
7	0	1	Kids5		0		kids5				1	\N	\N
8	0	1	Categoria8		0		Categoria8				1	\N	\N
\.


--
-- Data for Name: cod_pincodes; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.cod_pincodes (id, pincode, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.countries (id, country_code, country_name, status, created_at, updated_at) FROM stdin;
1	US	United States	1	\N	\N
2	CA	Canada	1	\N	\N
3	AF	Afghanistan	1	\N	\N
4	AL	Albania	1	\N	\N
5	DZ	Algeria	1	\N	\N
6	AS	American Samoa	1	\N	\N
7	AD	Andorra	1	\N	\N
8	AO	Angola	1	\N	\N
9	AI	Anguilla	1	\N	\N
10	AQ	Antarctica	1	\N	\N
11	AG	Antigua and/or Barbuda	1	\N	\N
12	AR	Argentina	1	\N	\N
13	AM	Armenia	1	\N	\N
14	AW	Aruba	1	\N	\N
15	AU	Australia	1	\N	\N
16	AT	Austria	1	\N	\N
17	AZ	Azerbaijan	1	\N	\N
18	BS	Bahamas	1	\N	\N
19	BH	Bahrain	1	\N	\N
20	BD	Bangladesh	1	\N	\N
21	BB	Barbados	1	\N	\N
22	BY	Belarus	1	\N	\N
23	BE	Belgium	1	\N	\N
24	BZ	Belize	1	\N	\N
25	BJ	Benin	1	\N	\N
26	BM	Bermuda	1	\N	\N
27	BT	Bhutan	1	\N	\N
28	BO	Bolivia	1	\N	\N
29	BA	Bosnia and Herzegovina	1	\N	\N
30	BW	Botswana	1	\N	\N
31	BV	Bouvet Island	1	\N	\N
32	BR	Brazil	1	\N	\N
33	IO	British lndian Ocean Territory	1	\N	\N
34	BN	Brunei Darussalam	1	\N	\N
35	BG	Bulgaria	1	\N	\N
36	BF	Burkina Faso	1	\N	\N
37	BI	Burundi	1	\N	\N
38	KH	Cambodia	1	\N	\N
39	CM	Cameroon	1	\N	\N
40	CV	Cape Verde	1	\N	\N
41	KY	Cayman Islands	1	\N	\N
42	CF	Central African Republic	1	\N	\N
43	TD	Chad	1	\N	\N
44	CL	Chile	1	\N	\N
45	CN	China	1	\N	\N
46	CX	Christmas Island	1	\N	\N
47	CC	Cocos (Keeling) Islands	1	\N	\N
48	CO	Colombia	1	\N	\N
49	KM	Comoros	1	\N	\N
50	CG	Congo	1	\N	\N
51	CK	Cook Islands	1	\N	\N
52	CR	Costa Rica	1	\N	\N
53	HR	Croatia (Hrvatska)	1	\N	\N
54	CU	Cuba	1	\N	\N
55	CY	Cyprus	1	\N	\N
56	CZ	Czech Republic	1	\N	\N
57	CD	Democratic Republic of Congo	1	\N	\N
58	DK	Denmark	1	\N	\N
59	DJ	Djibouti	1	\N	\N
60	DM	Dominica	1	\N	\N
61	DO	Dominican Republic	1	\N	\N
62	TP	East Timor	1	\N	\N
63	EC	Ecudaor	1	\N	\N
64	EG	Egypt	1	\N	\N
65	SV	El Salvador	1	\N	\N
66	GQ	Equatorial Guinea	1	\N	\N
67	ER	Eritrea	1	\N	\N
68	EE	Estonia	1	\N	\N
69	ET	Ethiopia	1	\N	\N
70	FK	Falkland Islands (Malvinas)	1	\N	\N
71	FO	Faroe Islands	1	\N	\N
72	FJ	Fiji	1	\N	\N
73	FI	Finland	1	\N	\N
74	FR	France	1	\N	\N
75	FX	France, Metropolitan	1	\N	\N
76	GF	French Guiana	1	\N	\N
77	PF	French Polynesia	1	\N	\N
78	TF	French Southern Territories	1	\N	\N
79	GA	Gabon	1	\N	\N
80	GM	Gambia	1	\N	\N
81	GE	Georgia	1	\N	\N
82	DE	Germany	1	\N	\N
83	GH	Ghana	1	\N	\N
84	GI	Gibraltar	1	\N	\N
85	GR	Greece	1	\N	\N
86	GL	Greenland	1	\N	\N
87	GD	Grenada	1	\N	\N
88	GP	Guadeloupe	1	\N	\N
89	GU	Guam	1	\N	\N
90	GT	Guatemala	1	\N	\N
91	GN	Guinea	1	\N	\N
92	GW	Guinea-Bissau	1	\N	\N
93	GY	Guyana	1	\N	\N
94	HT	Haiti	1	\N	\N
95	HM	Heard and Mc Donald Islands	1	\N	\N
96	HN	Honduras	1	\N	\N
97	HK	Hong Kong	1	\N	\N
98	HU	Hungary	1	\N	\N
99	IS	Iceland	1	\N	\N
100	IN	India	1	\N	\N
101	ID	Indonesia	1	\N	\N
102	IR	Iran (Islamic Republic of)	1	\N	\N
103	IQ	Iraq	1	\N	\N
104	IE	Ireland	1	\N	\N
105	IL	Israel	1	\N	\N
106	IT	Italy	1	\N	\N
107	CI	Ivory Coast	1	\N	\N
108	JM	Jamaica	1	\N	\N
109	JP	Japan	1	\N	\N
110	JO	Jordan	1	\N	\N
111	KZ	Kazakhstan	1	\N	\N
112	KE	Kenya	1	\N	\N
113	KI	Kiribati	1	\N	\N
114	KP	Korea, Democratic People's Republic of	1	\N	\N
115	KR	Korea, Republic of	1	\N	\N
116	KW	Kuwait	1	\N	\N
117	KG	Kyrgyzstan	1	\N	\N
118	LA	Lao People's Democratic Republic	1	\N	\N
119	LV	Latvia	1	\N	\N
120	LB	Lebanon	1	\N	\N
121	LS	Lesotho	1	\N	\N
122	LR	Liberia	1	\N	\N
123	LY	Libyan Arab Jamahiriya	1	\N	\N
124	LI	Liechtenstein	1	\N	\N
125	LT	Lithuania	1	\N	\N
126	LU	Luxembourg	1	\N	\N
127	MO	Macau	1	\N	\N
128	MK	Macedonia	1	\N	\N
129	MG	Madagascar	1	\N	\N
130	MW	Malawi	1	\N	\N
131	MY	Malaysia	1	\N	\N
132	MV	Maldives	1	\N	\N
133	ML	Mali	1	\N	\N
134	MT	Malta	1	\N	\N
135	MH	Marshall Islands	1	\N	\N
136	MQ	Martinique	1	\N	\N
137	MR	Mauritania	1	\N	\N
138	MU	Mauritius	1	\N	\N
139	TY	Mayotte	1	\N	\N
140	MX	Mexico	1	\N	\N
141	FM	Micronesia, Federated States of	1	\N	\N
142	MD	Moldova, Republic of	1	\N	\N
143	MC	Monaco	1	\N	\N
144	MN	Mongolia	1	\N	\N
145	MS	Montserrat	1	\N	\N
146	MA	Morocco	1	\N	\N
147	MZ	Mozambique	1	\N	\N
148	MM	Myanmar	1	\N	\N
149	NA	Namibia	1	\N	\N
150	NR	Nauru	1	\N	\N
151	NP	Nepal	1	\N	\N
152	NL	Netherlands	1	\N	\N
153	AN	Netherlands Antilles	1	\N	\N
154	NC	New Caledonia	1	\N	\N
155	NZ	New Zealand	1	\N	\N
156	NI	Nicaragua	1	\N	\N
157	NE	Niger	1	\N	\N
158	NG	Nigeria	1	\N	\N
159	NU	Niue	1	\N	\N
160	NF	Norfork Island	1	\N	\N
161	MP	Northern Mariana Islands	1	\N	\N
162	NO	Norway	1	\N	\N
163	OM	Oman	1	\N	\N
164	PK	Pakistan	1	\N	\N
165	PW	Palau	1	\N	\N
166	PA	Panama	1	\N	\N
167	PG	Papua New Guinea	1	\N	\N
168	PY	Paraguay	1	\N	\N
169	PE	Peru	1	\N	\N
170	PH	Philippines	1	\N	\N
171	PN	Pitcairn	1	\N	\N
172	PL	Poland	1	\N	\N
173	PT	Portugal	1	\N	\N
174	PR	Puerto Rico	1	\N	\N
175	QA	Qatar	1	\N	\N
176	SS	Republic of South Sudan	1	\N	\N
177	RE	Reunion	1	\N	\N
178	RO	Romania	1	\N	\N
179	RU	Russian Federation	1	\N	\N
180	RW	Rwanda	1	\N	\N
181	KN	Saint Kitts and Nevis	1	\N	\N
182	LC	Saint Lucia	1	\N	\N
183	VC	Saint Vincent and the Grenadines	1	\N	\N
184	WS	Samoa	1	\N	\N
185	SM	San Marino	1	\N	\N
186	ST	Sao Tome and Principe	1	\N	\N
187	SA	Saudi Arabia	1	\N	\N
188	SN	Senegal	1	\N	\N
189	RS	Serbia	1	\N	\N
190	SC	Seychelles	1	\N	\N
191	SL	Sierra Leone	1	\N	\N
192	SG	Singapore	1	\N	\N
193	SK	Slovakia	1	\N	\N
194	SI	Slovenia	1	\N	\N
195	SB	Solomon Islands	1	\N	\N
196	SO	Somalia	1	\N	\N
197	ZA	South Africa	1	\N	\N
198	GS	South Georgia South Sandwich Islands	1	\N	\N
199	ES	Spain	1	\N	\N
200	LK	Sri Lanka	1	\N	\N
201	SH	St. Helena	1	\N	\N
202	PM	St. Pierre and Miquelon	1	\N	\N
203	SD	Sudan	1	\N	\N
204	SR	Suriname	1	\N	\N
205	SJ	Svalbarn and Jan Mayen Islands	1	\N	\N
206	SZ	Swaziland	1	\N	\N
207	SE	Sweden	1	\N	\N
208	CH	Switzerland	1	\N	\N
209	SY	Syrian Arab Republic	1	\N	\N
210	TW	Taiwan	1	\N	\N
211	TJ	Tajikistan	1	\N	\N
212	TZ	Tanzania, United Republic of	1	\N	\N
213	TH	Thailand	1	\N	\N
214	TG	Togo	1	\N	\N
215	TK	Tokelau	1	\N	\N
216	TO	Tonga	1	\N	\N
217	TT	Trinidad and Tobago	1	\N	\N
218	TN	Tunisia	1	\N	\N
219	TR	Turkey	1	\N	\N
220	TM	Turkmenistan	1	\N	\N
221	TC	Turks and Caicos Islands	1	\N	\N
222	TV	Tuvalu	1	\N	\N
223	UG	Uganda	1	\N	\N
224	UA	Ukraine	1	\N	\N
225	AE	United Arab Emirates	1	\N	\N
226	GB	United Kingdom	1	\N	\N
227	UM	United States minor outlying islands	1	\N	\N
228	UY	Uruguay	1	\N	\N
229	UZ	Uzbekistan	1	\N	\N
230	VU	Vanuatu	1	\N	\N
231	VA	Vatican City State	1	\N	\N
232	VE	Venezuela	1	\N	\N
233	VN	Vietnam	1	\N	\N
234	VG	Virgin Islands (British)	1	\N	\N
235	VI	Virgin Islands (U.S.)	1	\N	\N
236	WF	Wallis and Futuna Islands	1	\N	\N
237	EH	Western Sahara	1	\N	\N
238	YE	Yemen	1	\N	\N
239	YU	Yugoslavia	1	\N	\N
240	ZR	Zaire	1	\N	\N
241	ZM	Zambia	1	\N	\N
242	ZW	Zimbabwe	1	\N	\N
\.


--
-- Data for Name: coupons; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.coupons (id, vendor_id, coupon_option, coupon_code, categories, brands, users, coupon_type, amount_type, amount, expiry_date, status, created_at, updated_at) FROM stdin;
1	0	Manual	test10	1	\N		Single Time	Percentage	10	2022-12-31	1	\N	\N
2	1	Manual	test20	1	\N		Single Time	Percentage	20	2022-12-31	1	\N	\N
\.


--
-- Data for Name: delivery_addresses; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.delivery_addresses (id, user_id, name, address, city, state, country, pincode, mobile, status, created_at, updated_at) FROM stdin;
1	1	Ahmed Yahya	37 Salah Salem	Cairo	Cairo	Egypt	10001	1255642718	1	\N	\N
2	1	Ahmed Yahya	15 Fouaad St.	Alexandria	Alexandria	Egypt	141001	1095632526	1	\N	\N
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	2014_10_12_000000_create_users_table	1
2	2014_10_12_100000_create_password_resets_table	1
3	2016_06_01_000001_create_oauth_auth_codes_table	1
4	2016_06_01_000002_create_oauth_access_tokens_table	1
5	2016_06_01_000003_create_oauth_refresh_tokens_table	1
6	2016_06_01_000004_create_oauth_clients_table	1
7	2016_06_01_000005_create_oauth_personal_access_clients_table	1
8	2019_08_19_000000_create_failed_jobs_table	1
9	2019_12_14_000001_create_personal_access_tokens_table	1
10	2022_08_09_172927_create_vendors_table	1
11	2022_08_09_175014_create_admins_table	1
12	2022_08_14_013126_create_vendors_business_details_table	1
13	2022_08_14_125705_create_vendors_bank_details_table	1
14	2022_08_18_133204_create_sections_table	1
15	2022_08_20_154959_create_categories_table	1
16	2022_08_26_235606_create_brands_table	1
17	2022_08_28_003445_create_products_table	1
18	2022_09_06_163819_create_products_attributes_table	1
19	2022_09_17_195644_create_products_images_table	1
20	2022_09_24_150406_create_banners_table	1
21	2022_09_26_142845_update_banners_table	1
22	2022_09_27_134607_update_products_table	1
23	2022_10_02_142913_create_products_filters_table	1
24	2022_10_02_143716_create_products_filters_values_table	1
25	2022_11_02_215937_create_recently_viewed_products_table	1
26	2022_11_03_143550_create_carts_table	1
27	2022_11_09_144019_add_columns_to_users	1
28	2022_12_14_025719_create_coupons_table	1
29	2023_01_14_012938_create_delivery_addresses_table	1
30	2023_02_27_200827_create_orders_table	1
31	2023_02_27_201841_create_orders_products_table	1
32	2023_03_04_161126_create_order_statuses_table	1
33	2023_03_05_000428_create_order_item_statuses_table	1
34	2023_03_08_003018_create_orders_logs_table	1
35	2023_03_09_144122_update_orders_table	1
36	2023_03_09_235853_update_orders_products_table	1
37	2023_03_10_001719_update_orders_logs_table	1
38	2023_03_29_151313_create_payments_table	1
39	2023_04_01_140344_create_shipping_charges_table	1
40	2023_04_04_234905_drop_column_from_shipping_charges_table	1
41	2023_04_04_235424_add_columns_to_shipping_charges_table	1
42	2023_04_12_002719_create_cod_pincodes_table	1
43	2023_04_12_194813_create_prepaid_pincodes_table	1
44	2023_04_14_154108_add_commission_column_to_vendors_table	1
45	2023_04_16_211726_add_is_pushed_column_to_orders_table	1
46	2023_04_23_225334_add_access_token_column_to_users_table	1
47	2023_05_26_233039_create_newsletter_subscribers_table	1
48	2023_07_05_112943_create_ratings_table	1
49	2024_02_28_032011_create_countries_table	1
\.


--
-- Data for Name: newsletter_subscribers; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.newsletter_subscribers (id, email, status, created_at, updated_at) FROM stdin;
1	yasser100@yopmail.com	1	\N	\N
2	fouaad@gmail.com	1	\N	\N
\.


--
-- Data for Name: oauth_access_tokens; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.oauth_access_tokens (id, user_id, client_id, name, scopes, revoked, created_at, updated_at, expires_at) FROM stdin;
\.


--
-- Data for Name: oauth_auth_codes; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.oauth_auth_codes (id, user_id, client_id, scopes, revoked, expires_at) FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.oauth_clients (id, user_id, name, secret, provider, redirect, personal_access_client, password_client, revoked, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: oauth_personal_access_clients; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.oauth_personal_access_clients (id, client_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: oauth_refresh_tokens; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.oauth_refresh_tokens (id, access_token_id, revoked, expires_at) FROM stdin;
\.


--
-- Data for Name: order_item_statuses; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.order_item_statuses (id, name, status, created_at, updated_at) FROM stdin;
1	Pending	1	\N	\N
2	In Progress	1	\N	\N
3	Shipped	1	\N	\N
4	Delivered	1	\N	\N
\.


--
-- Data for Name: order_statuses; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.order_statuses (id, name, status, created_at, updated_at) FROM stdin;
1	New	1	\N	\N
2	Pending	1	\N	\N
3	Canceled	1	\N	\N
4	In Progress	1	\N	\N
5	Shipped	1	\N	\N
6	Partially Shipped	1	\N	\N
7	Delivered	1	\N	\N
8	Partially Delivered	1	\N	\N
9	Paid	1	\N	\N
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.orders (id, user_id, name, address, city, state, country, pincode, mobile, email, shipping_charges, coupon_code, coupon_amount, order_status, payment_method, payment_gateway, grand_total, created_at, updated_at, courier_name, tracking_number, is_pushed) FROM stdin;
\.


--
-- Data for Name: orders_logs; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.orders_logs (id, order_id, order_status, created_at, updated_at, order_item_id) FROM stdin;
\.


--
-- Data for Name: orders_products; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.orders_products (id, order_id, user_id, vendor_id, admin_id, product_id, product_code, product_name, product_color, product_size, product_price, product_qty, item_status, created_at, updated_at, courier_name, tracking_number, commission) FROM stdin;
\.


--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.password_resets (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.payments (id, order_id, user_id, payment_id, payer_id, payer_email, amount, currency, payment_status, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: prepaid_pincodes; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.prepaid_pincodes (id, pincode, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.products (id, section_id, category_id, brand_id, vendor_id, admin_id, admin_type, product_name, product_code, product_color, product_price, product_discount, product_weight, product_image, product_video, group_code, description, meta_title, meta_keywords, meta_description, is_featured, status, created_at, updated_at, is_bestseller) FROM stdin;
1	2	1	7	1	2	vendor	Redmi Note 11	RN11	Blue	15000	10	500			\N	\N				Yes	1	\N	\N	Yes
2	1	2	2	0	1	superadmin	Red Casual T-Shirt	RC001	Red	1000	20	500			\N	\N				Yes	1	\N	\N	No
\.


--
-- Data for Name: products_attributes; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.products_attributes (id, product_id, size, price, stock, sku, status, created_at, updated_at) FROM stdin;
1	2	Small	1000	10	RC001-S	1	\N	\N
2	2	Medium	1100	15	RC001-M	1	\N	\N
3	2	Large	1200	20	RC001-L	1	\N	\N
\.


--
-- Data for Name: products_filters; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.products_filters (id, cat_ids, filter_name, filter_column, status, created_at, updated_at) FROM stdin;
1	1,2,3,6,7,8	Fabric	fabric	1	\N	\N
2	4,5	RAM	ram	1	\N	\N
\.


--
-- Data for Name: products_filters_values; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.products_filters_values (id, filter_id, filter_value, status, created_at, updated_at) FROM stdin;
1	1	cotton	1	\N	\N
2	1	polyester	1	\N	\N
3	2	4 GB	1	\N	\N
4	2	8 GB	1	\N	\N
\.


--
-- Data for Name: products_images; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.products_images (id, product_id, image, status, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: ratings; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.ratings (id, user_id, product_id, review, rating, status, created_at, updated_at) FROM stdin;
1	2	1	It's a great mobile phone!	4	1	\N	\N
2	2	2	Awesome product!	5	1	\N	\N
\.


--
-- Data for Name: recently_viewed_products; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.recently_viewed_products (id, product_id, session_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: sections; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.sections (id, name, status, created_at, updated_at) FROM stdin;
1	Clothing	1	\N	\N
2	Electronics	1	\N	\N
3	Appliances	1	\N	\N
\.


--
-- Data for Name: shipping_charges; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.shipping_charges (id, country, status, created_at, updated_at, "0_500g", "501g_1000g", "1001_2000g", "2001g_5000g", above_5000g) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at, address, city, state, country, pincode, mobile, status, access_token) FROM stdin;
1	Nuria Alvarado Segundo	vazquez.naiara@example.com	2024-03-07 14:27:02	$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC	6qVq9Msm3a	2024-03-07 14:27:02	2024-03-07 14:27:02	\N	\N	\N	\N	\N	\N	1	\N
2	Candela Esquibel	trujillo.valentina@example.org	2024-03-07 14:27:02	$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC	6dr1vtIpVl	2024-03-07 14:27:02	2024-03-07 14:27:02	\N	\N	\N	\N	\N	\N	1	\N
3	Paula Gaitán	paola35@example.com	2024-03-07 14:27:02	$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC	Tq0gXc6qjo	2024-03-07 14:27:02	2024-03-07 14:27:02	\N	\N	\N	\N	\N	\N	1	\N
4	Joel Mota	emilia23@example.com	2024-03-07 14:27:02	$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC	eW7V5OKOAS	2024-03-07 14:27:02	2024-03-07 14:27:02	\N	\N	\N	\N	\N	\N	1	\N
5	Claudia Mena	amparo25@example.net	2024-03-07 14:27:02	$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC	FCG8D1oFdV	2024-03-07 14:27:02	2024-03-07 14:27:02	\N	\N	\N	\N	\N	\N	1	\N
6	Srta. Nil Sola Segundo	drolon@example.org	2024-03-07 14:27:02	$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC	IjAPQwAMsT	2024-03-07 14:27:02	2024-03-07 14:27:02	\N	\N	\N	\N	\N	\N	1	\N
7	Ing. Leire Cabán Hijo	mrascon@example.com	2024-03-07 14:27:02	$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC	eO7fkTkqpn	2024-03-07 14:27:02	2024-03-07 14:27:02	\N	\N	\N	\N	\N	\N	1	\N
8	Eduardo Paz	ivillalba@example.org	2024-03-07 14:27:02	$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC	Mq2FKvHrFx	2024-03-07 14:27:02	2024-03-07 14:27:02	\N	\N	\N	\N	\N	\N	1	\N
9	Ing. Cristian Jiménez	cristian.holguin@example.com	2024-03-07 14:27:02	$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC	uvT34XsjIz	2024-03-07 14:27:02	2024-03-07 14:27:02	\N	\N	\N	\N	\N	\N	1	\N
10	Inés Quiñones Tercero	noelia.olivarez@example.com	2024-03-07 14:27:02	$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC	ctzfQxW5W0	2024-03-07 14:27:02	2024-03-07 14:27:02	\N	\N	\N	\N	\N	\N	1	\N
\.


--
-- Data for Name: vendors; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.vendors (id, name, address, city, state, country, pincode, mobile, email, confirm, status, created_at, updated_at, commission) FROM stdin;
1	Yasser Fouaad - Vendor	17 El-Salam St.	Maadi	Cairo	Egypt	110001	9700000000	yasser@admin.com	No	1	\N	\N	\N
\.


--
-- Data for Name: vendors_bank_details; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.vendors_bank_details (id, vendor_id, account_holder_name, bank_name, account_number, bank_ifsc_code, created_at, updated_at) FROM stdin;
1	1	John Cena	ICICI	021546545454541545454	36546655	\N	\N
\.


--
-- Data for Name: vendors_business_details; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.vendors_business_details (id, vendor_id, shop_name, shop_address, shop_city, shop_state, shop_country, shop_pincode, shop_mobile, shop_website, shop_email, address_proof, address_proof_image, business_license_number, gst_number, pan_number, created_at, updated_at) FROM stdin;
1	1	John Electronics Store	12 Mahmoud Saeed St.	New Cairo	Cairo	Egypt	110001	1253247745	amazon.com.eg	john@admin.com	Passport	test.jpg	1234556	446444664	2135446	\N	\N
\.


--
-- Name: admins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.admins_id_seq', 5, true);


--
-- Name: banners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.banners_id_seq', 1, false);


--
-- Name: brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.brands_id_seq', 1, false);


--
-- Name: carts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.carts_id_seq', 1, false);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, false);


--
-- Name: cod_pincodes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.cod_pincodes_id_seq', 1, false);


--
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.countries_id_seq', 242, true);


--
-- Name: coupons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.coupons_id_seq', 1, false);


--
-- Name: delivery_addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.delivery_addresses_id_seq', 1, false);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.migrations_id_seq', 49, true);


--
-- Name: newsletter_subscribers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.newsletter_subscribers_id_seq', 1, false);


--
-- Name: oauth_clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.oauth_clients_id_seq', 1, false);


--
-- Name: oauth_personal_access_clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.oauth_personal_access_clients_id_seq', 1, false);


--
-- Name: order_item_statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.order_item_statuses_id_seq', 1, false);


--
-- Name: order_statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.order_statuses_id_seq', 1, false);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.orders_id_seq', 1, false);


--
-- Name: orders_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.orders_logs_id_seq', 1, false);


--
-- Name: orders_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.orders_products_id_seq', 1, false);


--
-- Name: payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.payments_id_seq', 1, false);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- Name: prepaid_pincodes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.prepaid_pincodes_id_seq', 1, false);


--
-- Name: products_attributes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.products_attributes_id_seq', 1, false);


--
-- Name: products_filters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.products_filters_id_seq', 1, false);


--
-- Name: products_filters_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.products_filters_values_id_seq', 1, false);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.products_id_seq', 1, false);


--
-- Name: products_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.products_images_id_seq', 1, false);


--
-- Name: ratings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.ratings_id_seq', 1, false);


--
-- Name: recently_viewed_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.recently_viewed_products_id_seq', 1, false);


--
-- Name: sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.sections_id_seq', 1, false);


--
-- Name: shipping_charges_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.shipping_charges_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.users_id_seq', 10, true);


--
-- Name: vendors_bank_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.vendors_bank_details_id_seq', 1, false);


--
-- Name: vendors_business_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.vendors_business_details_id_seq', 1, false);


--
-- Name: vendors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.vendors_id_seq', 1, false);


--
-- Name: admins admins_email_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.admins
    ADD CONSTRAINT admins_email_unique UNIQUE (email);


--
-- Name: admins admins_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.admins
    ADD CONSTRAINT admins_pkey PRIMARY KEY (id);


--
-- Name: banners banners_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.banners
    ADD CONSTRAINT banners_pkey PRIMARY KEY (id);


--
-- Name: brands brands_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);


--
-- Name: carts carts_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: cod_pincodes cod_pincodes_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.cod_pincodes
    ADD CONSTRAINT cod_pincodes_pkey PRIMARY KEY (id);


--
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- Name: coupons coupons_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.coupons
    ADD CONSTRAINT coupons_pkey PRIMARY KEY (id);


--
-- Name: delivery_addresses delivery_addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.delivery_addresses
    ADD CONSTRAINT delivery_addresses_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: newsletter_subscribers newsletter_subscribers_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.newsletter_subscribers
    ADD CONSTRAINT newsletter_subscribers_pkey PRIMARY KEY (id);


--
-- Name: oauth_access_tokens oauth_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.oauth_access_tokens
    ADD CONSTRAINT oauth_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: oauth_auth_codes oauth_auth_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.oauth_auth_codes
    ADD CONSTRAINT oauth_auth_codes_pkey PRIMARY KEY (id);


--
-- Name: oauth_clients oauth_clients_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.oauth_clients
    ADD CONSTRAINT oauth_clients_pkey PRIMARY KEY (id);


--
-- Name: oauth_personal_access_clients oauth_personal_access_clients_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.oauth_personal_access_clients
    ADD CONSTRAINT oauth_personal_access_clients_pkey PRIMARY KEY (id);


--
-- Name: oauth_refresh_tokens oauth_refresh_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.oauth_refresh_tokens
    ADD CONSTRAINT oauth_refresh_tokens_pkey PRIMARY KEY (id);


--
-- Name: order_item_statuses order_item_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.order_item_statuses
    ADD CONSTRAINT order_item_statuses_pkey PRIMARY KEY (id);


--
-- Name: order_statuses order_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.order_statuses
    ADD CONSTRAINT order_statuses_pkey PRIMARY KEY (id);


--
-- Name: orders_logs orders_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.orders_logs
    ADD CONSTRAINT orders_logs_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: orders_products orders_products_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.orders_products
    ADD CONSTRAINT orders_products_pkey PRIMARY KEY (id);


--
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- Name: prepaid_pincodes prepaid_pincodes_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.prepaid_pincodes
    ADD CONSTRAINT prepaid_pincodes_pkey PRIMARY KEY (id);


--
-- Name: products_attributes products_attributes_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.products_attributes
    ADD CONSTRAINT products_attributes_pkey PRIMARY KEY (id);


--
-- Name: products_filters products_filters_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.products_filters
    ADD CONSTRAINT products_filters_pkey PRIMARY KEY (id);


--
-- Name: products_filters_values products_filters_values_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.products_filters_values
    ADD CONSTRAINT products_filters_values_pkey PRIMARY KEY (id);


--
-- Name: products_images products_images_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.products_images
    ADD CONSTRAINT products_images_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: ratings ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);


--
-- Name: recently_viewed_products recently_viewed_products_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.recently_viewed_products
    ADD CONSTRAINT recently_viewed_products_pkey PRIMARY KEY (id);


--
-- Name: sections sections_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.sections
    ADD CONSTRAINT sections_pkey PRIMARY KEY (id);


--
-- Name: shipping_charges shipping_charges_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shipping_charges
    ADD CONSTRAINT shipping_charges_pkey PRIMARY KEY (id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: vendors_bank_details vendors_bank_details_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.vendors_bank_details
    ADD CONSTRAINT vendors_bank_details_pkey PRIMARY KEY (id);


--
-- Name: vendors_business_details vendors_business_details_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.vendors_business_details
    ADD CONSTRAINT vendors_business_details_pkey PRIMARY KEY (id);


--
-- Name: vendors vendors_email_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.vendors
    ADD CONSTRAINT vendors_email_unique UNIQUE (email);


--
-- Name: vendors vendors_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.vendors
    ADD CONSTRAINT vendors_pkey PRIMARY KEY (id);


--
-- Name: oauth_access_tokens_user_id_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX oauth_access_tokens_user_id_index ON public.oauth_access_tokens USING btree (user_id);


--
-- Name: oauth_auth_codes_user_id_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX oauth_auth_codes_user_id_index ON public.oauth_auth_codes USING btree (user_id);


--
-- Name: oauth_clients_user_id_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX oauth_clients_user_id_index ON public.oauth_clients USING btree (user_id);


--
-- Name: oauth_refresh_tokens_access_token_id_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX oauth_refresh_tokens_access_token_id_index ON public.oauth_refresh_tokens USING btree (access_token_id);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- PostgreSQL database dump complete
--


 
-- pg_dump    pg_restore

docker exec e37043d92457 pg_restore -U root -d online_shop /backups/online_shop_postgres_backup.sql 
docker exec -ti e37043d92457 bash
pg_dump -U root -d online_shop > /backups/online_shop_postgres_backup.sql 
docker cp e37043d92457:online_shop_postgres_backup.sql postgresql/backups/online_shop_postgres_backup.sql



docker exec -i mv_postgres /usr/bin/pg_dump \ -U <root> <online_shop> > online_shop-backup.sql 








































































