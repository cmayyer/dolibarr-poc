--
-- PostgreSQL database dump
--

\restrict tukyZkWH5BAqPIppVjz8ocQtWFnF7wb4y8cAeSzBgXikPPwTQriU764kWmvj5mE

-- Dumped from database version 16.11
-- Dumped by pg_dump version 16.11

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
-- Name: date_format(timestamp without time zone, text); Type: FUNCTION; Schema: public; Owner: dolibarr
--

CREATE FUNCTION public.date_format(timestamp without time zone, text) RETURNS text
    LANGUAGE plpgsql IMMUTABLE STRICT
    AS $_$ DECLARE i int := 1; temp text := ''; c text; n text; res text; BEGIN WHILE i <= pg_catalog.length($2) LOOP c := SUBSTRING ($2 FROM i FOR 1); IF c = '%' AND i != pg_catalog.length($2) THEN n := SUBSTRING ($2 FROM (i + 1) FOR 1); SELECT INTO res CASE WHEN n = 'a' THEN pg_catalog.to_char($1, 'Dy') WHEN n = 'b' THEN pg_catalog.to_char($1, 'Mon') WHEN n = 'c' THEN pg_catalog.to_char($1, 'FMMM') WHEN n = 'D' THEN pg_catalog.to_char($1, 'FMDDth') WHEN n = 'd' THEN pg_catalog.to_char($1, 'DD') WHEN n = 'e' THEN pg_catalog.to_char($1, 'FMDD') WHEN n = 'f' THEN pg_catalog.to_char($1, 'US') WHEN n = 'H' THEN pg_catalog.to_char($1, 'HH24') WHEN n = 'h' THEN pg_catalog.to_char($1, 'HH12') WHEN n = 'I' THEN pg_catalog.to_char($1, 'HH12') WHEN n = 'i' THEN pg_catalog.to_char($1, 'MI') WHEN n = 'j' THEN pg_catalog.to_char($1, 'DDD') WHEN n = 'k' THEN pg_catalog.to_char($1, 'FMHH24') WHEN n = 'l' THEN pg_catalog.to_char($1, 'FMHH12') WHEN n = 'M' THEN pg_catalog.to_char($1, 'FMMonth') WHEN n = 'm' THEN pg_catalog.to_char($1, 'MM') WHEN n = 'p' THEN pg_catalog.to_char($1, 'AM') WHEN n = 'r' THEN pg_catalog.to_char($1, 'HH12:MI:SS AM') WHEN n = 'S' THEN pg_catalog.to_char($1, 'SS') WHEN n = 's' THEN pg_catalog.to_char($1, 'SS') WHEN n = 'T' THEN pg_catalog.to_char($1, 'HH24:MI:SS') WHEN n = 'U' THEN pg_catalog.to_char($1, '?') WHEN n = 'u' THEN pg_catalog.to_char($1, '?') WHEN n = 'V' THEN pg_catalog.to_char($1, '?') WHEN n = 'v' THEN pg_catalog.to_char($1, '?') WHEN n = 'W' THEN pg_catalog.to_char($1, 'FMDay') WHEN n = 'w' THEN EXTRACT(DOW FROM $1)::text WHEN n = 'X' THEN pg_catalog.to_char($1, '?') WHEN n = 'x' THEN pg_catalog.to_char($1, '?') WHEN n = 'Y' THEN pg_catalog.to_char($1, 'YYYY') WHEN n = 'y' THEN pg_catalog.to_char($1, 'YY') WHEN n = '%' THEN pg_catalog.to_char($1, '%') ELSE NULL END; temp := temp operator(pg_catalog.||) res; i := i + 2; ELSE temp = temp operator(pg_catalog.||) c; i := i + 1; END IF; END LOOP; RETURN temp; END $_$;


ALTER FUNCTION public.date_format(timestamp without time zone, text) OWNER TO dolibarr;

--
-- Name: date_format(timestamp with time zone, text); Type: FUNCTION; Schema: public; Owner: dolibarr
--

CREATE FUNCTION public.date_format(timestamp with time zone, text) RETURNS text
    LANGUAGE plpgsql IMMUTABLE STRICT
    AS $_$ DECLARE i int := 1; temp text := ''; c text; n text; res text; BEGIN WHILE i <= pg_catalog.length($2) LOOP c := SUBSTRING ($2 FROM i FOR 1); IF c = '%' AND i != pg_catalog.length($2) THEN n := SUBSTRING ($2 FROM (i + 1) FOR 1); SELECT INTO res CASE WHEN n = 'a' THEN pg_catalog.to_char($1, 'Dy') WHEN n = 'b' THEN pg_catalog.to_char($1, 'Mon') WHEN n = 'c' THEN pg_catalog.to_char($1, 'FMMM') WHEN n = 'D' THEN pg_catalog.to_char($1, 'FMDDth') WHEN n = 'd' THEN pg_catalog.to_char($1, 'DD') WHEN n = 'e' THEN pg_catalog.to_char($1, 'FMDD') WHEN n = 'f' THEN pg_catalog.to_char($1, 'US') WHEN n = 'H' THEN pg_catalog.to_char($1, 'HH24') WHEN n = 'h' THEN pg_catalog.to_char($1, 'HH12') WHEN n = 'I' THEN pg_catalog.to_char($1, 'HH12') WHEN n = 'i' THEN pg_catalog.to_char($1, 'MI') WHEN n = 'j' THEN pg_catalog.to_char($1, 'DDD') WHEN n = 'k' THEN pg_catalog.to_char($1, 'FMHH24') WHEN n = 'l' THEN pg_catalog.to_char($1, 'FMHH12') WHEN n = 'M' THEN pg_catalog.to_char($1, 'FMMonth') WHEN n = 'm' THEN pg_catalog.to_char($1, 'MM') WHEN n = 'p' THEN pg_catalog.to_char($1, 'AM') WHEN n = 'r' THEN pg_catalog.to_char($1, 'HH12:MI:SS AM') WHEN n = 'S' THEN pg_catalog.to_char($1, 'SS') WHEN n = 's' THEN pg_catalog.to_char($1, 'SS') WHEN n = 'T' THEN pg_catalog.to_char($1, 'HH24:MI:SS') WHEN n = 'U' THEN pg_catalog.to_char($1, '?') WHEN n = 'u' THEN pg_catalog.to_char($1, '?') WHEN n = 'V' THEN pg_catalog.to_char($1, '?') WHEN n = 'v' THEN pg_catalog.to_char($1, '?') WHEN n = 'W' THEN pg_catalog.to_char($1, 'FMDay') WHEN n = 'w' THEN EXTRACT(DOW FROM $1)::text WHEN n = 'X' THEN pg_catalog.to_char($1, '?') WHEN n = 'x' THEN pg_catalog.to_char($1, '?') WHEN n = 'Y' THEN pg_catalog.to_char($1, 'YYYY') WHEN n = 'y' THEN pg_catalog.to_char($1, 'YY') WHEN n = '%' THEN pg_catalog.to_char($1, '%') ELSE NULL END; temp := temp operator(pg_catalog.||) res; i := i + 2; ELSE temp = temp operator(pg_catalog.||) c; i := i + 1; END IF; END LOOP; RETURN temp; END $_$;


ALTER FUNCTION public.date_format(timestamp with time zone, text) OWNER TO dolibarr;

--
-- Name: day(date); Type: FUNCTION; Schema: public; Owner: dolibarr
--

CREATE FUNCTION public.day(date) RETURNS integer
    LANGUAGE sql IMMUTABLE
    AS $_$ SELECT EXTRACT(DAY FROM $1)::INTEGER; $_$;


ALTER FUNCTION public.day(date) OWNER TO dolibarr;

--
-- Name: day(timestamp without time zone); Type: FUNCTION; Schema: public; Owner: dolibarr
--

CREATE FUNCTION public.day(timestamp without time zone) RETURNS integer
    LANGUAGE sql IMMUTABLE
    AS $_$ SELECT EXTRACT(DAY FROM $1)::INTEGER; $_$;


ALTER FUNCTION public.day(timestamp without time zone) OWNER TO dolibarr;

--
-- Name: day(timestamp with time zone); Type: FUNCTION; Schema: public; Owner: dolibarr
--

CREATE FUNCTION public.day(timestamp with time zone) RETURNS integer
    LANGUAGE sql STABLE
    AS $_$ SELECT EXTRACT(DAY FROM $1)::INTEGER; $_$;


ALTER FUNCTION public.day(timestamp with time zone) OWNER TO dolibarr;

--
-- Name: dol_util_rebuild_sequences(); Type: FUNCTION; Schema: public; Owner: dolibarr
--

CREATE FUNCTION public.dol_util_rebuild_sequences() RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE sequencedefs RECORD; c integer ; BEGIN FOR sequencedefs IN SELECT DISTINCT constraint_column_usage.table_name as tablename, constraint_column_usage.table_name as tablename, constraint_column_usage.column_name as columnname, replace(replace(columns.column_default,'''::regclass)',''),'nextval(''','') as sequencename from information_schema.constraint_column_usage, information_schema.columns, information_schema.sequences where constraint_column_usage.table_schema ='public' AND columns.table_schema = 'public' AND columns.table_name=constraint_column_usage.table_name AND constraint_column_usage.column_name IN ('rowid','id') AND constraint_column_usage.column_name = columns.column_name AND columns.column_default is not null AND replace(replace(columns.column_default,'''::regclass)',''),'nextval(''','')=sequence_name LOOP EXECUTE 'select max('||sequencedefs.columnname||') from ' || sequencedefs.tablename INTO c; IF c is null THEN c = 0; END IF; IF c is not null THEN c = c+ 1; END IF; EXECUTE 'alter sequence ' || sequencedefs.sequencename ||' restart  with ' || c; END LOOP; RETURN 1; END; $$;


ALTER FUNCTION public.dol_util_rebuild_sequences() OWNER TO dolibarr;

--
-- Name: dol_util_triggerall(boolean); Type: FUNCTION; Schema: public; Owner: dolibarr
--

CREATE FUNCTION public.dol_util_triggerall(doenable boolean) RETURNS integer
    LANGUAGE plpgsql
    AS $$ DECLARE mytables RECORD; BEGIN FOR mytables IN SELECT relname FROM pg_class WHERE relhastriggers IS TRUE AND relkind = 'r' AND NOT relname ILIKE 'pg_%' LOOP IF DoEnable THEN EXECUTE 'ALTER TABLE ' || mytables.relname || ' ENABLE TRIGGER ALL'; ELSE  EXECUTE 'ALTER TABLE ' || mytables.relname || ' DISABLE TRIGGER ALL'; END IF; END LOOP; RETURN 1; END; $$;


ALTER FUNCTION public.dol_util_triggerall(doenable boolean) OWNER TO dolibarr;

--
-- Name: month(date); Type: FUNCTION; Schema: public; Owner: dolibarr
--

CREATE FUNCTION public.month(date) RETURNS integer
    LANGUAGE sql IMMUTABLE
    AS $_$ SELECT EXTRACT(MONTH FROM $1)::INTEGER; $_$;


ALTER FUNCTION public.month(date) OWNER TO dolibarr;

--
-- Name: month(timestamp without time zone); Type: FUNCTION; Schema: public; Owner: dolibarr
--

CREATE FUNCTION public.month(timestamp without time zone) RETURNS integer
    LANGUAGE sql IMMUTABLE
    AS $_$ SELECT EXTRACT(MONTH FROM $1)::INTEGER; $_$;


ALTER FUNCTION public.month(timestamp without time zone) OWNER TO dolibarr;

--
-- Name: month(timestamp with time zone); Type: FUNCTION; Schema: public; Owner: dolibarr
--

CREATE FUNCTION public.month(timestamp with time zone) RETURNS integer
    LANGUAGE sql STABLE
    AS $_$ SELECT EXTRACT(MONTH FROM $1)::INTEGER; $_$;


ALTER FUNCTION public.month(timestamp with time zone) OWNER TO dolibarr;

--
-- Name: unix_timestamp(timestamp without time zone); Type: FUNCTION; Schema: public; Owner: dolibarr
--

CREATE FUNCTION public.unix_timestamp(timestamp without time zone) RETURNS bigint
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT EXTRACT(EPOCH FROM $1)::bigint;$_$;


ALTER FUNCTION public.unix_timestamp(timestamp without time zone) OWNER TO dolibarr;

--
-- Name: unix_timestamp(timestamp with time zone); Type: FUNCTION; Schema: public; Owner: dolibarr
--

CREATE FUNCTION public.unix_timestamp(timestamp with time zone) RETURNS bigint
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT EXTRACT(EPOCH FROM $1)::bigint;$_$;


ALTER FUNCTION public.unix_timestamp(timestamp with time zone) OWNER TO dolibarr;

--
-- Name: update_modified_column_tms(); Type: FUNCTION; Schema: public; Owner: dolibarr
--

CREATE FUNCTION public.update_modified_column_tms() RETURNS trigger
    LANGUAGE plpgsql
    AS $$ BEGIN NEW.tms = now(); RETURN NEW; END; $$;


ALTER FUNCTION public.update_modified_column_tms() OWNER TO dolibarr;

--
-- Name: year(date); Type: FUNCTION; Schema: public; Owner: dolibarr
--

CREATE FUNCTION public.year(date) RETURNS integer
    LANGUAGE sql IMMUTABLE
    AS $_$ SELECT EXTRACT(YEAR FROM $1)::INTEGER; $_$;


ALTER FUNCTION public.year(date) OWNER TO dolibarr;

--
-- Name: year(timestamp without time zone); Type: FUNCTION; Schema: public; Owner: dolibarr
--

CREATE FUNCTION public.year(timestamp without time zone) RETURNS integer
    LANGUAGE sql IMMUTABLE
    AS $_$ SELECT EXTRACT(YEAR FROM $1)::INTEGER; $_$;


ALTER FUNCTION public.year(timestamp without time zone) OWNER TO dolibarr;

--
-- Name: year(timestamp with time zone); Type: FUNCTION; Schema: public; Owner: dolibarr
--

CREATE FUNCTION public.year(timestamp with time zone) RETURNS integer
    LANGUAGE sql STABLE
    AS $_$ SELECT EXTRACT(YEAR FROM $1)::INTEGER; $_$;


ALTER FUNCTION public.year(timestamp with time zone) OWNER TO dolibarr;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: llx_accounting_account; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_accounting_account (
    rowid bigint NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_pcg_version character varying(32) NOT NULL,
    pcg_type character varying(60) NOT NULL,
    account_number character varying(32) NOT NULL,
    account_parent integer DEFAULT 0,
    label character varying(255) NOT NULL,
    labelshort character varying(255) DEFAULT NULL::character varying,
    fk_accounting_category integer DEFAULT 0,
    fk_user_author integer,
    fk_user_modif integer,
    active smallint DEFAULT 1 NOT NULL,
    centralized smallint DEFAULT 0 NOT NULL,
    reconcilable smallint DEFAULT 0 NOT NULL,
    import_key character varying(14),
    extraparams character varying(255)
);


ALTER TABLE public.llx_accounting_account OWNER TO dolibarr;

--
-- Name: llx_accounting_account_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_accounting_account_rowid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_accounting_account_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_accounting_account_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_accounting_account_rowid_seq OWNED BY public.llx_accounting_account.rowid;


--
-- Name: llx_accounting_bookkeeping; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_accounting_bookkeeping (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    ref character varying(30),
    piece_num integer NOT NULL,
    doc_date date NOT NULL,
    doc_type character varying(30) NOT NULL,
    doc_ref character varying(300) NOT NULL,
    fk_doc integer NOT NULL,
    fk_docdet integer NOT NULL,
    thirdparty_code character varying(32),
    subledger_account character varying(32),
    subledger_label character varying(255),
    numero_compte character varying(32) NOT NULL,
    label_compte character varying(255) NOT NULL,
    label_operation character varying(255),
    debit numeric(24,8) NOT NULL,
    credit numeric(24,8) NOT NULL,
    montant numeric(24,8),
    sens character varying(1) DEFAULT NULL::character varying,
    multicurrency_amount numeric(24,8),
    multicurrency_code character varying(255),
    lettering_code character varying(255),
    date_lettering timestamp without time zone,
    date_lim_reglement timestamp without time zone,
    fk_user_author integer NOT NULL,
    fk_user_modif integer,
    date_creation timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_user integer,
    code_journal character varying(32) NOT NULL,
    journal_label character varying(255),
    date_validated timestamp without time zone,
    date_export timestamp without time zone,
    import_key character varying(14),
    extraparams character varying(255)
);


ALTER TABLE public.llx_accounting_bookkeeping OWNER TO dolibarr;

--
-- Name: llx_accounting_bookkeeping_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_accounting_bookkeeping_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_accounting_bookkeeping_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_accounting_bookkeeping_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_accounting_bookkeeping_rowid_seq OWNED BY public.llx_accounting_bookkeeping.rowid;


--
-- Name: llx_accounting_bookkeeping_tmp; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_accounting_bookkeeping_tmp (
    rowid integer NOT NULL,
    ref character varying(30),
    entity integer DEFAULT 1 NOT NULL,
    doc_date date NOT NULL,
    doc_type character varying(30) NOT NULL,
    doc_ref character varying(300) NOT NULL,
    fk_doc integer NOT NULL,
    fk_docdet integer NOT NULL,
    thirdparty_code character varying(32),
    subledger_account character varying(32),
    subledger_label character varying(255),
    numero_compte character varying(32),
    label_compte character varying(255) NOT NULL,
    label_operation character varying(255),
    debit numeric(24,8) NOT NULL,
    credit numeric(24,8) NOT NULL,
    montant numeric(24,8) NOT NULL,
    sens character varying(1) DEFAULT NULL::character varying,
    multicurrency_amount numeric(24,8),
    multicurrency_code character varying(255),
    lettering_code character varying(255),
    date_lettering timestamp without time zone,
    date_lim_reglement timestamp without time zone,
    fk_user_author integer NOT NULL,
    fk_user_modif integer,
    date_creation timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_user integer,
    code_journal character varying(32) NOT NULL,
    journal_label character varying(255),
    piece_num integer NOT NULL,
    date_validated timestamp without time zone,
    import_key character varying(14),
    extraparams character varying(255)
);


ALTER TABLE public.llx_accounting_bookkeeping_tmp OWNER TO dolibarr;

--
-- Name: llx_accounting_bookkeeping_tmp_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_accounting_bookkeeping_tmp_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_accounting_bookkeeping_tmp_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_accounting_bookkeeping_tmp_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_accounting_bookkeeping_tmp_rowid_seq OWNED BY public.llx_accounting_bookkeeping_tmp.rowid;


--
-- Name: llx_accounting_fiscalyear; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_accounting_fiscalyear (
    rowid integer NOT NULL,
    label character varying(128) NOT NULL,
    date_start date,
    date_end date,
    statut smallint DEFAULT 0 NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_user_author integer,
    fk_user_modif integer
);


ALTER TABLE public.llx_accounting_fiscalyear OWNER TO dolibarr;

--
-- Name: llx_accounting_fiscalyear_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_accounting_fiscalyear_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_accounting_fiscalyear_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_accounting_fiscalyear_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_accounting_fiscalyear_rowid_seq OWNED BY public.llx_accounting_fiscalyear.rowid;


--
-- Name: llx_accounting_groups_account; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_accounting_groups_account (
    rowid integer NOT NULL,
    fk_accounting_account integer NOT NULL,
    fk_c_accounting_category integer NOT NULL
);


ALTER TABLE public.llx_accounting_groups_account OWNER TO dolibarr;

--
-- Name: llx_accounting_groups_account_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_accounting_groups_account_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_accounting_groups_account_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_accounting_groups_account_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_accounting_groups_account_rowid_seq OWNED BY public.llx_accounting_groups_account.rowid;


--
-- Name: llx_accounting_journal; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_accounting_journal (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    code character varying(32) NOT NULL,
    label character varying(128) NOT NULL,
    nature smallint DEFAULT 1 NOT NULL,
    active smallint DEFAULT 0
);


ALTER TABLE public.llx_accounting_journal OWNER TO dolibarr;

--
-- Name: llx_accounting_journal_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_accounting_journal_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_accounting_journal_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_accounting_journal_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_accounting_journal_rowid_seq OWNED BY public.llx_accounting_journal.rowid;


--
-- Name: llx_accounting_system; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_accounting_system (
    rowid integer NOT NULL,
    fk_country integer,
    pcg_version character varying(32) NOT NULL,
    label character varying(128) NOT NULL,
    active smallint DEFAULT 0,
    date_creation timestamp without time zone,
    fk_user_author integer
);


ALTER TABLE public.llx_accounting_system OWNER TO dolibarr;

--
-- Name: llx_accounting_system_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_accounting_system_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_accounting_system_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_accounting_system_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_accounting_system_rowid_seq OWNED BY public.llx_accounting_system.rowid;


--
-- Name: llx_actioncomm; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_actioncomm (
    id integer NOT NULL,
    ref character varying(30) NOT NULL,
    ref_ext character varying(255),
    entity integer DEFAULT 1 NOT NULL,
    datep timestamp without time zone,
    datep2 timestamp without time zone,
    fk_action integer,
    code character varying(50),
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_user_author integer,
    fk_user_mod integer,
    fk_project integer,
    fk_task integer,
    fk_soc integer,
    fk_contact integer,
    fk_parent integer DEFAULT 0 NOT NULL,
    fk_user_action integer,
    transparency integer,
    priority smallint,
    visibility character varying(12) DEFAULT 'default'::character varying,
    fulldayevent smallint DEFAULT 0 NOT NULL,
    percent smallint DEFAULT 0 NOT NULL,
    location character varying(128),
    durationp real,
    label character varying(255) NOT NULL,
    note text,
    calling_duration integer,
    email_subject character varying(255),
    email_msgid character varying(255),
    email_from character varying(255),
    email_sender character varying(255),
    email_to character varying(255),
    email_tocc character varying(255),
    email_tobcc character varying(255),
    errors_to character varying(255),
    reply_to character varying(255),
    recurid character varying(128),
    recurrule character varying(128),
    recurdateend timestamp without time zone,
    num_vote integer,
    event_paid smallint DEFAULT 0 NOT NULL,
    status smallint DEFAULT 0 NOT NULL,
    fk_element integer,
    elementtype character varying(255) DEFAULT NULL::character varying,
    ip character varying(250),
    fk_bookcal_calendar integer,
    import_key character varying(14),
    extraparams character varying(255)
);


ALTER TABLE public.llx_actioncomm OWNER TO dolibarr;

--
-- Name: llx_actioncomm_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_actioncomm_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_actioncomm_extrafields OWNER TO dolibarr;

--
-- Name: llx_actioncomm_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_actioncomm_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_actioncomm_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_actioncomm_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_actioncomm_extrafields_rowid_seq OWNED BY public.llx_actioncomm_extrafields.rowid;


--
-- Name: llx_actioncomm_id_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_actioncomm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_actioncomm_id_seq OWNER TO dolibarr;

--
-- Name: llx_actioncomm_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_actioncomm_id_seq OWNED BY public.llx_actioncomm.id;


--
-- Name: llx_actioncomm_reminder; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_actioncomm_reminder (
    rowid integer NOT NULL,
    dateremind timestamp without time zone,
    typeremind character varying(32) NOT NULL,
    fk_user integer NOT NULL,
    offsetvalue integer NOT NULL,
    offsetunit character varying(1) NOT NULL,
    status integer DEFAULT 0 NOT NULL,
    datedone timestamp without time zone,
    lasterror character varying(128),
    entity integer DEFAULT 1 NOT NULL,
    fk_actioncomm integer NOT NULL,
    fk_email_template integer
);


ALTER TABLE public.llx_actioncomm_reminder OWNER TO dolibarr;

--
-- Name: llx_actioncomm_reminder_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_actioncomm_reminder_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_actioncomm_reminder_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_actioncomm_reminder_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_actioncomm_reminder_rowid_seq OWNED BY public.llx_actioncomm_reminder.rowid;


--
-- Name: llx_actioncomm_resources; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_actioncomm_resources (
    rowid integer NOT NULL,
    fk_actioncomm integer NOT NULL,
    element_type character varying(50) NOT NULL,
    fk_element integer NOT NULL,
    answer_status character varying(50),
    mandatory smallint,
    transparency smallint DEFAULT 1
);


ALTER TABLE public.llx_actioncomm_resources OWNER TO dolibarr;

--
-- Name: llx_actioncomm_resources_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_actioncomm_resources_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_actioncomm_resources_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_actioncomm_resources_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_actioncomm_resources_rowid_seq OWNED BY public.llx_actioncomm_resources.rowid;


--
-- Name: llx_adherent; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_adherent (
    rowid integer NOT NULL,
    ref character varying(30) NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    ref_ext character varying(128),
    gender character varying(10),
    civility character varying(6),
    lastname character varying(50),
    firstname character varying(50),
    login character varying(50),
    pass character varying(50),
    pass_crypted character varying(128),
    fk_adherent_type integer NOT NULL,
    morphy character varying(3) NOT NULL,
    societe character varying(128),
    fk_soc integer,
    address text,
    zip character varying(30),
    town character varying(50),
    state_id integer,
    country integer,
    email character varying(255),
    url character varying(255),
    socialnetworks text,
    phone character varying(30),
    phone_perso character varying(30),
    phone_mobile character varying(30),
    birth date,
    photo character varying(255),
    statut smallint DEFAULT 0 NOT NULL,
    public smallint DEFAULT 0 NOT NULL,
    datefin timestamp without time zone,
    default_lang character varying(6) DEFAULT NULL::character varying,
    note_private text,
    note_public text,
    model_pdf character varying(255),
    datevalid timestamp without time zone,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_user_author integer,
    fk_user_mod integer,
    fk_user_valid integer,
    canvas character varying(32),
    ip character varying(250),
    import_key character varying(14)
);


ALTER TABLE public.llx_adherent OWNER TO dolibarr;

--
-- Name: llx_adherent_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_adherent_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_adherent_extrafields OWNER TO dolibarr;

--
-- Name: llx_adherent_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_adherent_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_adherent_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_adherent_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_adherent_extrafields_rowid_seq OWNED BY public.llx_adherent_extrafields.rowid;


--
-- Name: llx_adherent_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_adherent_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_adherent_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_adherent_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_adherent_rowid_seq OWNED BY public.llx_adherent.rowid;


--
-- Name: llx_adherent_type; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_adherent_type (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    statut smallint DEFAULT 0 NOT NULL,
    libelle character varying(50) NOT NULL,
    morphy character varying(3) NOT NULL,
    duration character varying(6) DEFAULT NULL::character varying,
    subscription character varying(3) DEFAULT '1'::character varying NOT NULL,
    amount numeric(24,8) DEFAULT NULL::numeric,
    caneditamount integer DEFAULT 0,
    vote character varying(3) DEFAULT '1'::character varying NOT NULL,
    note text,
    mail_valid text
);


ALTER TABLE public.llx_adherent_type OWNER TO dolibarr;

--
-- Name: llx_adherent_type_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_adherent_type_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_adherent_type_extrafields OWNER TO dolibarr;

--
-- Name: llx_adherent_type_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_adherent_type_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_adherent_type_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_adherent_type_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_adherent_type_extrafields_rowid_seq OWNED BY public.llx_adherent_type_extrafields.rowid;


--
-- Name: llx_adherent_type_lang; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_adherent_type_lang (
    rowid integer NOT NULL,
    fk_type integer DEFAULT 0 NOT NULL,
    lang character varying(5) DEFAULT 0 NOT NULL,
    label character varying(255) NOT NULL,
    description text,
    email text,
    import_key character varying(14) DEFAULT NULL::character varying
);


ALTER TABLE public.llx_adherent_type_lang OWNER TO dolibarr;

--
-- Name: llx_adherent_type_lang_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_adherent_type_lang_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_adherent_type_lang_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_adherent_type_lang_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_adherent_type_lang_rowid_seq OWNED BY public.llx_adherent_type_lang.rowid;


--
-- Name: llx_adherent_type_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_adherent_type_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_adherent_type_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_adherent_type_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_adherent_type_rowid_seq OWNED BY public.llx_adherent_type.rowid;


--
-- Name: llx_bank; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_bank (
    rowid integer NOT NULL,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    datev date,
    dateo date,
    amount numeric(24,8) DEFAULT 0 NOT NULL,
    amount_main_currency numeric(24,8),
    label character varying(255),
    fk_account integer,
    fk_user_author integer,
    fk_user_rappro integer,
    fk_type character varying(6),
    num_releve character varying(50),
    num_chq character varying(50),
    numero_compte character varying(32),
    rappro smallint DEFAULT 0,
    note text,
    fk_bordereau integer DEFAULT 0,
    "position" integer DEFAULT 0,
    banque character varying(255),
    emetteur character varying(255),
    author character varying(40),
    origin_id integer,
    origin_type character varying(64),
    import_key character varying(14)
);


ALTER TABLE public.llx_bank OWNER TO dolibarr;

--
-- Name: llx_bank_account; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_bank_account (
    rowid integer NOT NULL,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    ref character varying(12) NOT NULL,
    label character varying(50) NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    fk_user_author integer,
    fk_user_modif integer,
    bank character varying(60),
    code_banque character varying(128),
    code_guichet character varying(6),
    number character varying(255),
    cle_rib character varying(5),
    bic character varying(11),
    bic_intermediate character varying(11),
    iban_prefix character varying(100),
    country_iban character varying(2),
    cle_iban character varying(2),
    domiciliation character varying(255),
    pti_in_ctti smallint DEFAULT 0,
    state_id integer,
    fk_pays integer NOT NULL,
    proprio character varying(60),
    owner_address character varying(255),
    owner_zip character varying(25),
    owner_town character varying(50),
    owner_country_id integer,
    courant smallint DEFAULT 0 NOT NULL,
    clos smallint DEFAULT 0 NOT NULL,
    rappro smallint DEFAULT 1,
    url character varying(128),
    account_number character varying(32),
    fk_accountancy_journal integer,
    currency_code character varying(3) NOT NULL,
    min_allowed integer DEFAULT 0,
    min_desired integer DEFAULT 0,
    comment text,
    note_public text,
    model_pdf character varying(255),
    import_key character varying(14),
    extraparams character varying(255),
    ics character varying(32),
    ics_transfer character varying(32)
);


ALTER TABLE public.llx_bank_account OWNER TO dolibarr;

--
-- Name: llx_bank_account_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_bank_account_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_bank_account_extrafields OWNER TO dolibarr;

--
-- Name: llx_bank_account_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_bank_account_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_bank_account_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_bank_account_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_bank_account_extrafields_rowid_seq OWNED BY public.llx_bank_account_extrafields.rowid;


--
-- Name: llx_bank_account_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_bank_account_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_bank_account_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_bank_account_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_bank_account_rowid_seq OWNED BY public.llx_bank_account.rowid;


--
-- Name: llx_bank_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_bank_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_bank_extrafields OWNER TO dolibarr;

--
-- Name: llx_bank_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_bank_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_bank_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_bank_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_bank_extrafields_rowid_seq OWNED BY public.llx_bank_extrafields.rowid;


--
-- Name: llx_bank_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_bank_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_bank_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_bank_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_bank_rowid_seq OWNED BY public.llx_bank.rowid;


--
-- Name: llx_bank_url; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_bank_url (
    rowid integer NOT NULL,
    fk_bank integer,
    url_id integer,
    url character varying(255),
    label character varying(255),
    type character varying(24) NOT NULL
);


ALTER TABLE public.llx_bank_url OWNER TO dolibarr;

--
-- Name: llx_bank_url_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_bank_url_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_bank_url_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_bank_url_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_bank_url_rowid_seq OWNED BY public.llx_bank_url.rowid;


--
-- Name: llx_blockedlog; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_blockedlog (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    date_creation timestamp without time zone,
    action character varying(50),
    amounts numeric(24,8) NOT NULL,
    ref_object character varying(255),
    date_object timestamp without time zone,
    user_fullname character varying(255),
    object_data text,
    signature character varying(100) NOT NULL,
    element character varying(50),
    fk_user integer,
    fk_object integer,
    signature_line character varying(100) NOT NULL,
    object_version character varying(32) DEFAULT ''::character varying,
    certified integer,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    debuginfo text
);


ALTER TABLE public.llx_blockedlog OWNER TO dolibarr;

--
-- Name: llx_blockedlog_authority; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_blockedlog_authority (
    rowid integer NOT NULL,
    blockchain text NOT NULL,
    signature character varying(100) NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.llx_blockedlog_authority OWNER TO dolibarr;

--
-- Name: llx_blockedlog_authority_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_blockedlog_authority_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_blockedlog_authority_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_blockedlog_authority_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_blockedlog_authority_rowid_seq OWNED BY public.llx_blockedlog_authority.rowid;


--
-- Name: llx_blockedlog_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_blockedlog_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_blockedlog_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_blockedlog_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_blockedlog_rowid_seq OWNED BY public.llx_blockedlog.rowid;


--
-- Name: llx_bookmark; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_bookmark (
    rowid integer NOT NULL,
    fk_user integer NOT NULL,
    dateb timestamp without time zone,
    url text,
    target character varying(16),
    title character varying(64),
    favicon character varying(24),
    "position" integer DEFAULT 0,
    entity integer DEFAULT 1 NOT NULL
);


ALTER TABLE public.llx_bookmark OWNER TO dolibarr;

--
-- Name: llx_bookmark_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_bookmark_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_bookmark_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_bookmark_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_bookmark_rowid_seq OWNED BY public.llx_bookmark.rowid;


--
-- Name: llx_bordereau_cheque; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_bordereau_cheque (
    rowid integer NOT NULL,
    ref character varying(30) NOT NULL,
    label character varying(255),
    ref_ext character varying(255),
    type character varying(6) DEFAULT 'CHQ'::character varying,
    datec timestamp without time zone,
    date_bordereau date,
    amount numeric(24,8) NOT NULL,
    nbcheque smallint NOT NULL,
    fk_bank_account integer,
    fk_user_author integer,
    statut smallint DEFAULT 0 NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    note text,
    entity integer DEFAULT 1 NOT NULL
);


ALTER TABLE public.llx_bordereau_cheque OWNER TO dolibarr;

--
-- Name: llx_bordereau_cheque_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_bordereau_cheque_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_bordereau_cheque_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_bordereau_cheque_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_bordereau_cheque_rowid_seq OWNED BY public.llx_bordereau_cheque.rowid;


--
-- Name: llx_boxes; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_boxes (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    box_id integer NOT NULL,
    "position" smallint NOT NULL,
    box_order character varying(3) NOT NULL,
    fk_user integer DEFAULT 0 NOT NULL,
    maxline integer,
    params character varying(255)
);


ALTER TABLE public.llx_boxes OWNER TO dolibarr;

--
-- Name: llx_boxes_def; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_boxes_def (
    rowid integer NOT NULL,
    file character varying(200) NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    fk_user integer DEFAULT 0 NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    note character varying(130)
);


ALTER TABLE public.llx_boxes_def OWNER TO dolibarr;

--
-- Name: llx_boxes_def_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_boxes_def_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_boxes_def_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_boxes_def_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_boxes_def_rowid_seq OWNED BY public.llx_boxes_def.rowid;


--
-- Name: llx_boxes_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_boxes_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_boxes_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_boxes_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_boxes_rowid_seq OWNED BY public.llx_boxes.rowid;


--
-- Name: llx_c_action_trigger; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_action_trigger (
    rowid integer NOT NULL,
    elementtype character varying(64) NOT NULL,
    code character varying(128) NOT NULL,
    contexts character varying(255),
    label character varying(128) NOT NULL,
    description character varying(255),
    rang integer DEFAULT 0
);


ALTER TABLE public.llx_c_action_trigger OWNER TO dolibarr;

--
-- Name: llx_c_action_trigger_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_action_trigger_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_action_trigger_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_action_trigger_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_action_trigger_rowid_seq OWNED BY public.llx_c_action_trigger.rowid;


--
-- Name: llx_c_actioncomm; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_actioncomm (
    id integer NOT NULL,
    code character varying(50) NOT NULL,
    type character varying(50) DEFAULT 'system'::character varying NOT NULL,
    libelle character varying(128) NOT NULL,
    module character varying(50) DEFAULT NULL::character varying,
    active smallint DEFAULT 1 NOT NULL,
    todo smallint,
    color character varying(9),
    picto character varying(48),
    "position" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.llx_c_actioncomm OWNER TO dolibarr;

--
-- Name: llx_c_availability; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_availability (
    rowid integer NOT NULL,
    code character varying(30) NOT NULL,
    label character varying(128) NOT NULL,
    type_duration character varying(1),
    qty real,
    active smallint DEFAULT 1 NOT NULL,
    "position" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.llx_c_availability OWNER TO dolibarr;

--
-- Name: llx_c_availability_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_availability_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_availability_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_availability_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_availability_rowid_seq OWNED BY public.llx_c_availability.rowid;


--
-- Name: llx_c_barcode_type; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_barcode_type (
    rowid integer NOT NULL,
    code character varying(16) NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    libelle character varying(128) NOT NULL,
    coder character varying(16) NOT NULL,
    example character varying(16) NOT NULL
);


ALTER TABLE public.llx_c_barcode_type OWNER TO dolibarr;

--
-- Name: llx_c_barcode_type_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_barcode_type_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_barcode_type_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_barcode_type_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_barcode_type_rowid_seq OWNED BY public.llx_c_barcode_type.rowid;


--
-- Name: llx_c_chargesociales; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_chargesociales (
    id integer NOT NULL,
    libelle character varying(128),
    deductible smallint DEFAULT 0 NOT NULL,
    active smallint DEFAULT 1 NOT NULL,
    code character varying(24) NOT NULL,
    accountancy_code character varying(32) DEFAULT NULL::character varying,
    fk_pays integer DEFAULT 1 NOT NULL,
    module character varying(32)
);


ALTER TABLE public.llx_c_chargesociales OWNER TO dolibarr;

--
-- Name: llx_c_chargesociales_id_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_chargesociales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_chargesociales_id_seq OWNER TO dolibarr;

--
-- Name: llx_c_chargesociales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_chargesociales_id_seq OWNED BY public.llx_c_chargesociales.id;


--
-- Name: llx_c_civility; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_civility (
    rowid integer NOT NULL,
    code character varying(6) NOT NULL,
    label character varying(128),
    active smallint DEFAULT 1 NOT NULL,
    module character varying(32)
);


ALTER TABLE public.llx_c_civility OWNER TO dolibarr;

--
-- Name: llx_c_civility_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_civility_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_civility_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_civility_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_civility_rowid_seq OWNED BY public.llx_c_civility.rowid;


--
-- Name: llx_c_country; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_country (
    rowid integer NOT NULL,
    code character varying(2) NOT NULL,
    code_iso character varying(3),
    numeric_code character varying(3),
    label character varying(128) NOT NULL,
    eec smallint DEFAULT 0 NOT NULL,
    sepa smallint DEFAULT 0 NOT NULL,
    active smallint DEFAULT 1 NOT NULL,
    favorite smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.llx_c_country OWNER TO dolibarr;

--
-- Name: llx_c_currencies; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_currencies (
    code_iso character varying(3) NOT NULL,
    label character varying(128) NOT NULL,
    unicode character varying(32) DEFAULT NULL::character varying,
    active smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.llx_c_currencies OWNER TO dolibarr;

--
-- Name: llx_c_departements; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_departements (
    rowid integer NOT NULL,
    code_departement character varying(6) NOT NULL,
    fk_region integer,
    cheflieu character varying(50),
    tncc integer,
    ncc character varying(50),
    nom character varying(50),
    active smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.llx_c_departements OWNER TO dolibarr;

--
-- Name: llx_c_departements_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_departements_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_departements_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_departements_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_departements_rowid_seq OWNED BY public.llx_c_departements.rowid;


--
-- Name: llx_c_ecotaxe; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_ecotaxe (
    rowid integer NOT NULL,
    code character varying(64) NOT NULL,
    label character varying(255),
    price numeric(24,8),
    organization character varying(255),
    fk_pays integer NOT NULL,
    active smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.llx_c_ecotaxe OWNER TO dolibarr;

--
-- Name: llx_c_ecotaxe_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_ecotaxe_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_ecotaxe_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_ecotaxe_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_ecotaxe_rowid_seq OWNED BY public.llx_c_ecotaxe.rowid;


--
-- Name: llx_c_effectif; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_effectif (
    id integer NOT NULL,
    code character varying(12) NOT NULL,
    libelle character varying(128),
    active smallint DEFAULT 1 NOT NULL,
    module character varying(32)
);


ALTER TABLE public.llx_c_effectif OWNER TO dolibarr;

--
-- Name: llx_c_email_senderprofile; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_email_senderprofile (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    private smallint DEFAULT 0 NOT NULL,
    date_creation timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    label character varying(255),
    email character varying(255) NOT NULL,
    signature text,
    "position" smallint DEFAULT 0,
    active smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.llx_c_email_senderprofile OWNER TO dolibarr;

--
-- Name: llx_c_email_senderprofile_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_email_senderprofile_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_email_senderprofile_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_email_senderprofile_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_email_senderprofile_rowid_seq OWNED BY public.llx_c_email_senderprofile.rowid;


--
-- Name: llx_c_email_templates; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_email_templates (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    module character varying(32),
    type_template character varying(32),
    lang character varying(6) DEFAULT ''::character varying,
    private smallint DEFAULT 0 NOT NULL,
    fk_user integer,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    label character varying(180),
    "position" smallint,
    defaultfortype smallint DEFAULT 0,
    enabled character varying(255) DEFAULT '1'::character varying,
    active smallint DEFAULT 1 NOT NULL,
    email_from character varying(255),
    email_to character varying(255),
    email_tocc character varying(255),
    email_tobcc character varying(255),
    topic text,
    joinfiles text,
    content text,
    content_lines text
);


ALTER TABLE public.llx_c_email_templates OWNER TO dolibarr;

--
-- Name: llx_c_email_templates_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_email_templates_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_email_templates_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_email_templates_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_email_templates_rowid_seq OWNED BY public.llx_c_email_templates.rowid;


--
-- Name: llx_c_field_list; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_field_list (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    element character varying(64) NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    name character varying(32) NOT NULL,
    alias character varying(32) NOT NULL,
    title character varying(32) NOT NULL,
    align character varying(6) DEFAULT 'left'::character varying,
    sort smallint DEFAULT 1 NOT NULL,
    search smallint DEFAULT 0 NOT NULL,
    visible smallint DEFAULT 1 NOT NULL,
    enabled character varying(255) DEFAULT 1,
    rang integer DEFAULT 0
);


ALTER TABLE public.llx_c_field_list OWNER TO dolibarr;

--
-- Name: llx_c_field_list_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_field_list_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_field_list_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_field_list_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_field_list_rowid_seq OWNED BY public.llx_c_field_list.rowid;


--
-- Name: llx_c_format_cards; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_format_cards (
    rowid integer NOT NULL,
    code character varying(50) NOT NULL,
    name character varying(50) NOT NULL,
    paper_size character varying(20) NOT NULL,
    orientation character varying(1) NOT NULL,
    metric character varying(5) NOT NULL,
    leftmargin numeric(24,8) NOT NULL,
    topmargin numeric(24,8) NOT NULL,
    nx integer NOT NULL,
    ny integer NOT NULL,
    spacex numeric(24,8) NOT NULL,
    spacey numeric(24,8) NOT NULL,
    width numeric(24,8) NOT NULL,
    height numeric(24,8) NOT NULL,
    font_size integer NOT NULL,
    custom_x numeric(24,8) NOT NULL,
    custom_y numeric(24,8) NOT NULL,
    active integer NOT NULL
);


ALTER TABLE public.llx_c_format_cards OWNER TO dolibarr;

--
-- Name: llx_c_format_cards_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_format_cards_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_format_cards_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_format_cards_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_format_cards_rowid_seq OWNED BY public.llx_c_format_cards.rowid;


--
-- Name: llx_c_forme_juridique; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_forme_juridique (
    rowid integer NOT NULL,
    code integer NOT NULL,
    fk_pays integer NOT NULL,
    libelle character varying(255),
    isvatexempted smallint DEFAULT 0 NOT NULL,
    active smallint DEFAULT 1 NOT NULL,
    module character varying(32),
    "position" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.llx_c_forme_juridique OWNER TO dolibarr;

--
-- Name: llx_c_forme_juridique_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_forme_juridique_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_forme_juridique_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_forme_juridique_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_forme_juridique_rowid_seq OWNED BY public.llx_c_forme_juridique.rowid;


--
-- Name: llx_c_holiday_types; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_holiday_types (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    code character varying(16) NOT NULL,
    label character varying(255) NOT NULL,
    affect integer NOT NULL,
    delay integer NOT NULL,
    newbymonth numeric(8,5) DEFAULT 0 NOT NULL,
    fk_country integer,
    block_if_negative integer DEFAULT 0 NOT NULL,
    sortorder smallint,
    active integer DEFAULT 1
);


ALTER TABLE public.llx_c_holiday_types OWNER TO dolibarr;

--
-- Name: llx_c_holiday_types_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_holiday_types_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_holiday_types_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_holiday_types_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_holiday_types_rowid_seq OWNED BY public.llx_c_holiday_types.rowid;


--
-- Name: llx_c_hrm_department; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_hrm_department (
    rowid integer NOT NULL,
    pos smallint DEFAULT 0 NOT NULL,
    code character varying(16) NOT NULL,
    label character varying(128),
    active smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.llx_c_hrm_department OWNER TO dolibarr;

--
-- Name: llx_c_hrm_function; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_hrm_function (
    rowid integer NOT NULL,
    pos smallint DEFAULT 0 NOT NULL,
    code character varying(16) NOT NULL,
    label character varying(128),
    c_level smallint DEFAULT 0 NOT NULL,
    active smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.llx_c_hrm_function OWNER TO dolibarr;

--
-- Name: llx_c_hrm_public_holiday; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_hrm_public_holiday (
    id integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    fk_country integer,
    fk_departement integer,
    code character varying(62),
    dayrule character varying(64) DEFAULT ''::character varying,
    day integer,
    month integer,
    year integer,
    active integer DEFAULT 1,
    import_key character varying(14)
);


ALTER TABLE public.llx_c_hrm_public_holiday OWNER TO dolibarr;

--
-- Name: llx_c_hrm_public_holiday_id_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_hrm_public_holiday_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_hrm_public_holiday_id_seq OWNER TO dolibarr;

--
-- Name: llx_c_hrm_public_holiday_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_hrm_public_holiday_id_seq OWNED BY public.llx_c_hrm_public_holiday.id;


--
-- Name: llx_c_incoterms; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_incoterms (
    rowid integer NOT NULL,
    code character varying(3) NOT NULL,
    label character varying(100),
    libelle character varying(255) NOT NULL,
    active smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.llx_c_incoterms OWNER TO dolibarr;

--
-- Name: llx_c_incoterms_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_incoterms_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_incoterms_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_incoterms_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_incoterms_rowid_seq OWNED BY public.llx_c_incoterms.rowid;


--
-- Name: llx_c_input_method; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_input_method (
    rowid integer NOT NULL,
    code character varying(30),
    libelle character varying(128),
    active smallint DEFAULT 1 NOT NULL,
    module character varying(32)
);


ALTER TABLE public.llx_c_input_method OWNER TO dolibarr;

--
-- Name: llx_c_input_method_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_input_method_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_input_method_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_input_method_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_input_method_rowid_seq OWNED BY public.llx_c_input_method.rowid;


--
-- Name: llx_c_input_reason; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_input_reason (
    rowid integer NOT NULL,
    code character varying(30),
    label character varying(128),
    active smallint DEFAULT 1 NOT NULL,
    module character varying(32)
);


ALTER TABLE public.llx_c_input_reason OWNER TO dolibarr;

--
-- Name: llx_c_input_reason_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_input_reason_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_input_reason_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_input_reason_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_input_reason_rowid_seq OWNED BY public.llx_c_input_reason.rowid;


--
-- Name: llx_c_invoice_subtype; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_invoice_subtype (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    fk_country integer NOT NULL,
    code character varying(5) NOT NULL,
    label character varying(200),
    active smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.llx_c_invoice_subtype OWNER TO dolibarr;

--
-- Name: llx_c_invoice_subtype_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_invoice_subtype_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_invoice_subtype_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_invoice_subtype_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_invoice_subtype_rowid_seq OWNED BY public.llx_c_invoice_subtype.rowid;


--
-- Name: llx_c_lead_status; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_lead_status (
    rowid integer NOT NULL,
    code character varying(10),
    label character varying(128),
    "position" integer,
    percent numeric(5,2),
    active smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.llx_c_lead_status OWNER TO dolibarr;

--
-- Name: llx_c_lead_status_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_lead_status_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_lead_status_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_lead_status_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_lead_status_rowid_seq OWNED BY public.llx_c_lead_status.rowid;


--
-- Name: llx_c_paiement; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_paiement (
    id integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    code character varying(6) NOT NULL,
    libelle character varying(128),
    type smallint,
    active smallint DEFAULT 1 NOT NULL,
    accountancy_code character varying(32),
    module character varying(32),
    "position" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.llx_c_paiement OWNER TO dolibarr;

--
-- Name: llx_c_paiement_id_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_paiement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_paiement_id_seq OWNER TO dolibarr;

--
-- Name: llx_c_paiement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_paiement_id_seq OWNED BY public.llx_c_paiement.id;


--
-- Name: llx_c_paper_format; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_paper_format (
    rowid integer NOT NULL,
    code character varying(16) NOT NULL,
    label character varying(128) NOT NULL,
    width numeric(6,2) DEFAULT 0,
    height numeric(6,2) DEFAULT 0,
    unit character varying(5) NOT NULL,
    active smallint DEFAULT 1 NOT NULL,
    module character varying(32)
);


ALTER TABLE public.llx_c_paper_format OWNER TO dolibarr;

--
-- Name: llx_c_paper_format_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_paper_format_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_paper_format_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_paper_format_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_paper_format_rowid_seq OWNED BY public.llx_c_paper_format.rowid;


--
-- Name: llx_c_payment_term; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_payment_term (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    code character varying(16),
    sortorder smallint,
    active smallint DEFAULT 1,
    libelle character varying(255),
    libelle_facture text,
    type_cdr smallint,
    nbjour smallint,
    decalage smallint,
    deposit_percent character varying(63) DEFAULT NULL::character varying,
    module character varying(32),
    "position" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.llx_c_payment_term OWNER TO dolibarr;

--
-- Name: llx_c_payment_term_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_payment_term_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_payment_term_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_payment_term_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_payment_term_rowid_seq OWNED BY public.llx_c_payment_term.rowid;


--
-- Name: llx_c_product_nature; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_product_nature (
    rowid integer NOT NULL,
    code smallint NOT NULL,
    label character varying(128),
    active smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.llx_c_product_nature OWNER TO dolibarr;

--
-- Name: llx_c_product_nature_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_product_nature_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_product_nature_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_product_nature_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_product_nature_rowid_seq OWNED BY public.llx_c_product_nature.rowid;


--
-- Name: llx_c_product_thirdparty_relation_type; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_product_thirdparty_relation_type (
    rowid integer NOT NULL,
    code character varying(24) NOT NULL,
    label character varying(128),
    active smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.llx_c_product_thirdparty_relation_type OWNER TO dolibarr;

--
-- Name: llx_c_product_thirdparty_relation_type_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_product_thirdparty_relation_type_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_product_thirdparty_relation_type_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_product_thirdparty_relation_type_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_product_thirdparty_relation_type_rowid_seq OWNED BY public.llx_c_product_thirdparty_relation_type.rowid;


--
-- Name: llx_c_propalst; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_propalst (
    id smallint NOT NULL,
    code character varying(12) NOT NULL,
    label character varying(128),
    sortorder smallint DEFAULT 0,
    active smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.llx_c_propalst OWNER TO dolibarr;

--
-- Name: llx_c_prospectcontactlevel; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_prospectcontactlevel (
    code character varying(12) NOT NULL,
    label character varying(128),
    sortorder smallint,
    active smallint DEFAULT 1 NOT NULL,
    module character varying(32)
);


ALTER TABLE public.llx_c_prospectcontactlevel OWNER TO dolibarr;

--
-- Name: llx_c_prospectlevel; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_prospectlevel (
    code character varying(12) NOT NULL,
    label character varying(128),
    sortorder smallint,
    active smallint DEFAULT 1 NOT NULL,
    module character varying(32)
);


ALTER TABLE public.llx_c_prospectlevel OWNER TO dolibarr;

--
-- Name: llx_c_regions; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_regions (
    rowid integer NOT NULL,
    code_region integer NOT NULL,
    fk_pays integer NOT NULL,
    cheflieu character varying(50),
    tncc integer,
    nom character varying(100),
    active smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.llx_c_regions OWNER TO dolibarr;

--
-- Name: llx_c_regions_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_regions_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_regions_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_regions_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_regions_rowid_seq OWNED BY public.llx_c_regions.rowid;


--
-- Name: llx_c_revenuestamp; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_revenuestamp (
    rowid integer NOT NULL,
    fk_pays integer NOT NULL,
    taux numeric NOT NULL,
    revenuestamp_type character varying(16) DEFAULT 'fixed'::character varying NOT NULL,
    note character varying(128),
    active smallint DEFAULT 1 NOT NULL,
    accountancy_code_sell character varying(32) DEFAULT NULL::character varying,
    accountancy_code_buy character varying(32) DEFAULT NULL::character varying
);


ALTER TABLE public.llx_c_revenuestamp OWNER TO dolibarr;

--
-- Name: llx_c_revenuestamp_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_revenuestamp_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_revenuestamp_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_revenuestamp_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_revenuestamp_rowid_seq OWNED BY public.llx_c_revenuestamp.rowid;


--
-- Name: llx_c_shipment_mode; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_shipment_mode (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    code character varying(30) NOT NULL,
    libelle character varying(128) NOT NULL,
    description text,
    tracking character varying(255),
    active smallint DEFAULT 0,
    module character varying(32)
);


ALTER TABLE public.llx_c_shipment_mode OWNER TO dolibarr;

--
-- Name: llx_c_shipment_mode_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_shipment_mode_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_shipment_mode_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_shipment_mode_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_shipment_mode_rowid_seq OWNED BY public.llx_c_shipment_mode.rowid;


--
-- Name: llx_c_shipment_package_type; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_shipment_package_type (
    rowid integer NOT NULL,
    label character varying(128) NOT NULL,
    description character varying(255),
    active integer DEFAULT 1 NOT NULL,
    entity integer DEFAULT 1 NOT NULL
);


ALTER TABLE public.llx_c_shipment_package_type OWNER TO dolibarr;

--
-- Name: llx_c_shipment_package_type_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_shipment_package_type_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_shipment_package_type_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_shipment_package_type_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_shipment_package_type_rowid_seq OWNED BY public.llx_c_shipment_package_type.rowid;


--
-- Name: llx_c_socialnetworks; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_socialnetworks (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    code character varying(100),
    label character varying(150),
    url text,
    icon character varying(20),
    active smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.llx_c_socialnetworks OWNER TO dolibarr;

--
-- Name: llx_c_socialnetworks_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_socialnetworks_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_socialnetworks_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_socialnetworks_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_socialnetworks_rowid_seq OWNED BY public.llx_c_socialnetworks.rowid;


--
-- Name: llx_c_stcomm; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_stcomm (
    id integer NOT NULL,
    code character varying(24) NOT NULL,
    libelle character varying(128),
    picto character varying(128),
    sortorder smallint DEFAULT 0,
    active smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.llx_c_stcomm OWNER TO dolibarr;

--
-- Name: llx_c_stcommcontact; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_stcommcontact (
    id integer NOT NULL,
    code character varying(12) NOT NULL,
    libelle character varying(128),
    picto character varying(128),
    active smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.llx_c_stcommcontact OWNER TO dolibarr;

--
-- Name: llx_c_transport_mode; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_transport_mode (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    code character varying(3) NOT NULL,
    label character varying(255) NOT NULL,
    active smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.llx_c_transport_mode OWNER TO dolibarr;

--
-- Name: llx_c_transport_mode_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_transport_mode_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_transport_mode_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_transport_mode_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_transport_mode_rowid_seq OWNED BY public.llx_c_transport_mode.rowid;


--
-- Name: llx_c_tva; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_tva (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    fk_pays integer NOT NULL,
    fk_department_buyer integer,
    code character varying(10) DEFAULT ''::character varying,
    type_vat smallint DEFAULT 0 NOT NULL,
    taux numeric NOT NULL,
    localtax1 character varying(20) DEFAULT '0'::character varying NOT NULL,
    localtax1_type character varying(10) DEFAULT '0'::character varying NOT NULL,
    localtax2 character varying(20) DEFAULT '0'::character varying NOT NULL,
    localtax2_type character varying(10) DEFAULT '0'::character varying NOT NULL,
    use_default smallint DEFAULT 0,
    recuperableonly integer DEFAULT 0 NOT NULL,
    note character varying(128),
    active smallint DEFAULT 1 NOT NULL,
    accountancy_code_sell character varying(32) DEFAULT NULL::character varying,
    accountancy_code_buy character varying(32) DEFAULT NULL::character varying
);


ALTER TABLE public.llx_c_tva OWNER TO dolibarr;

--
-- Name: llx_c_tva_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_tva_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_tva_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_tva_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_tva_rowid_seq OWNED BY public.llx_c_tva.rowid;


--
-- Name: llx_c_type_contact; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_type_contact (
    rowid integer NOT NULL,
    element character varying(64) NOT NULL,
    source character varying(8) DEFAULT 'external'::character varying NOT NULL,
    code character varying(32) NOT NULL,
    libelle character varying(128) NOT NULL,
    active smallint DEFAULT 1 NOT NULL,
    module character varying(32),
    "position" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.llx_c_type_contact OWNER TO dolibarr;

--
-- Name: llx_c_type_contact_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_type_contact_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_type_contact_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_type_contact_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_type_contact_rowid_seq OWNED BY public.llx_c_type_contact.rowid;


--
-- Name: llx_c_type_fees; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_type_fees (
    id integer NOT NULL,
    code character varying(12) NOT NULL,
    label character varying(128),
    type integer DEFAULT 0,
    accountancy_code character varying(32),
    active smallint DEFAULT 1 NOT NULL,
    module character varying(32),
    "position" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.llx_c_type_fees OWNER TO dolibarr;

--
-- Name: llx_c_type_fees_id_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_type_fees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_type_fees_id_seq OWNER TO dolibarr;

--
-- Name: llx_c_type_fees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_type_fees_id_seq OWNED BY public.llx_c_type_fees.id;


--
-- Name: llx_c_type_resource; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_type_resource (
    rowid integer NOT NULL,
    code character varying(32) NOT NULL,
    label character varying(128) NOT NULL,
    active smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.llx_c_type_resource OWNER TO dolibarr;

--
-- Name: llx_c_type_resource_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_type_resource_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_type_resource_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_type_resource_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_type_resource_rowid_seq OWNED BY public.llx_c_type_resource.rowid;


--
-- Name: llx_c_typent; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_typent (
    id integer NOT NULL,
    code character varying(12) NOT NULL,
    libelle character varying(128),
    fk_country integer,
    active smallint DEFAULT 1 NOT NULL,
    module character varying(32),
    "position" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.llx_c_typent OWNER TO dolibarr;

--
-- Name: llx_c_units; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_units (
    rowid integer NOT NULL,
    code character varying(3),
    sortorder smallint,
    scale integer,
    label character varying(128),
    short_label character varying(5),
    unit_type character varying(10),
    active smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.llx_c_units OWNER TO dolibarr;

--
-- Name: llx_c_units_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_units_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_units_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_units_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_units_rowid_seq OWNED BY public.llx_c_units.rowid;


--
-- Name: llx_c_ziptown; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_c_ziptown (
    rowid integer NOT NULL,
    code character varying(5) DEFAULT NULL::character varying,
    fk_county integer,
    fk_pays integer DEFAULT 0 NOT NULL,
    zip character varying(10) NOT NULL,
    town character varying(180) NOT NULL,
    town_up character varying(180),
    active smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.llx_c_ziptown OWNER TO dolibarr;

--
-- Name: llx_c_ziptown_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_c_ziptown_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_c_ziptown_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_c_ziptown_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_c_ziptown_rowid_seq OWNED BY public.llx_c_ziptown.rowid;


--
-- Name: llx_categorie; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_categorie (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    fk_parent integer DEFAULT 0 NOT NULL,
    label character varying(180) NOT NULL,
    ref_ext character varying(255),
    type integer DEFAULT 1 NOT NULL,
    description text,
    color character varying(8),
    "position" integer DEFAULT 0,
    fk_soc integer,
    visible smallint DEFAULT 1 NOT NULL,
    date_creation timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_user_creat integer,
    fk_user_modif integer,
    import_key character varying(14)
);


ALTER TABLE public.llx_categorie OWNER TO dolibarr;

--
-- Name: llx_categorie_account; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_categorie_account (
    fk_categorie integer NOT NULL,
    fk_account integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_categorie_account OWNER TO dolibarr;

--
-- Name: llx_categorie_actioncomm; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_categorie_actioncomm (
    fk_categorie integer NOT NULL,
    fk_actioncomm integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_categorie_actioncomm OWNER TO dolibarr;

--
-- Name: llx_categorie_contact; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_categorie_contact (
    fk_categorie integer NOT NULL,
    fk_socpeople integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_categorie_contact OWNER TO dolibarr;

--
-- Name: llx_categorie_fournisseur; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_categorie_fournisseur (
    fk_categorie integer NOT NULL,
    fk_soc integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_categorie_fournisseur OWNER TO dolibarr;

--
-- Name: llx_categorie_lang; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_categorie_lang (
    rowid integer NOT NULL,
    fk_category integer DEFAULT 0 NOT NULL,
    lang character varying(5) DEFAULT 0 NOT NULL,
    label character varying(255) NOT NULL,
    description text
);


ALTER TABLE public.llx_categorie_lang OWNER TO dolibarr;

--
-- Name: llx_categorie_lang_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_categorie_lang_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_categorie_lang_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_categorie_lang_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_categorie_lang_rowid_seq OWNED BY public.llx_categorie_lang.rowid;


--
-- Name: llx_categorie_member; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_categorie_member (
    fk_categorie integer NOT NULL,
    fk_member integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_categorie_member OWNER TO dolibarr;

--
-- Name: llx_categorie_product; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_categorie_product (
    fk_categorie integer NOT NULL,
    fk_product integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_categorie_product OWNER TO dolibarr;

--
-- Name: llx_categorie_project; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_categorie_project (
    fk_categorie integer NOT NULL,
    fk_project integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_categorie_project OWNER TO dolibarr;

--
-- Name: llx_categorie_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_categorie_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_categorie_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_categorie_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_categorie_rowid_seq OWNED BY public.llx_categorie.rowid;


--
-- Name: llx_categorie_societe; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_categorie_societe (
    fk_categorie integer NOT NULL,
    fk_soc integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_categorie_societe OWNER TO dolibarr;

--
-- Name: llx_categorie_supplier_invoice; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_categorie_supplier_invoice (
    fk_categorie integer NOT NULL,
    fk_supplier_invoice integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_categorie_supplier_invoice OWNER TO dolibarr;

--
-- Name: llx_categorie_supplier_order; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_categorie_supplier_order (
    fk_categorie integer NOT NULL,
    fk_supplier_order integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_categorie_supplier_order OWNER TO dolibarr;

--
-- Name: llx_categorie_user; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_categorie_user (
    fk_categorie integer NOT NULL,
    fk_user integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_categorie_user OWNER TO dolibarr;

--
-- Name: llx_categories_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_categories_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_categories_extrafields OWNER TO dolibarr;

--
-- Name: llx_categories_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_categories_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_categories_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_categories_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_categories_extrafields_rowid_seq OWNED BY public.llx_categories_extrafields.rowid;


--
-- Name: llx_category_bankline; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_category_bankline (
    lineid integer NOT NULL,
    fk_categ integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_category_bankline OWNER TO dolibarr;

--
-- Name: llx_chargesociales; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_chargesociales (
    rowid integer NOT NULL,
    ref character varying(16),
    date_ech timestamp without time zone,
    libelle character varying(80) NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    date_creation timestamp without time zone,
    date_valid timestamp without time zone,
    fk_user integer,
    fk_user_author integer,
    fk_user_modif integer,
    fk_user_valid integer,
    fk_type integer NOT NULL,
    fk_account integer,
    fk_mode_reglement integer,
    amount numeric(24,8) DEFAULT 0 NOT NULL,
    paye smallint DEFAULT 0 NOT NULL,
    periode date,
    fk_projet integer,
    note_private text,
    note_public text,
    import_key character varying(14)
);


ALTER TABLE public.llx_chargesociales OWNER TO dolibarr;

--
-- Name: llx_chargesociales_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_chargesociales_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_chargesociales_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_chargesociales_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_chargesociales_rowid_seq OWNED BY public.llx_chargesociales.rowid;


--
-- Name: llx_commande; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_commande (
    rowid integer NOT NULL,
    ref character varying(30) NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    ref_ext character varying(255),
    ref_client character varying(255),
    fk_soc integer NOT NULL,
    fk_projet integer,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    date_creation timestamp without time zone,
    date_valid timestamp without time zone,
    date_cloture timestamp without time zone,
    date_commande date,
    fk_user_author integer,
    fk_user_modif integer,
    fk_user_valid integer,
    fk_user_cloture integer,
    source smallint,
    fk_statut smallint DEFAULT 0,
    amount_ht numeric(24,8) DEFAULT 0,
    remise_percent real DEFAULT 0,
    remise_absolue real DEFAULT 0,
    remise real DEFAULT 0,
    total_tva numeric(24,8) DEFAULT 0,
    localtax1 numeric(24,8) DEFAULT 0,
    localtax2 numeric(24,8) DEFAULT 0,
    revenuestamp numeric(24,8) DEFAULT 0,
    total_ht numeric(24,8) DEFAULT 0,
    total_ttc numeric(24,8) DEFAULT 0,
    signed_status smallint,
    note_private text,
    note_public text,
    model_pdf character varying(255),
    last_main_doc character varying(255),
    module_source character varying(32),
    pos_source character varying(32),
    facture smallint DEFAULT 0,
    fk_account integer,
    fk_currency character varying(3),
    fk_cond_reglement integer,
    deposit_percent character varying(63) DEFAULT NULL::character varying,
    fk_mode_reglement integer,
    date_livraison timestamp without time zone,
    fk_shipping_method integer,
    fk_warehouse integer,
    fk_availability integer,
    fk_input_reason integer,
    fk_delivery_address integer,
    fk_incoterms integer,
    location_incoterms character varying(255),
    import_key character varying(14),
    extraparams character varying(255),
    fk_multicurrency integer,
    multicurrency_code character varying(3),
    multicurrency_tx numeric(24,8) DEFAULT 1,
    multicurrency_total_ht numeric(24,8) DEFAULT 0,
    multicurrency_total_tva numeric(24,8) DEFAULT 0,
    multicurrency_total_ttc numeric(24,8) DEFAULT 0
);


ALTER TABLE public.llx_commande OWNER TO dolibarr;

--
-- Name: llx_commande_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_commande_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_commande_extrafields OWNER TO dolibarr;

--
-- Name: llx_commande_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_commande_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_commande_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_commande_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_commande_extrafields_rowid_seq OWNED BY public.llx_commande_extrafields.rowid;


--
-- Name: llx_commande_fournisseur; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_commande_fournisseur (
    rowid integer NOT NULL,
    ref character varying(180) NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    ref_ext character varying(255),
    ref_supplier character varying(255),
    fk_soc integer NOT NULL,
    fk_projet integer DEFAULT 0,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    date_creation timestamp without time zone,
    date_valid timestamp without time zone,
    date_approve timestamp without time zone,
    date_approve2 timestamp without time zone,
    date_commande date,
    fk_user_author integer,
    fk_user_modif integer,
    fk_user_valid integer,
    fk_user_approve integer,
    fk_user_approve2 integer,
    source smallint NOT NULL,
    fk_statut smallint DEFAULT 0,
    billed smallint DEFAULT 0,
    amount_ht numeric(24,8) DEFAULT 0,
    remise_percent real DEFAULT 0,
    remise real DEFAULT 0,
    total_tva numeric(24,8) DEFAULT 0,
    localtax1 numeric(24,8) DEFAULT 0,
    localtax2 numeric(24,8) DEFAULT 0,
    total_ht numeric(24,8) DEFAULT 0,
    total_ttc numeric(24,8) DEFAULT 0,
    note_private text,
    note_public text,
    model_pdf character varying(255),
    last_main_doc character varying(255),
    date_livraison timestamp without time zone,
    fk_account integer,
    fk_cond_reglement integer,
    fk_mode_reglement integer,
    fk_input_method integer DEFAULT 0,
    fk_incoterms integer,
    location_incoterms character varying(255),
    import_key character varying(14),
    extraparams character varying(255),
    fk_multicurrency integer,
    multicurrency_code character varying(3),
    multicurrency_tx numeric(24,8) DEFAULT 1,
    multicurrency_total_ht numeric(24,8) DEFAULT 0,
    multicurrency_total_tva numeric(24,8) DEFAULT 0,
    multicurrency_total_ttc numeric(24,8) DEFAULT 0
);


ALTER TABLE public.llx_commande_fournisseur OWNER TO dolibarr;

--
-- Name: llx_commande_fournisseur_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_commande_fournisseur_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_commande_fournisseur_extrafields OWNER TO dolibarr;

--
-- Name: llx_commande_fournisseur_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_commande_fournisseur_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_commande_fournisseur_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_commande_fournisseur_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_commande_fournisseur_extrafields_rowid_seq OWNED BY public.llx_commande_fournisseur_extrafields.rowid;


--
-- Name: llx_commande_fournisseur_log; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_commande_fournisseur_log (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    datelog timestamp without time zone,
    fk_commande integer NOT NULL,
    fk_statut smallint NOT NULL,
    fk_user integer NOT NULL,
    comment character varying(255)
);


ALTER TABLE public.llx_commande_fournisseur_log OWNER TO dolibarr;

--
-- Name: llx_commande_fournisseur_log_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_commande_fournisseur_log_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_commande_fournisseur_log_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_commande_fournisseur_log_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_commande_fournisseur_log_rowid_seq OWNED BY public.llx_commande_fournisseur_log.rowid;


--
-- Name: llx_commande_fournisseur_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_commande_fournisseur_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_commande_fournisseur_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_commande_fournisseur_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_commande_fournisseur_rowid_seq OWNED BY public.llx_commande_fournisseur.rowid;


--
-- Name: llx_commande_fournisseurdet; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_commande_fournisseurdet (
    rowid integer NOT NULL,
    fk_commande integer NOT NULL,
    fk_parent_line integer,
    fk_product integer,
    ref character varying(128),
    label character varying(255),
    description text,
    vat_src_code character varying(10) DEFAULT ''::character varying,
    tva_tx numeric(7,4) DEFAULT 0,
    localtax1_tx numeric(7,4) DEFAULT 0,
    localtax1_type character varying(10),
    localtax2_tx numeric(7,4) DEFAULT 0,
    localtax2_type character varying(10),
    qty real,
    remise_percent real DEFAULT 0,
    remise real DEFAULT 0,
    subprice numeric(24,8) DEFAULT 0,
    subprice_ttc numeric(24,8) DEFAULT 0,
    total_ht numeric(24,8) DEFAULT 0,
    total_tva numeric(24,8) DEFAULT 0,
    total_localtax1 numeric(24,8) DEFAULT 0,
    total_localtax2 numeric(24,8) DEFAULT 0,
    total_ttc numeric(24,8) DEFAULT 0,
    product_type integer DEFAULT 0,
    date_start timestamp without time zone,
    date_end timestamp without time zone,
    info_bits integer DEFAULT 0,
    special_code integer DEFAULT 0,
    rang integer DEFAULT 0,
    import_key character varying(14),
    fk_unit integer,
    fk_multicurrency integer,
    multicurrency_code character varying(3),
    multicurrency_subprice numeric(24,8) DEFAULT 0,
    multicurrency_subprice_ttc numeric(24,8) DEFAULT 0,
    multicurrency_total_ht numeric(24,8) DEFAULT 0,
    multicurrency_total_tva numeric(24,8) DEFAULT 0,
    multicurrency_total_ttc numeric(24,8) DEFAULT 0,
    extraparams character varying(255)
);


ALTER TABLE public.llx_commande_fournisseurdet OWNER TO dolibarr;

--
-- Name: llx_commande_fournisseurdet_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_commande_fournisseurdet_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_commande_fournisseurdet_extrafields OWNER TO dolibarr;

--
-- Name: llx_commande_fournisseurdet_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_commande_fournisseurdet_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_commande_fournisseurdet_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_commande_fournisseurdet_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_commande_fournisseurdet_extrafields_rowid_seq OWNED BY public.llx_commande_fournisseurdet_extrafields.rowid;


--
-- Name: llx_commande_fournisseurdet_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_commande_fournisseurdet_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_commande_fournisseurdet_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_commande_fournisseurdet_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_commande_fournisseurdet_rowid_seq OWNED BY public.llx_commande_fournisseurdet.rowid;


--
-- Name: llx_commande_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_commande_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_commande_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_commande_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_commande_rowid_seq OWNED BY public.llx_commande.rowid;


--
-- Name: llx_commandedet; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_commandedet (
    rowid integer NOT NULL,
    fk_commande integer NOT NULL,
    fk_parent_line integer,
    fk_product integer,
    label character varying(255) DEFAULT NULL::character varying,
    description text,
    vat_src_code character varying(10) DEFAULT ''::character varying,
    tva_tx numeric(7,4),
    localtax1_tx numeric(7,4) DEFAULT 0,
    localtax1_type character varying(10),
    localtax2_tx numeric(7,4) DEFAULT 0,
    localtax2_type character varying(10),
    qty real,
    remise_percent real DEFAULT 0,
    remise real DEFAULT 0,
    fk_remise_except integer,
    price real,
    subprice numeric(24,8) DEFAULT 0,
    subprice_ttc numeric(24,8) DEFAULT 0,
    total_ht numeric(24,8) DEFAULT 0,
    total_tva numeric(24,8) DEFAULT 0,
    total_localtax1 numeric(24,8) DEFAULT 0,
    total_localtax2 numeric(24,8) DEFAULT 0,
    total_ttc numeric(24,8) DEFAULT 0,
    product_type integer DEFAULT 0,
    date_start timestamp without time zone,
    date_end timestamp without time zone,
    info_bits integer DEFAULT 0,
    buy_price_ht numeric(24,8) DEFAULT 0,
    fk_product_fournisseur_price integer,
    special_code integer DEFAULT 0,
    rang integer DEFAULT 0,
    fk_unit integer,
    import_key character varying(14),
    ref_ext character varying(255) DEFAULT NULL::character varying,
    fk_commandefourndet integer,
    fk_multicurrency integer,
    multicurrency_code character varying(3),
    multicurrency_subprice numeric(24,8) DEFAULT 0,
    multicurrency_subprice_ttc numeric(24,8) DEFAULT 0,
    multicurrency_total_ht numeric(24,8) DEFAULT 0,
    multicurrency_total_tva numeric(24,8) DEFAULT 0,
    multicurrency_total_ttc numeric(24,8) DEFAULT 0,
    extraparams character varying(255)
);


ALTER TABLE public.llx_commandedet OWNER TO dolibarr;

--
-- Name: llx_commandedet_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_commandedet_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_commandedet_extrafields OWNER TO dolibarr;

--
-- Name: llx_commandedet_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_commandedet_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_commandedet_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_commandedet_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_commandedet_extrafields_rowid_seq OWNED BY public.llx_commandedet_extrafields.rowid;


--
-- Name: llx_commandedet_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_commandedet_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_commandedet_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_commandedet_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_commandedet_rowid_seq OWNED BY public.llx_commandedet.rowid;


--
-- Name: llx_comment; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_comment (
    rowid integer NOT NULL,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    description text NOT NULL,
    fk_user_author integer,
    fk_user_modif integer,
    fk_element integer,
    element_type character varying(50) DEFAULT NULL::character varying,
    entity integer DEFAULT 1,
    import_key character varying(125) DEFAULT NULL::character varying
);


ALTER TABLE public.llx_comment OWNER TO dolibarr;

--
-- Name: llx_comment_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_comment_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_comment_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_comment_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_comment_rowid_seq OWNED BY public.llx_comment.rowid;


--
-- Name: llx_const; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_const (
    rowid integer NOT NULL,
    name character varying(180) NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    value text NOT NULL,
    type character varying(64) DEFAULT 'string'::character varying,
    visible smallint DEFAULT 1 NOT NULL,
    note text,
    tms timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.llx_const OWNER TO dolibarr;

--
-- Name: llx_const_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_const_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_const_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_const_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_const_rowid_seq OWNED BY public.llx_const.rowid;


--
-- Name: llx_contrat; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_contrat (
    rowid integer NOT NULL,
    ref character varying(255),
    ref_customer character varying(255),
    ref_supplier character varying(255),
    ref_ext character varying(255),
    entity integer DEFAULT 1 NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    datec timestamp without time zone,
    date_contrat timestamp without time zone,
    statut smallint DEFAULT 0,
    fin_validite timestamp without time zone,
    date_cloture timestamp without time zone,
    fk_soc integer NOT NULL,
    fk_projet integer,
    fk_commercial_signature integer,
    fk_commercial_suivi integer,
    fk_user_author integer DEFAULT 0 NOT NULL,
    fk_user_modif integer,
    fk_user_cloture integer,
    total_tva numeric(24,8) DEFAULT 0,
    localtax1 numeric(24,8) DEFAULT 0,
    localtax2 numeric(24,8) DEFAULT 0,
    revenuestamp numeric(24,8) DEFAULT 0,
    total_ht numeric(24,8) DEFAULT 0,
    total_ttc numeric(24,8) DEFAULT 0,
    denormalized_lower_planned_end_date timestamp without time zone,
    signed_status smallint,
    online_sign_ip character varying(48),
    online_sign_name character varying(64),
    note_private text,
    note_public text,
    model_pdf character varying(255),
    last_main_doc character varying(255),
    import_key character varying(14),
    extraparams character varying(255)
);


ALTER TABLE public.llx_contrat OWNER TO dolibarr;

--
-- Name: llx_contrat_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_contrat_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_contrat_extrafields OWNER TO dolibarr;

--
-- Name: llx_contrat_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_contrat_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_contrat_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_contrat_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_contrat_extrafields_rowid_seq OWNED BY public.llx_contrat_extrafields.rowid;


--
-- Name: llx_contrat_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_contrat_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_contrat_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_contrat_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_contrat_rowid_seq OWNED BY public.llx_contrat.rowid;


--
-- Name: llx_contratdet; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_contratdet (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_contrat integer NOT NULL,
    fk_product integer,
    statut smallint DEFAULT 0,
    label text,
    description text,
    fk_remise_except integer,
    date_commande timestamp without time zone,
    date_ouverture_prevue timestamp without time zone,
    date_ouverture timestamp without time zone,
    date_fin_validite timestamp without time zone,
    date_cloture timestamp without time zone,
    vat_src_code character varying(10) DEFAULT ''::character varying,
    tva_tx numeric(7,4) DEFAULT 0,
    localtax1_tx numeric(7,4) DEFAULT 0,
    localtax1_type character varying(10),
    localtax2_tx numeric(7,4) DEFAULT 0,
    localtax2_type character varying(10),
    qty real NOT NULL,
    remise_percent real DEFAULT 0,
    subprice numeric(24,8) DEFAULT 0,
    subprice_ttc numeric(24,8) DEFAULT 0,
    total_ht numeric(24,8) DEFAULT 0,
    total_tva numeric(24,8) DEFAULT 0,
    total_localtax1 numeric(24,8) DEFAULT 0,
    total_localtax2 numeric(24,8) DEFAULT 0,
    total_ttc numeric(24,8) DEFAULT 0,
    product_type integer DEFAULT 1,
    info_bits integer DEFAULT 0,
    rang integer DEFAULT 0,
    buy_price_ht numeric(24,8) DEFAULT NULL::numeric,
    fk_product_fournisseur_price integer,
    fk_user_author integer DEFAULT 0 NOT NULL,
    fk_user_ouverture integer,
    fk_user_cloture integer,
    commentaire text,
    fk_unit integer,
    fk_multicurrency integer,
    multicurrency_code character varying(3),
    multicurrency_subprice numeric(24,8) DEFAULT 0,
    multicurrency_subprice_ttc numeric(24,8) DEFAULT 0,
    multicurrency_total_ht numeric(24,8) DEFAULT 0,
    multicurrency_total_tva numeric(24,8) DEFAULT 0,
    multicurrency_total_ttc numeric(24,8) DEFAULT 0,
    extraparams character varying(255)
);


ALTER TABLE public.llx_contratdet OWNER TO dolibarr;

--
-- Name: llx_contratdet_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_contratdet_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_contratdet_extrafields OWNER TO dolibarr;

--
-- Name: llx_contratdet_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_contratdet_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_contratdet_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_contratdet_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_contratdet_extrafields_rowid_seq OWNED BY public.llx_contratdet_extrafields.rowid;


--
-- Name: llx_contratdet_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_contratdet_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_contratdet_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_contratdet_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_contratdet_rowid_seq OWNED BY public.llx_contratdet.rowid;


--
-- Name: llx_cronjob; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_cronjob (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    datec timestamp without time zone,
    jobtype character varying(10) NOT NULL,
    label character varying(255) NOT NULL,
    command character varying(255),
    classesname character varying(255),
    objectname character varying(255),
    methodename character varying(255),
    params text,
    md5params character varying(32),
    module_name character varying(255),
    priority integer DEFAULT 0,
    datelastrun timestamp without time zone,
    datenextrun timestamp without time zone,
    datestart timestamp without time zone,
    dateend timestamp without time zone,
    datelastresult timestamp without time zone,
    lastresult text,
    lastoutput text,
    unitfrequency character varying(255) DEFAULT '3600'::character varying NOT NULL,
    frequency integer DEFAULT 0 NOT NULL,
    maxrun integer DEFAULT 0 NOT NULL,
    nbrun integer,
    autodelete integer DEFAULT 0,
    status integer DEFAULT 1 NOT NULL,
    processing integer DEFAULT 0 NOT NULL,
    pid integer,
    test character varying(255) DEFAULT '1'::character varying,
    fk_user_author integer,
    fk_user_mod integer,
    fk_mailing integer,
    note text,
    libname character varying(255),
    email_alert character varying(128),
    entity integer DEFAULT 0
);


ALTER TABLE public.llx_cronjob OWNER TO dolibarr;

--
-- Name: llx_cronjob_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_cronjob_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_cronjob_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_cronjob_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_cronjob_rowid_seq OWNED BY public.llx_cronjob.rowid;


--
-- Name: llx_default_values; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_default_values (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    type character varying(10),
    user_id integer DEFAULT 0 NOT NULL,
    page character varying(255),
    param character varying(255),
    value character varying(128)
);


ALTER TABLE public.llx_default_values OWNER TO dolibarr;

--
-- Name: llx_default_values_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_default_values_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_default_values_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_default_values_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_default_values_rowid_seq OWNED BY public.llx_default_values.rowid;


--
-- Name: llx_delivery; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_delivery (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    ref character varying(30) NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    fk_soc integer NOT NULL,
    ref_ext character varying(255),
    ref_customer character varying(255),
    date_creation timestamp without time zone,
    fk_user_author integer,
    date_valid timestamp without time zone,
    fk_user_valid integer,
    date_delivery timestamp without time zone,
    fk_address integer,
    fk_statut smallint DEFAULT 0,
    total_ht numeric(24,8) DEFAULT 0,
    note_private text,
    note_public text,
    model_pdf character varying(255),
    last_main_doc character varying(255),
    fk_incoterms integer,
    location_incoterms character varying(255),
    import_key character varying(14),
    extraparams character varying(255)
);


ALTER TABLE public.llx_delivery OWNER TO dolibarr;

--
-- Name: llx_delivery_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_delivery_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_delivery_extrafields OWNER TO dolibarr;

--
-- Name: llx_delivery_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_delivery_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_delivery_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_delivery_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_delivery_extrafields_rowid_seq OWNED BY public.llx_delivery_extrafields.rowid;


--
-- Name: llx_delivery_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_delivery_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_delivery_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_delivery_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_delivery_rowid_seq OWNED BY public.llx_delivery.rowid;


--
-- Name: llx_deliverydet; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_deliverydet (
    rowid integer NOT NULL,
    fk_delivery integer,
    fk_origin_line integer,
    fk_product integer,
    description text,
    qty real,
    subprice numeric(24,8) DEFAULT 0,
    subprice_ttc numeric(24,8) DEFAULT 0,
    total_ht numeric(24,8) DEFAULT 0,
    rang integer DEFAULT 0,
    extraparams character varying(255)
);


ALTER TABLE public.llx_deliverydet OWNER TO dolibarr;

--
-- Name: llx_deliverydet_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_deliverydet_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_deliverydet_extrafields OWNER TO dolibarr;

--
-- Name: llx_deliverydet_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_deliverydet_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_deliverydet_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_deliverydet_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_deliverydet_extrafields_rowid_seq OWNED BY public.llx_deliverydet_extrafields.rowid;


--
-- Name: llx_deliverydet_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_deliverydet_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_deliverydet_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_deliverydet_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_deliverydet_rowid_seq OWNED BY public.llx_deliverydet.rowid;


--
-- Name: llx_document_model; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_document_model (
    rowid integer NOT NULL,
    nom character varying(50),
    entity integer DEFAULT 1 NOT NULL,
    type character varying(64) NOT NULL,
    libelle character varying(255),
    description text
);


ALTER TABLE public.llx_document_model OWNER TO dolibarr;

--
-- Name: llx_document_model_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_document_model_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_document_model_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_document_model_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_document_model_rowid_seq OWNED BY public.llx_document_model.rowid;


--
-- Name: llx_ecm_directories; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_ecm_directories (
    rowid integer NOT NULL,
    label character varying(64) NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    fk_parent integer,
    description character varying(255) NOT NULL,
    cachenbofdoc integer DEFAULT 0 NOT NULL,
    fullpath character varying(750),
    extraparams character varying(255),
    date_c timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_user_c integer,
    fk_user_m integer,
    note_private text,
    note_public text,
    acl text
);


ALTER TABLE public.llx_ecm_directories OWNER TO dolibarr;

--
-- Name: llx_ecm_directories_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_ecm_directories_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_ecm_directories_extrafields OWNER TO dolibarr;

--
-- Name: llx_ecm_directories_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_ecm_directories_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_ecm_directories_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_ecm_directories_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_ecm_directories_extrafields_rowid_seq OWNED BY public.llx_ecm_directories_extrafields.rowid;


--
-- Name: llx_ecm_directories_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_ecm_directories_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_ecm_directories_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_ecm_directories_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_ecm_directories_rowid_seq OWNED BY public.llx_ecm_directories.rowid;


--
-- Name: llx_ecm_files; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_ecm_files (
    rowid integer NOT NULL,
    ref character varying(128),
    label character varying(128) NOT NULL,
    share character varying(128),
    share_pass character varying(32),
    entity integer DEFAULT 1 NOT NULL,
    filepath character varying(255) NOT NULL,
    filename character varying(255) NOT NULL,
    src_object_type character varying(64),
    src_object_id integer,
    agenda_id integer,
    fullpath_orig character varying(750),
    description character varying(255),
    keywords character varying(750),
    content text,
    cover character varying(32),
    "position" integer,
    gen_or_uploaded character varying(12),
    extraparams character varying(255),
    date_c timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_user_c integer,
    fk_user_m integer,
    note_private text,
    note_public text,
    acl text
);


ALTER TABLE public.llx_ecm_files OWNER TO dolibarr;

--
-- Name: llx_ecm_files_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_ecm_files_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_ecm_files_extrafields OWNER TO dolibarr;

--
-- Name: llx_ecm_files_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_ecm_files_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_ecm_files_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_ecm_files_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_ecm_files_extrafields_rowid_seq OWNED BY public.llx_ecm_files_extrafields.rowid;


--
-- Name: llx_ecm_files_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_ecm_files_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_ecm_files_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_ecm_files_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_ecm_files_rowid_seq OWNED BY public.llx_ecm_files.rowid;


--
-- Name: llx_element_categorie; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_element_categorie (
    rowid integer NOT NULL,
    fk_categorie integer NOT NULL,
    fk_element integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_element_categorie OWNER TO dolibarr;

--
-- Name: llx_element_categorie_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_element_categorie_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_element_categorie_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_element_categorie_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_element_categorie_rowid_seq OWNED BY public.llx_element_categorie.rowid;


--
-- Name: llx_element_contact; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_element_contact (
    rowid integer NOT NULL,
    datecreate timestamp without time zone,
    statut smallint DEFAULT 5,
    element_id integer NOT NULL,
    fk_c_type_contact integer NOT NULL,
    fk_socpeople integer NOT NULL
);


ALTER TABLE public.llx_element_contact OWNER TO dolibarr;

--
-- Name: llx_element_contact_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_element_contact_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_element_contact_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_element_contact_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_element_contact_rowid_seq OWNED BY public.llx_element_contact.rowid;


--
-- Name: llx_element_element; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_element_element (
    rowid integer NOT NULL,
    fk_source integer NOT NULL,
    sourcetype character varying(64) NOT NULL,
    fk_target integer NOT NULL,
    targettype character varying(64) NOT NULL,
    relationtype character varying(64) DEFAULT NULL::character varying
);


ALTER TABLE public.llx_element_element OWNER TO dolibarr;

--
-- Name: llx_element_element_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_element_element_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_element_element_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_element_element_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_element_element_rowid_seq OWNED BY public.llx_element_element.rowid;


--
-- Name: llx_element_resources; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_element_resources (
    rowid integer NOT NULL,
    element_id integer,
    element_type character varying(64),
    resource_id integer,
    resource_type character varying(64),
    busy integer,
    mandatory integer,
    duree real,
    fk_user_create integer,
    tms timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.llx_element_resources OWNER TO dolibarr;

--
-- Name: llx_element_resources_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_element_resources_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_element_resources_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_element_resources_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_element_resources_rowid_seq OWNED BY public.llx_element_resources.rowid;


--
-- Name: llx_element_time; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_element_time (
    rowid integer NOT NULL,
    ref_ext character varying(32),
    fk_element integer NOT NULL,
    elementtype character varying(32) NOT NULL,
    element_date date,
    element_datehour timestamp without time zone,
    element_date_withhour integer,
    element_duration numeric,
    fk_product integer,
    fk_user integer,
    thm numeric(24,8),
    invoice_id integer,
    invoice_line_id integer,
    intervention_id integer,
    intervention_line_id integer,
    import_key character varying(14),
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    note text
);


ALTER TABLE public.llx_element_time OWNER TO dolibarr;

--
-- Name: llx_element_time_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_element_time_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_element_time_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_element_time_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_element_time_rowid_seq OWNED BY public.llx_element_time.rowid;


--
-- Name: llx_emailcollector_emailcollector; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_emailcollector_emailcollector (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    ref character varying(128) NOT NULL,
    label character varying(255),
    description text,
    host character varying(255),
    port character varying(10) DEFAULT '993'::character varying,
    hostcharset character varying(16) DEFAULT 'UTF-8'::character varying,
    imap_encryption character varying(16) DEFAULT 'ssl'::character varying,
    norsh integer DEFAULT 0,
    login character varying(128),
    acces_type integer DEFAULT 0,
    oauth_service character varying(128),
    password character varying(128),
    source_directory character varying(255) DEFAULT 'Inbox'::character varying NOT NULL,
    target_directory character varying(255),
    maxemailpercollect integer DEFAULT 100,
    datelastresult timestamp without time zone,
    codelastresult character varying(16),
    lastresult text,
    datelastok timestamp without time zone,
    note_public text,
    note_private text,
    date_creation timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_user_creat integer NOT NULL,
    fk_user_modif integer,
    "position" integer DEFAULT 0 NOT NULL,
    import_key character varying(14),
    status integer NOT NULL
);


ALTER TABLE public.llx_emailcollector_emailcollector OWNER TO dolibarr;

--
-- Name: llx_emailcollector_emailcollector_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_emailcollector_emailcollector_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_emailcollector_emailcollector_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_emailcollector_emailcollector_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_emailcollector_emailcollector_rowid_seq OWNED BY public.llx_emailcollector_emailcollector.rowid;


--
-- Name: llx_emailcollector_emailcollectoraction; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_emailcollector_emailcollectoraction (
    rowid integer NOT NULL,
    fk_emailcollector integer NOT NULL,
    type character varying(128) NOT NULL,
    actionparam text,
    date_creation timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_user_creat integer NOT NULL,
    fk_user_modif integer,
    "position" integer DEFAULT 0,
    import_key character varying(14),
    status integer NOT NULL
);


ALTER TABLE public.llx_emailcollector_emailcollectoraction OWNER TO dolibarr;

--
-- Name: llx_emailcollector_emailcollectoraction_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_emailcollector_emailcollectoraction_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_emailcollector_emailcollectoraction_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_emailcollector_emailcollectoraction_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_emailcollector_emailcollectoraction_rowid_seq OWNED BY public.llx_emailcollector_emailcollectoraction.rowid;


--
-- Name: llx_emailcollector_emailcollectorfilter; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_emailcollector_emailcollectorfilter (
    rowid integer NOT NULL,
    fk_emailcollector integer NOT NULL,
    type character varying(128) NOT NULL,
    rulevalue character varying(128),
    date_creation timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_user_creat integer NOT NULL,
    fk_user_modif integer,
    import_key character varying(14),
    status integer NOT NULL
);


ALTER TABLE public.llx_emailcollector_emailcollectorfilter OWNER TO dolibarr;

--
-- Name: llx_emailcollector_emailcollectorfilter_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_emailcollector_emailcollectorfilter_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_emailcollector_emailcollectorfilter_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_emailcollector_emailcollectorfilter_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_emailcollector_emailcollectorfilter_rowid_seq OWNED BY public.llx_emailcollector_emailcollectorfilter.rowid;


--
-- Name: llx_entrepot; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_entrepot (
    rowid integer NOT NULL,
    ref character varying(255) NOT NULL,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    fk_project integer,
    description text,
    lieu character varying(64),
    address character varying(255),
    zip character varying(10),
    town character varying(50),
    fk_departement integer,
    fk_pays integer DEFAULT 0,
    phone character varying(30),
    fax character varying(30),
    barcode character varying(180) DEFAULT NULL::character varying,
    fk_barcode_type integer,
    warehouse_usage integer DEFAULT 1,
    statut smallint DEFAULT 1,
    fk_user_author integer,
    model_pdf character varying(255),
    import_key character varying(14),
    fk_parent integer DEFAULT 0
);


ALTER TABLE public.llx_entrepot OWNER TO dolibarr;

--
-- Name: llx_entrepot_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_entrepot_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_entrepot_extrafields OWNER TO dolibarr;

--
-- Name: llx_entrepot_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_entrepot_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_entrepot_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_entrepot_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_entrepot_extrafields_rowid_seq OWNED BY public.llx_entrepot_extrafields.rowid;


--
-- Name: llx_entrepot_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_entrepot_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_entrepot_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_entrepot_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_entrepot_rowid_seq OWNED BY public.llx_entrepot.rowid;


--
-- Name: llx_establishment; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_establishment (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    ref character varying(30),
    label character varying(255) NOT NULL,
    name character varying(128),
    address character varying(255),
    zip character varying(25),
    town character varying(50),
    fk_state integer DEFAULT 0,
    fk_country integer DEFAULT 0,
    profid1 character varying(20),
    profid2 character varying(20),
    profid3 character varying(20),
    phone character varying(30),
    fk_user_author integer NOT NULL,
    fk_user_mod integer,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    status smallint DEFAULT 1
);


ALTER TABLE public.llx_establishment OWNER TO dolibarr;

--
-- Name: llx_establishment_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_establishment_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_establishment_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_establishment_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_establishment_rowid_seq OWNED BY public.llx_establishment.rowid;


--
-- Name: llx_event_element; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_event_element (
    rowid integer NOT NULL,
    fk_source integer NOT NULL,
    fk_target integer NOT NULL,
    targettype character varying(32) NOT NULL
);


ALTER TABLE public.llx_event_element OWNER TO dolibarr;

--
-- Name: llx_event_element_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_event_element_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_event_element_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_event_element_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_event_element_rowid_seq OWNED BY public.llx_event_element.rowid;


--
-- Name: llx_eventorganization_conferenceorboothattendee; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_eventorganization_conferenceorboothattendee (
    rowid integer NOT NULL,
    ref character varying(128) NOT NULL,
    fk_soc integer,
    fk_actioncomm integer,
    fk_project integer NOT NULL,
    fk_invoice integer,
    email character varying(128),
    email_company character varying(128),
    firstname character varying(100),
    lastname character varying(100),
    date_subscription timestamp without time zone,
    amount numeric,
    note_public text,
    note_private text,
    date_creation timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_user_creat integer,
    fk_user_modif integer,
    last_main_doc character varying(255),
    ip character varying(250),
    import_key character varying(14),
    model_pdf character varying(255),
    status smallint NOT NULL
);


ALTER TABLE public.llx_eventorganization_conferenceorboothattendee OWNER TO dolibarr;

--
-- Name: llx_eventorganization_conferenceorboothattendee_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_eventorganization_conferenceorboothattendee_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_eventorganization_conferenceorboothattendee_extrafields OWNER TO dolibarr;

--
-- Name: llx_eventorganization_conferenceorboothattendee_extra_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_eventorganization_conferenceorboothattendee_extra_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_eventorganization_conferenceorboothattendee_extra_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_eventorganization_conferenceorboothattendee_extra_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_eventorganization_conferenceorboothattendee_extra_rowid_seq OWNED BY public.llx_eventorganization_conferenceorboothattendee_extrafields.rowid;


--
-- Name: llx_eventorganization_conferenceorboothattendee_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_eventorganization_conferenceorboothattendee_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_eventorganization_conferenceorboothattendee_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_eventorganization_conferenceorboothattendee_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_eventorganization_conferenceorboothattendee_rowid_seq OWNED BY public.llx_eventorganization_conferenceorboothattendee.rowid;


--
-- Name: llx_events; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_events (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    type character varying(32) NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    prefix_session character varying(255),
    dateevent timestamp without time zone,
    fk_user integer,
    description character varying(250) NOT NULL,
    ip character varying(250) NOT NULL,
    user_agent character varying(255),
    fk_object integer,
    authentication_method character varying(64),
    fk_oauth_token integer
);


ALTER TABLE public.llx_events OWNER TO dolibarr;

--
-- Name: llx_events_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_events_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_events_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_events_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_events_rowid_seq OWNED BY public.llx_events.rowid;


--
-- Name: llx_expedition; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_expedition (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    ref character varying(30) NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    fk_soc integer NOT NULL,
    fk_projet integer,
    ref_ext character varying(255),
    ref_customer character varying(255),
    date_creation timestamp without time zone,
    fk_user_author integer,
    fk_user_modif integer,
    date_valid timestamp without time zone,
    fk_user_valid integer,
    date_delivery timestamp without time zone,
    date_expedition timestamp without time zone,
    fk_address integer,
    fk_shipping_method integer,
    tracking_number character varying(50),
    fk_statut smallint DEFAULT 0,
    billed smallint DEFAULT 0,
    height numeric,
    width numeric,
    size_units integer,
    size numeric,
    weight_units integer,
    weight numeric,
    signed_status smallint,
    online_sign_ip character varying(48),
    online_sign_name character varying(64),
    note_private text,
    note_public text,
    model_pdf character varying(255),
    last_main_doc character varying(255),
    fk_incoterms integer,
    location_incoterms character varying(255),
    import_key character varying(14),
    extraparams character varying(255)
);


ALTER TABLE public.llx_expedition OWNER TO dolibarr;

--
-- Name: llx_expedition_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_expedition_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_expedition_extrafields OWNER TO dolibarr;

--
-- Name: llx_expedition_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_expedition_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_expedition_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_expedition_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_expedition_extrafields_rowid_seq OWNED BY public.llx_expedition_extrafields.rowid;


--
-- Name: llx_expedition_package; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_expedition_package (
    rowid integer NOT NULL,
    fk_expedition integer NOT NULL,
    description character varying(255),
    value numeric(24,8) DEFAULT 0,
    fk_package_type integer,
    height numeric,
    width numeric,
    size numeric,
    size_units integer,
    weight numeric,
    weight_units integer,
    dangerous_goods character varying(20) DEFAULT '0'::character varying,
    tail_lift smallint DEFAULT 0,
    rang integer DEFAULT 0
);


ALTER TABLE public.llx_expedition_package OWNER TO dolibarr;

--
-- Name: llx_expedition_package_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_expedition_package_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_expedition_package_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_expedition_package_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_expedition_package_rowid_seq OWNED BY public.llx_expedition_package.rowid;


--
-- Name: llx_expedition_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_expedition_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_expedition_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_expedition_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_expedition_rowid_seq OWNED BY public.llx_expedition.rowid;


--
-- Name: llx_expeditiondet; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_expeditiondet (
    rowid integer NOT NULL,
    fk_expedition integer NOT NULL,
    fk_element integer,
    fk_elementdet integer,
    element_type character varying(50) DEFAULT 'commande'::character varying NOT NULL,
    fk_product integer,
    fk_parent integer,
    qty real,
    fk_unit integer,
    fk_entrepot integer,
    description text,
    rang integer DEFAULT 0,
    extraparams character varying(255)
);


ALTER TABLE public.llx_expeditiondet OWNER TO dolibarr;

--
-- Name: llx_expeditiondet_batch; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_expeditiondet_batch (
    rowid integer NOT NULL,
    fk_expeditiondet integer NOT NULL,
    eatby date,
    sellby date,
    batch character varying(128) DEFAULT NULL::character varying,
    qty numeric DEFAULT '0'::numeric NOT NULL,
    fk_origin_stock integer NOT NULL,
    fk_warehouse integer
);


ALTER TABLE public.llx_expeditiondet_batch OWNER TO dolibarr;

--
-- Name: llx_expeditiondet_batch_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_expeditiondet_batch_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_expeditiondet_batch_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_expeditiondet_batch_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_expeditiondet_batch_rowid_seq OWNED BY public.llx_expeditiondet_batch.rowid;


--
-- Name: llx_expeditiondet_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_expeditiondet_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_expeditiondet_extrafields OWNER TO dolibarr;

--
-- Name: llx_expeditiondet_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_expeditiondet_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_expeditiondet_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_expeditiondet_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_expeditiondet_extrafields_rowid_seq OWNED BY public.llx_expeditiondet_extrafields.rowid;


--
-- Name: llx_expeditiondet_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_expeditiondet_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_expeditiondet_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_expeditiondet_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_expeditiondet_rowid_seq OWNED BY public.llx_expeditiondet.rowid;


--
-- Name: llx_expensereport; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_expensereport (
    rowid integer NOT NULL,
    ref character varying(50) NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    ref_number_int integer,
    ref_ext integer,
    total_ht numeric(24,8) DEFAULT 0,
    total_tva numeric(24,8) DEFAULT 0,
    localtax1 numeric(24,8) DEFAULT 0,
    localtax2 numeric(24,8) DEFAULT 0,
    total_ttc numeric(24,8) DEFAULT 0,
    date_debut date NOT NULL,
    date_fin date NOT NULL,
    date_create timestamp without time zone,
    date_valid timestamp without time zone,
    date_approve timestamp without time zone,
    date_refuse timestamp without time zone,
    date_cancel timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_user_author integer NOT NULL,
    fk_user_creat integer,
    fk_user_modif integer,
    fk_user_valid integer,
    fk_user_validator integer,
    fk_user_approve integer,
    fk_user_refuse integer,
    fk_user_cancel integer,
    fk_statut integer NOT NULL,
    fk_c_paiement integer,
    paid smallint DEFAULT 0 NOT NULL,
    note_public text,
    note_private text,
    detail_refuse character varying(255) DEFAULT NULL::character varying,
    detail_cancel character varying(255) DEFAULT NULL::character varying,
    integration_compta integer,
    fk_bank_account integer,
    model_pdf character varying(255) DEFAULT NULL::character varying,
    last_main_doc character varying(255),
    fk_multicurrency integer,
    multicurrency_code character varying(3),
    multicurrency_tx numeric(24,8) DEFAULT 1,
    multicurrency_total_ht numeric(24,8) DEFAULT 0,
    multicurrency_total_tva numeric(24,8) DEFAULT 0,
    multicurrency_total_ttc numeric(24,8) DEFAULT 0,
    import_key character varying(14),
    extraparams character varying(255)
);


ALTER TABLE public.llx_expensereport OWNER TO dolibarr;

--
-- Name: llx_expensereport_det; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_expensereport_det (
    rowid integer NOT NULL,
    fk_expensereport integer NOT NULL,
    docnumber character varying(128),
    fk_c_type_fees integer NOT NULL,
    fk_c_exp_tax_cat integer,
    fk_projet integer,
    comments text NOT NULL,
    product_type integer DEFAULT '-1'::integer,
    qty real NOT NULL,
    subprice numeric(24,8) DEFAULT 0 NOT NULL,
    subprice_ttc numeric(24,8) DEFAULT 0,
    value_unit numeric(24,8) NOT NULL,
    remise_percent real,
    vat_src_code character varying(10) DEFAULT ''::character varying,
    tva_tx numeric(7,4),
    localtax1_tx numeric(7,4) DEFAULT 0,
    localtax1_type character varying(10),
    localtax2_tx numeric(7,4) DEFAULT 0,
    localtax2_type character varying(10),
    total_ht numeric(24,8) DEFAULT 0 NOT NULL,
    total_tva numeric(24,8) DEFAULT 0 NOT NULL,
    total_localtax1 numeric(24,8) DEFAULT 0,
    total_localtax2 numeric(24,8) DEFAULT 0,
    total_ttc numeric(24,8) DEFAULT 0 NOT NULL,
    date date NOT NULL,
    info_bits integer DEFAULT 0,
    special_code integer DEFAULT 0,
    fk_multicurrency integer,
    multicurrency_code character varying(3),
    multicurrency_subprice numeric(24,8) DEFAULT 0,
    multicurrency_subprice_ttc numeric(24,8) DEFAULT 0,
    multicurrency_total_ht numeric(24,8) DEFAULT 0,
    multicurrency_total_tva numeric(24,8) DEFAULT 0,
    multicurrency_total_ttc numeric(24,8) DEFAULT 0,
    fk_facture integer DEFAULT 0,
    fk_ecm_files integer,
    fk_code_ventilation integer DEFAULT 0,
    rang integer DEFAULT 0,
    import_key character varying(14),
    rule_warning_message text
);


ALTER TABLE public.llx_expensereport_det OWNER TO dolibarr;

--
-- Name: llx_expensereport_det_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_expensereport_det_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_expensereport_det_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_expensereport_det_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_expensereport_det_rowid_seq OWNED BY public.llx_expensereport_det.rowid;


--
-- Name: llx_expensereport_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_expensereport_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_expensereport_extrafields OWNER TO dolibarr;

--
-- Name: llx_expensereport_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_expensereport_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_expensereport_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_expensereport_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_expensereport_extrafields_rowid_seq OWNED BY public.llx_expensereport_extrafields.rowid;


--
-- Name: llx_expensereport_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_expensereport_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_expensereport_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_expensereport_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_expensereport_rowid_seq OWNED BY public.llx_expensereport.rowid;


--
-- Name: llx_export_model; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_export_model (
    rowid integer NOT NULL,
    entity integer DEFAULT 0,
    fk_user integer DEFAULT 0 NOT NULL,
    label character varying(50) NOT NULL,
    type character varying(64) NOT NULL,
    field text NOT NULL,
    filter text
);


ALTER TABLE public.llx_export_model OWNER TO dolibarr;

--
-- Name: llx_export_model_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_export_model_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_export_model_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_export_model_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_export_model_rowid_seq OWNED BY public.llx_export_model.rowid;


--
-- Name: llx_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_extrafields (
    rowid integer NOT NULL,
    name character varying(64) NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    elementtype character varying(64) DEFAULT 'member'::character varying NOT NULL,
    label character varying(255) NOT NULL,
    type character varying(8),
    size character varying(8) DEFAULT NULL::character varying,
    fieldcomputed text,
    fielddefault text,
    fieldunique integer DEFAULT 0,
    fieldrequired integer DEFAULT 0,
    perms character varying(255),
    enabled character varying(255),
    module character varying(64),
    pos integer DEFAULT 0,
    alwayseditable integer DEFAULT 0,
    param text,
    list character varying(255) DEFAULT '1'::character varying,
    printable integer DEFAULT 0,
    totalizable boolean DEFAULT false,
    langs character varying(64),
    help text,
    aiprompt text,
    css character varying(128),
    cssview character varying(128),
    csslist character varying(128),
    fk_user_author integer,
    fk_user_modif integer,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.llx_extrafields OWNER TO dolibarr;

--
-- Name: llx_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_extrafields_rowid_seq OWNED BY public.llx_extrafields.rowid;


--
-- Name: llx_facture; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_facture (
    rowid integer NOT NULL,
    ref character varying(30) NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    ref_ext character varying(255),
    ref_client character varying(255),
    type smallint DEFAULT 0 NOT NULL,
    subtype smallint,
    fk_soc integer NOT NULL,
    datec timestamp without time zone,
    datef date,
    date_pointoftax date,
    date_valid date,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    date_closing timestamp without time zone,
    paye smallint DEFAULT 0 NOT NULL,
    remise_percent real DEFAULT 0,
    remise_absolue real DEFAULT 0,
    remise real DEFAULT 0,
    close_code character varying(16),
    close_missing_amount numeric(24,8),
    close_note character varying(128),
    total_tva numeric(24,8) DEFAULT 0,
    localtax1 numeric(24,8) DEFAULT 0,
    localtax2 numeric(24,8) DEFAULT 0,
    revenuestamp numeric(24,8) DEFAULT 0,
    total_ht numeric(24,8) DEFAULT 0,
    total_ttc numeric(24,8) DEFAULT 0,
    fk_statut smallint DEFAULT 0 NOT NULL,
    fk_user_author integer,
    fk_user_modif integer,
    fk_user_valid integer,
    fk_user_closing integer,
    module_source character varying(32),
    pos_source character varying(32),
    fk_fac_rec_source integer,
    fk_facture_source integer,
    fk_projet integer,
    increment character varying(10),
    fk_account integer,
    fk_currency character varying(3),
    fk_cond_reglement integer DEFAULT 1 NOT NULL,
    fk_mode_reglement integer,
    date_lim_reglement date,
    payment_reference character varying(25),
    note_private text,
    note_public text,
    model_pdf character varying(255),
    last_main_doc character varying(255),
    fk_input_reason integer,
    fk_incoterms integer,
    location_incoterms character varying(255),
    fk_transport_mode integer,
    prorata_discount real,
    situation_cycle_ref integer,
    situation_counter smallint,
    situation_final smallint,
    retained_warranty real,
    retained_warranty_date_limit date,
    retained_warranty_fk_cond_reglement integer,
    import_key character varying(14),
    extraparams character varying(255),
    is_also_delivery_note smallint DEFAULT 0 NOT NULL,
    fk_multicurrency integer,
    multicurrency_code character varying(3),
    multicurrency_tx numeric(24,8) DEFAULT 1,
    multicurrency_total_ht numeric(24,8) DEFAULT 0,
    multicurrency_total_tva numeric(24,8) DEFAULT 0,
    multicurrency_total_ttc numeric(24,8) DEFAULT 0
);


ALTER TABLE public.llx_facture OWNER TO dolibarr;

--
-- Name: llx_facture_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_facture_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_facture_extrafields OWNER TO dolibarr;

--
-- Name: llx_facture_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_facture_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_facture_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_facture_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_facture_extrafields_rowid_seq OWNED BY public.llx_facture_extrafields.rowid;


--
-- Name: llx_facture_fourn; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_facture_fourn (
    rowid integer NOT NULL,
    ref character varying(180) NOT NULL,
    ref_supplier character varying(180) NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    ref_ext character varying(255),
    type smallint DEFAULT 0 NOT NULL,
    subtype smallint,
    fk_soc integer NOT NULL,
    datec timestamp without time zone,
    datef date,
    date_pointoftax date,
    date_valid date,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    date_closing timestamp without time zone,
    libelle character varying(255),
    paye smallint DEFAULT 0 NOT NULL,
    amount numeric(24,8) DEFAULT 0 NOT NULL,
    remise numeric(24,8) DEFAULT 0,
    close_code character varying(16),
    close_missing_amount numeric(24,8),
    close_note character varying(128),
    vat_reverse_charge smallint DEFAULT 0,
    tva numeric(24,8) DEFAULT 0,
    total_tva numeric(24,8) DEFAULT 0,
    localtax1 numeric(24,8) DEFAULT 0,
    localtax2 numeric(24,8) DEFAULT 0,
    revenuestamp numeric(24,8) DEFAULT 0,
    total_ht numeric(24,8) DEFAULT 0,
    total_ttc numeric(24,8) DEFAULT 0,
    fk_statut smallint DEFAULT 0 NOT NULL,
    fk_user_author integer,
    fk_user_modif integer,
    fk_user_valid integer,
    fk_user_closing integer,
    fk_fac_rec_source integer,
    fk_facture_source integer,
    fk_projet integer,
    fk_account integer,
    fk_cond_reglement integer,
    fk_mode_reglement integer,
    date_lim_reglement date,
    note_private text,
    note_public text,
    fk_incoterms integer,
    location_incoterms character varying(255),
    fk_transport_mode integer,
    model_pdf character varying(255),
    last_main_doc character varying(255),
    import_key character varying(14),
    extraparams character varying(255),
    fk_multicurrency integer,
    multicurrency_code character varying(3),
    multicurrency_tx numeric(24,8) DEFAULT 1,
    multicurrency_total_ht numeric(24,8) DEFAULT 0,
    multicurrency_total_tva numeric(24,8) DEFAULT 0,
    multicurrency_total_ttc numeric(24,8) DEFAULT 0
);


ALTER TABLE public.llx_facture_fourn OWNER TO dolibarr;

--
-- Name: llx_facture_fourn_det; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_facture_fourn_det (
    rowid integer NOT NULL,
    fk_facture_fourn integer NOT NULL,
    fk_parent_line integer,
    fk_product integer,
    ref character varying(128),
    label character varying(255),
    description text,
    pu_ht numeric(24,8),
    pu_ttc numeric(24,8),
    qty real,
    remise_percent real DEFAULT 0,
    fk_remise_except integer,
    vat_src_code character varying(10) DEFAULT ''::character varying,
    tva_tx numeric(7,4),
    localtax1_tx numeric(7,4) DEFAULT 0,
    localtax1_type character varying(10),
    localtax2_tx numeric(7,4) DEFAULT 0,
    localtax2_type character varying(10),
    total_ht numeric(24,8),
    tva numeric(24,8),
    total_localtax1 numeric(24,8) DEFAULT 0,
    total_localtax2 numeric(24,8) DEFAULT 0,
    total_ttc numeric(24,8),
    product_type integer DEFAULT 0,
    date_start timestamp without time zone,
    date_end timestamp without time zone,
    info_bits integer DEFAULT 0,
    fk_code_ventilation integer DEFAULT 0 NOT NULL,
    special_code integer DEFAULT 0,
    rang integer DEFAULT 0,
    import_key character varying(14),
    fk_unit integer,
    fk_multicurrency integer,
    multicurrency_code character varying(3),
    multicurrency_subprice numeric(24,8) DEFAULT 0,
    multicurrency_subprice_ttc numeric(24,8) DEFAULT 0,
    multicurrency_total_ht numeric(24,8) DEFAULT 0,
    multicurrency_total_tva numeric(24,8) DEFAULT 0,
    multicurrency_total_ttc numeric(24,8) DEFAULT 0,
    extraparams character varying(255)
);


ALTER TABLE public.llx_facture_fourn_det OWNER TO dolibarr;

--
-- Name: llx_facture_fourn_det_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_facture_fourn_det_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_facture_fourn_det_extrafields OWNER TO dolibarr;

--
-- Name: llx_facture_fourn_det_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_facture_fourn_det_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_facture_fourn_det_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_facture_fourn_det_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_facture_fourn_det_extrafields_rowid_seq OWNED BY public.llx_facture_fourn_det_extrafields.rowid;


--
-- Name: llx_facture_fourn_det_rec; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_facture_fourn_det_rec (
    rowid integer NOT NULL,
    fk_facture_fourn integer NOT NULL,
    fk_parent_line integer,
    fk_product integer,
    ref character varying(50),
    label character varying(255) DEFAULT NULL::character varying,
    description text,
    pu_ht numeric(24,8),
    pu_ttc numeric(24,8),
    qty real,
    remise_percent real DEFAULT 0,
    fk_remise_except integer,
    vat_src_code character varying(10) DEFAULT ''::character varying,
    tva_tx numeric(7,4),
    localtax1_tx numeric(7,4) DEFAULT 0,
    localtax1_type character varying(10),
    localtax2_tx numeric(7,4) DEFAULT 0,
    localtax2_type character varying(10),
    total_ht numeric(24,8),
    total_tva numeric(24,8),
    total_localtax1 numeric(24,8) DEFAULT 0,
    total_localtax2 numeric(24,8) DEFAULT 0,
    total_ttc numeric(24,8),
    product_type integer DEFAULT 0,
    date_start integer,
    date_end integer,
    info_bits integer DEFAULT 0,
    special_code integer DEFAULT 0,
    rang integer DEFAULT 0,
    fk_unit integer,
    import_key character varying(14),
    fk_user_author integer,
    fk_user_modif integer,
    fk_multicurrency integer,
    multicurrency_code character varying(3),
    multicurrency_subprice numeric(24,8) DEFAULT 0,
    multicurrency_subprice_ttc numeric(24,8) DEFAULT 0,
    multicurrency_total_ht numeric(24,8) DEFAULT 0,
    multicurrency_total_tva numeric(24,8) DEFAULT 0,
    multicurrency_total_ttc numeric(24,8) DEFAULT 0,
    extraparams character varying(255)
);


ALTER TABLE public.llx_facture_fourn_det_rec OWNER TO dolibarr;

--
-- Name: llx_facture_fourn_det_rec_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_facture_fourn_det_rec_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_facture_fourn_det_rec_extrafields OWNER TO dolibarr;

--
-- Name: llx_facture_fourn_det_rec_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_facture_fourn_det_rec_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_facture_fourn_det_rec_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_facture_fourn_det_rec_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_facture_fourn_det_rec_extrafields_rowid_seq OWNED BY public.llx_facture_fourn_det_rec_extrafields.rowid;


--
-- Name: llx_facture_fourn_det_rec_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_facture_fourn_det_rec_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_facture_fourn_det_rec_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_facture_fourn_det_rec_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_facture_fourn_det_rec_rowid_seq OWNED BY public.llx_facture_fourn_det_rec.rowid;


--
-- Name: llx_facture_fourn_det_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_facture_fourn_det_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_facture_fourn_det_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_facture_fourn_det_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_facture_fourn_det_rowid_seq OWNED BY public.llx_facture_fourn_det.rowid;


--
-- Name: llx_facture_fourn_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_facture_fourn_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_facture_fourn_extrafields OWNER TO dolibarr;

--
-- Name: llx_facture_fourn_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_facture_fourn_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_facture_fourn_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_facture_fourn_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_facture_fourn_extrafields_rowid_seq OWNED BY public.llx_facture_fourn_extrafields.rowid;


--
-- Name: llx_facture_fourn_rec; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_facture_fourn_rec (
    rowid integer NOT NULL,
    titre character varying(200) NOT NULL,
    ref_supplier character varying(180) NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    subtype smallint,
    fk_soc integer NOT NULL,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    suspended integer DEFAULT 0,
    libelle character varying(255),
    amount numeric(24,8) DEFAULT 0 NOT NULL,
    remise real DEFAULT 0,
    vat_src_code character varying(10) DEFAULT ''::character varying,
    localtax1 numeric(24,8) DEFAULT 0,
    localtax2 numeric(24,8) DEFAULT 0,
    total_ht numeric(24,8) DEFAULT 0,
    total_tva numeric(24,8) DEFAULT 0,
    total_ttc numeric(24,8) DEFAULT 0,
    fk_user_author integer,
    fk_user_modif integer,
    fk_projet integer,
    fk_account integer,
    fk_cond_reglement integer,
    fk_mode_reglement integer,
    date_lim_reglement date,
    note_private text,
    note_public text,
    modelpdf character varying(255),
    fk_multicurrency integer,
    multicurrency_code character varying(3),
    multicurrency_tx numeric(24,8) DEFAULT 1,
    multicurrency_total_ht numeric(24,8) DEFAULT 0,
    multicurrency_total_tva numeric(24,8) DEFAULT 0,
    multicurrency_total_ttc numeric(24,8) DEFAULT 0,
    usenewprice integer DEFAULT 0,
    usenewcurrencyrate integer DEFAULT 0,
    frequency integer,
    unit_frequency character varying(2) DEFAULT 'm'::character varying,
    date_when timestamp without time zone,
    date_last_gen timestamp without time zone,
    nb_gen_done integer,
    nb_gen_max integer,
    auto_validate integer DEFAULT 0,
    generate_pdf integer DEFAULT 1
);


ALTER TABLE public.llx_facture_fourn_rec OWNER TO dolibarr;

--
-- Name: llx_facture_fourn_rec_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_facture_fourn_rec_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_facture_fourn_rec_extrafields OWNER TO dolibarr;

--
-- Name: llx_facture_fourn_rec_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_facture_fourn_rec_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_facture_fourn_rec_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_facture_fourn_rec_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_facture_fourn_rec_extrafields_rowid_seq OWNED BY public.llx_facture_fourn_rec_extrafields.rowid;


--
-- Name: llx_facture_fourn_rec_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_facture_fourn_rec_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_facture_fourn_rec_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_facture_fourn_rec_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_facture_fourn_rec_rowid_seq OWNED BY public.llx_facture_fourn_rec.rowid;


--
-- Name: llx_facture_fourn_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_facture_fourn_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_facture_fourn_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_facture_fourn_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_facture_fourn_rowid_seq OWNED BY public.llx_facture_fourn.rowid;


--
-- Name: llx_facture_rec; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_facture_rec (
    rowid integer NOT NULL,
    titre character varying(200) NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    subtype smallint,
    fk_soc integer NOT NULL,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    suspended integer DEFAULT 0,
    amount numeric(24,8) DEFAULT 0 NOT NULL,
    remise real DEFAULT 0,
    remise_percent real DEFAULT 0,
    remise_absolue real DEFAULT 0,
    vat_src_code character varying(10) DEFAULT ''::character varying,
    total_tva numeric(24,8) DEFAULT 0,
    localtax1 numeric(24,8) DEFAULT 0,
    localtax2 numeric(24,8) DEFAULT 0,
    revenuestamp numeric(24,8) DEFAULT 0,
    total_ht numeric(24,8) DEFAULT 0,
    total_ttc numeric(24,8) DEFAULT 0,
    fk_user_author integer,
    fk_user_modif integer,
    fk_projet integer,
    fk_cond_reglement integer DEFAULT 1 NOT NULL,
    fk_mode_reglement integer DEFAULT 0,
    date_lim_reglement date,
    fk_account integer,
    fk_societe_rib integer,
    note_private text,
    note_public text,
    modelpdf character varying(255),
    fk_multicurrency integer,
    multicurrency_code character varying(3),
    multicurrency_tx numeric(24,8) DEFAULT 1,
    multicurrency_total_ht numeric(24,8) DEFAULT 0,
    multicurrency_total_tva numeric(24,8) DEFAULT 0,
    multicurrency_total_ttc numeric(24,8) DEFAULT 0,
    usenewprice integer DEFAULT 0,
    usenewcurrencyrate integer DEFAULT 0,
    frequency integer,
    unit_frequency character varying(2) DEFAULT 'm'::character varying,
    rule_for_lines_dates character varying(255) DEFAULT 'prepaid'::character varying,
    date_when timestamp without time zone,
    date_last_gen timestamp without time zone,
    nb_gen_done integer,
    nb_gen_max integer,
    auto_validate integer DEFAULT 0,
    generate_pdf integer DEFAULT 1
);


ALTER TABLE public.llx_facture_rec OWNER TO dolibarr;

--
-- Name: llx_facture_rec_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_facture_rec_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_facture_rec_extrafields OWNER TO dolibarr;

--
-- Name: llx_facture_rec_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_facture_rec_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_facture_rec_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_facture_rec_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_facture_rec_extrafields_rowid_seq OWNED BY public.llx_facture_rec_extrafields.rowid;


--
-- Name: llx_facture_rec_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_facture_rec_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_facture_rec_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_facture_rec_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_facture_rec_rowid_seq OWNED BY public.llx_facture_rec.rowid;


--
-- Name: llx_facture_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_facture_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_facture_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_facture_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_facture_rowid_seq OWNED BY public.llx_facture.rowid;


--
-- Name: llx_facturedet; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_facturedet (
    rowid integer NOT NULL,
    fk_facture integer NOT NULL,
    fk_parent_line integer,
    fk_product integer,
    label character varying(255) DEFAULT NULL::character varying,
    description text,
    vat_src_code character varying(10) DEFAULT ''::character varying,
    tva_tx numeric(7,4),
    localtax1_tx numeric(7,4) DEFAULT 0,
    localtax1_type character varying(10),
    localtax2_tx numeric(7,4) DEFAULT 0,
    localtax2_type character varying(10),
    qty real,
    remise_percent real DEFAULT 0,
    remise real DEFAULT 0,
    fk_remise_except integer,
    subprice numeric(24,8),
    subprice_ttc numeric(24,8) DEFAULT 0,
    price numeric(24,8),
    total_ht numeric(24,8),
    total_tva numeric(24,8),
    total_localtax1 numeric(24,8) DEFAULT 0,
    total_localtax2 numeric(24,8) DEFAULT 0,
    total_ttc numeric(24,8),
    product_type integer DEFAULT 0,
    date_start timestamp without time zone,
    date_end timestamp without time zone,
    info_bits integer DEFAULT 0,
    buy_price_ht numeric(24,8) DEFAULT 0,
    fk_product_fournisseur_price integer,
    batch character varying(128),
    fk_warehouse integer,
    special_code integer DEFAULT 0,
    rang integer DEFAULT 0,
    fk_contract_line integer,
    fk_unit integer,
    import_key character varying(14),
    fk_code_ventilation integer DEFAULT 0 NOT NULL,
    situation_percent real DEFAULT 100,
    fk_prev_id integer,
    fk_user_author integer,
    fk_user_modif integer,
    fk_multicurrency integer,
    multicurrency_code character varying(3),
    multicurrency_subprice numeric(24,8) DEFAULT 0,
    multicurrency_subprice_ttc numeric(24,8) DEFAULT 0,
    multicurrency_total_ht numeric(24,8) DEFAULT 0,
    multicurrency_total_tva numeric(24,8) DEFAULT 0,
    multicurrency_total_ttc numeric(24,8) DEFAULT 0,
    ref_ext character varying(255) DEFAULT NULL::character varying,
    extraparams character varying(255)
);


ALTER TABLE public.llx_facturedet OWNER TO dolibarr;

--
-- Name: llx_facturedet_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_facturedet_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_facturedet_extrafields OWNER TO dolibarr;

--
-- Name: llx_facturedet_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_facturedet_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_facturedet_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_facturedet_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_facturedet_extrafields_rowid_seq OWNED BY public.llx_facturedet_extrafields.rowid;


--
-- Name: llx_facturedet_rec; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_facturedet_rec (
    rowid integer NOT NULL,
    fk_facture integer NOT NULL,
    fk_parent_line integer,
    fk_product integer,
    product_type integer DEFAULT 0,
    label character varying(255) DEFAULT NULL::character varying,
    description text,
    vat_src_code character varying(10) DEFAULT ''::character varying,
    tva_tx numeric(7,4),
    localtax1_tx numeric(7,4) DEFAULT 0,
    localtax1_type character varying(10),
    localtax2_tx numeric(7,4) DEFAULT 0,
    localtax2_type character varying(10),
    qty real,
    remise_percent real DEFAULT 0,
    remise real DEFAULT 0,
    subprice numeric(24,8) DEFAULT 0 NOT NULL,
    subprice_ttc numeric(24,8) DEFAULT 0,
    price numeric(24,8),
    total_ht numeric(24,8),
    total_tva numeric(24,8),
    total_localtax1 numeric(24,8) DEFAULT 0,
    total_localtax2 numeric(24,8) DEFAULT 0,
    total_ttc numeric(24,8),
    date_start_fill integer DEFAULT 0,
    date_end_fill integer DEFAULT 0,
    info_bits integer DEFAULT 0,
    buy_price_ht numeric(24,8) DEFAULT 0,
    fk_product_fournisseur_price integer,
    special_code integer DEFAULT 0,
    rang integer DEFAULT 0,
    fk_contract_line integer,
    fk_unit integer,
    import_key character varying(14),
    fk_user_author integer,
    fk_user_modif integer,
    fk_multicurrency integer,
    multicurrency_code character varying(3),
    multicurrency_subprice numeric(24,8) DEFAULT 0,
    multicurrency_subprice_ttc numeric(24,8) DEFAULT 0,
    multicurrency_total_ht numeric(24,8) DEFAULT 0,
    multicurrency_total_tva numeric(24,8) DEFAULT 0,
    multicurrency_total_ttc numeric(24,8) DEFAULT 0,
    extraparams character varying(255)
);


ALTER TABLE public.llx_facturedet_rec OWNER TO dolibarr;

--
-- Name: llx_facturedet_rec_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_facturedet_rec_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_facturedet_rec_extrafields OWNER TO dolibarr;

--
-- Name: llx_facturedet_rec_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_facturedet_rec_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_facturedet_rec_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_facturedet_rec_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_facturedet_rec_extrafields_rowid_seq OWNED BY public.llx_facturedet_rec_extrafields.rowid;


--
-- Name: llx_facturedet_rec_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_facturedet_rec_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_facturedet_rec_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_facturedet_rec_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_facturedet_rec_rowid_seq OWNED BY public.llx_facturedet_rec.rowid;


--
-- Name: llx_facturedet_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_facturedet_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_facturedet_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_facturedet_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_facturedet_rowid_seq OWNED BY public.llx_facturedet.rowid;


--
-- Name: llx_fichinter; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_fichinter (
    rowid integer NOT NULL,
    fk_soc integer NOT NULL,
    fk_projet integer DEFAULT 0,
    fk_contrat integer DEFAULT 0,
    ref character varying(30) NOT NULL,
    ref_ext character varying(255),
    ref_client character varying(255),
    entity integer DEFAULT 1 NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    datec timestamp without time zone,
    date_valid timestamp without time zone,
    datei date,
    fk_user_author integer,
    fk_user_modif integer,
    fk_user_valid integer,
    fk_statut smallint DEFAULT 0,
    dateo date,
    datee date,
    datet date,
    duree real,
    description text,
    signed_status smallint,
    online_sign_ip character varying(48),
    online_sign_name character varying(64),
    note_private text,
    note_public text,
    model_pdf character varying(255),
    last_main_doc character varying(255),
    import_key character varying(14),
    extraparams character varying(255)
);


ALTER TABLE public.llx_fichinter OWNER TO dolibarr;

--
-- Name: llx_fichinter_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_fichinter_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_fichinter_extrafields OWNER TO dolibarr;

--
-- Name: llx_fichinter_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_fichinter_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_fichinter_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_fichinter_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_fichinter_extrafields_rowid_seq OWNED BY public.llx_fichinter_extrafields.rowid;


--
-- Name: llx_fichinter_rec; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_fichinter_rec (
    rowid integer NOT NULL,
    title character varying(50) NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    fk_soc integer,
    datec timestamp without time zone,
    fk_contrat integer DEFAULT 0,
    fk_user_author integer,
    fk_projet integer,
    duree real,
    description text,
    modelpdf character varying(255),
    note_private text,
    note_public text,
    frequency integer,
    unit_frequency character varying(2) DEFAULT 'm'::character varying,
    date_when timestamp without time zone,
    date_last_gen timestamp without time zone,
    nb_gen_done integer,
    nb_gen_max integer,
    auto_validate integer,
    status smallint DEFAULT 0
);


ALTER TABLE public.llx_fichinter_rec OWNER TO dolibarr;

--
-- Name: llx_fichinter_rec_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_fichinter_rec_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_fichinter_rec_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_fichinter_rec_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_fichinter_rec_rowid_seq OWNED BY public.llx_fichinter_rec.rowid;


--
-- Name: llx_fichinter_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_fichinter_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_fichinter_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_fichinter_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_fichinter_rowid_seq OWNED BY public.llx_fichinter.rowid;


--
-- Name: llx_fichinterdet; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_fichinterdet (
    rowid integer NOT NULL,
    fk_fichinter integer,
    fk_parent_line integer,
    date timestamp without time zone,
    description text,
    duree integer,
    rang integer DEFAULT 0,
    extraparams character varying(255)
);


ALTER TABLE public.llx_fichinterdet OWNER TO dolibarr;

--
-- Name: llx_fichinterdet_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_fichinterdet_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_fichinterdet_extrafields OWNER TO dolibarr;

--
-- Name: llx_fichinterdet_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_fichinterdet_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_fichinterdet_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_fichinterdet_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_fichinterdet_extrafields_rowid_seq OWNED BY public.llx_fichinterdet_extrafields.rowid;


--
-- Name: llx_fichinterdet_rec; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_fichinterdet_rec (
    rowid integer NOT NULL,
    fk_fichinter integer NOT NULL,
    date timestamp without time zone,
    description text,
    duree integer,
    rang integer DEFAULT 0,
    total_ht numeric(24,8) DEFAULT NULL::numeric,
    subprice numeric(24,8) DEFAULT NULL::numeric,
    subprice_ttc numeric(24,8) DEFAULT 0,
    fk_parent_line integer,
    fk_product integer,
    label character varying(255) DEFAULT NULL::character varying,
    tva_tx numeric(6,3) DEFAULT NULL::numeric,
    localtax1_tx numeric(6,3) DEFAULT 0,
    localtax1_type character varying(1) DEFAULT NULL::character varying,
    localtax2_tx numeric(6,3) DEFAULT 0,
    localtax2_type character varying(1) DEFAULT NULL::character varying,
    qty numeric,
    remise_percent numeric DEFAULT 0,
    fk_remise_except integer,
    price numeric(24,8) DEFAULT NULL::numeric,
    total_tva numeric(24,8) DEFAULT NULL::numeric,
    total_localtax1 numeric(24,8) DEFAULT 0,
    total_localtax2 numeric(24,8) DEFAULT 0,
    total_ttc numeric(24,8) DEFAULT NULL::numeric,
    product_type integer DEFAULT 0,
    date_start timestamp without time zone,
    date_end timestamp without time zone,
    info_bits integer DEFAULT 0,
    buy_price_ht numeric(24,8) DEFAULT 0,
    fk_product_fournisseur_price integer,
    fk_code_ventilation integer DEFAULT 0 NOT NULL,
    special_code integer DEFAULT 0,
    fk_unit integer,
    import_key character varying(14) DEFAULT NULL::character varying,
    extraparams character varying(255)
);


ALTER TABLE public.llx_fichinterdet_rec OWNER TO dolibarr;

--
-- Name: llx_fichinterdet_rec_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_fichinterdet_rec_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_fichinterdet_rec_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_fichinterdet_rec_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_fichinterdet_rec_rowid_seq OWNED BY public.llx_fichinterdet_rec.rowid;


--
-- Name: llx_fichinterdet_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_fichinterdet_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_fichinterdet_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_fichinterdet_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_fichinterdet_rowid_seq OWNED BY public.llx_fichinterdet.rowid;


--
-- Name: llx_holiday; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_holiday (
    rowid integer NOT NULL,
    ref character varying(30) NOT NULL,
    ref_ext character varying(255),
    entity integer DEFAULT 1 NOT NULL,
    fk_user integer NOT NULL,
    fk_user_create integer,
    fk_user_modif integer,
    fk_type integer NOT NULL,
    date_create timestamp without time zone,
    description character varying(255) NOT NULL,
    date_debut date NOT NULL,
    date_fin date NOT NULL,
    halfday integer DEFAULT 0,
    nb_open_day numeric(24,8) DEFAULT NULL::numeric,
    statut integer DEFAULT 1 NOT NULL,
    fk_validator integer NOT NULL,
    date_valid timestamp without time zone,
    fk_user_valid integer,
    date_approval timestamp without time zone,
    fk_user_approve integer,
    date_refuse timestamp without time zone,
    fk_user_refuse integer,
    date_cancel timestamp without time zone,
    fk_user_cancel integer,
    detail_refuse character varying(250) DEFAULT NULL::character varying,
    note_private text,
    note_public text,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    import_key character varying(14),
    extraparams character varying(255)
);


ALTER TABLE public.llx_holiday OWNER TO dolibarr;

--
-- Name: llx_holiday_config; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_holiday_config (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    name character varying(128) NOT NULL,
    value text
);


ALTER TABLE public.llx_holiday_config OWNER TO dolibarr;

--
-- Name: llx_holiday_config_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_holiday_config_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_holiday_config_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_holiday_config_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_holiday_config_rowid_seq OWNED BY public.llx_holiday_config.rowid;


--
-- Name: llx_holiday_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_holiday_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_holiday_extrafields OWNER TO dolibarr;

--
-- Name: llx_holiday_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_holiday_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_holiday_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_holiday_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_holiday_extrafields_rowid_seq OWNED BY public.llx_holiday_extrafields.rowid;


--
-- Name: llx_holiday_logs; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_holiday_logs (
    rowid integer NOT NULL,
    date_action timestamp without time zone,
    fk_user_action integer NOT NULL,
    fk_user_update integer NOT NULL,
    fk_type integer NOT NULL,
    type_action character varying(255) NOT NULL,
    prev_solde character varying(255) NOT NULL,
    new_solde character varying(255) NOT NULL
);


ALTER TABLE public.llx_holiday_logs OWNER TO dolibarr;

--
-- Name: llx_holiday_logs_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_holiday_logs_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_holiday_logs_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_holiday_logs_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_holiday_logs_rowid_seq OWNED BY public.llx_holiday_logs.rowid;


--
-- Name: llx_holiday_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_holiday_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_holiday_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_holiday_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_holiday_rowid_seq OWNED BY public.llx_holiday.rowid;


--
-- Name: llx_holiday_users; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_holiday_users (
    fk_user integer NOT NULL,
    fk_type integer NOT NULL,
    nb_holiday real DEFAULT 0 NOT NULL
);


ALTER TABLE public.llx_holiday_users OWNER TO dolibarr;

--
-- Name: llx_import_model; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_import_model (
    rowid integer NOT NULL,
    entity integer DEFAULT 0 NOT NULL,
    fk_user integer DEFAULT 0 NOT NULL,
    label character varying(50) NOT NULL,
    type character varying(64) NOT NULL,
    field text NOT NULL
);


ALTER TABLE public.llx_import_model OWNER TO dolibarr;

--
-- Name: llx_import_model_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_import_model_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_import_model_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_import_model_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_import_model_rowid_seq OWNED BY public.llx_import_model.rowid;


--
-- Name: llx_links; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_links (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    datea timestamp without time zone,
    url character varying(255) NOT NULL,
    label character varying(255) NOT NULL,
    objecttype character varying(255) NOT NULL,
    objectid integer NOT NULL,
    share character varying(128),
    share_pass character varying(32)
);


ALTER TABLE public.llx_links OWNER TO dolibarr;

--
-- Name: llx_links_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_links_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_links_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_links_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_links_rowid_seq OWNED BY public.llx_links.rowid;


--
-- Name: llx_localtax; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_localtax (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    localtaxtype smallint,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    datep date,
    datev date,
    amount numeric,
    label character varying(255),
    note text,
    fk_bank integer,
    fk_user_creat integer,
    fk_user_modif integer
);


ALTER TABLE public.llx_localtax OWNER TO dolibarr;

--
-- Name: llx_localtax_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_localtax_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_localtax_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_localtax_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_localtax_rowid_seq OWNED BY public.llx_localtax.rowid;


--
-- Name: llx_mailing_unsubscribe; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_mailing_unsubscribe (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    email character varying(255),
    unsubscribegroup character varying(128) DEFAULT ''::character varying,
    ip character varying(128),
    date_creat timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.llx_mailing_unsubscribe OWNER TO dolibarr;

--
-- Name: llx_mailing_unsubscribe_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_mailing_unsubscribe_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_mailing_unsubscribe_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_mailing_unsubscribe_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_mailing_unsubscribe_rowid_seq OWNED BY public.llx_mailing_unsubscribe.rowid;


--
-- Name: llx_menu; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_menu (
    rowid integer NOT NULL,
    menu_handler character varying(16) NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    module character varying(255),
    type character varying(4) NOT NULL,
    mainmenu character varying(100) NOT NULL,
    leftmenu character varying(100),
    fk_menu integer NOT NULL,
    fk_mainmenu character varying(100),
    fk_leftmenu character varying(100),
    "position" integer NOT NULL,
    url text NOT NULL,
    showtopmenuinframe integer DEFAULT 0,
    target character varying(100),
    titre character varying(255) NOT NULL,
    prefix character varying(255),
    langs character varying(100),
    level smallint,
    perms text,
    enabled text,
    usertype integer DEFAULT 0 NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.llx_menu OWNER TO dolibarr;

--
-- Name: llx_menu_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_menu_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_menu_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_menu_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_menu_rowid_seq OWNED BY public.llx_menu.rowid;


--
-- Name: llx_multicurrency; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_multicurrency (
    rowid integer NOT NULL,
    date_create timestamp without time zone,
    code character varying(255) DEFAULT NULL::character varying,
    name character varying(255) DEFAULT NULL::character varying,
    entity integer DEFAULT 1,
    fk_user integer,
    tms timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.llx_multicurrency OWNER TO dolibarr;

--
-- Name: llx_multicurrency_rate; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_multicurrency_rate (
    rowid integer NOT NULL,
    date_sync timestamp without time zone,
    rate numeric DEFAULT 0 NOT NULL,
    rate_indirect numeric DEFAULT 0,
    fk_multicurrency integer NOT NULL,
    entity integer DEFAULT 1,
    tms timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.llx_multicurrency_rate OWNER TO dolibarr;

--
-- Name: llx_multicurrency_rate_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_multicurrency_rate_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_multicurrency_rate_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_multicurrency_rate_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_multicurrency_rate_rowid_seq OWNED BY public.llx_multicurrency_rate.rowid;


--
-- Name: llx_multicurrency_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_multicurrency_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_multicurrency_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_multicurrency_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_multicurrency_rowid_seq OWNED BY public.llx_multicurrency.rowid;


--
-- Name: llx_notify; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_notify (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    daten timestamp without time zone,
    fk_action integer NOT NULL,
    fk_soc integer,
    fk_contact integer,
    fk_user integer,
    type character varying(16) DEFAULT 'email'::character varying,
    type_target character varying(16),
    objet_type character varying(24) NOT NULL,
    objet_id integer NOT NULL,
    email character varying(255)
);


ALTER TABLE public.llx_notify OWNER TO dolibarr;

--
-- Name: llx_notify_def; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_notify_def (
    rowid integer NOT NULL,
    entity integer DEFAULT 1,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    datec date,
    fk_action integer NOT NULL,
    fk_soc integer,
    fk_contact integer,
    fk_user integer,
    email character varying(255),
    threshold numeric(24,8),
    context character varying(128),
    type character varying(16) DEFAULT 'email'::character varying
);


ALTER TABLE public.llx_notify_def OWNER TO dolibarr;

--
-- Name: llx_notify_def_object; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_notify_def_object (
    id integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    objet_type character varying(16),
    objet_id integer NOT NULL,
    type_notif character varying(16) DEFAULT 'browser'::character varying,
    date_notif timestamp without time zone,
    user_id integer,
    moreparam character varying(255)
);


ALTER TABLE public.llx_notify_def_object OWNER TO dolibarr;

--
-- Name: llx_notify_def_object_id_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_notify_def_object_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_notify_def_object_id_seq OWNER TO dolibarr;

--
-- Name: llx_notify_def_object_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_notify_def_object_id_seq OWNED BY public.llx_notify_def_object.id;


--
-- Name: llx_notify_def_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_notify_def_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_notify_def_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_notify_def_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_notify_def_rowid_seq OWNED BY public.llx_notify_def.rowid;


--
-- Name: llx_notify_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_notify_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_notify_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_notify_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_notify_rowid_seq OWNED BY public.llx_notify.rowid;


--
-- Name: llx_oauth_state; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_oauth_state (
    rowid integer NOT NULL,
    service character varying(36),
    state character varying(128),
    fk_user integer,
    fk_adherent integer,
    entity integer DEFAULT 1
);


ALTER TABLE public.llx_oauth_state OWNER TO dolibarr;

--
-- Name: llx_oauth_state_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_oauth_state_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_oauth_state_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_oauth_state_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_oauth_state_rowid_seq OWNED BY public.llx_oauth_state.rowid;


--
-- Name: llx_oauth_token; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_oauth_token (
    rowid integer NOT NULL,
    service character varying(36),
    token text,
    tokenstring text,
    state text,
    fk_soc integer,
    fk_user integer,
    fk_adherent integer,
    restricted_ips character varying(200),
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    entity integer DEFAULT 1
);


ALTER TABLE public.llx_oauth_token OWNER TO dolibarr;

--
-- Name: llx_oauth_token_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_oauth_token_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_oauth_token_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_oauth_token_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_oauth_token_rowid_seq OWNED BY public.llx_oauth_token.rowid;


--
-- Name: llx_object_lang; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_object_lang (
    rowid integer NOT NULL,
    fk_object integer DEFAULT 0 NOT NULL,
    type_object character varying(32) NOT NULL,
    property character varying(32) NOT NULL,
    lang character varying(5) DEFAULT ''::character varying NOT NULL,
    value text,
    import_key character varying(14) DEFAULT NULL::character varying
);


ALTER TABLE public.llx_object_lang OWNER TO dolibarr;

--
-- Name: llx_object_lang_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_object_lang_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_object_lang_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_object_lang_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_object_lang_rowid_seq OWNED BY public.llx_object_lang.rowid;


--
-- Name: llx_onlinesignature; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_onlinesignature (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    object_type character varying(32) NOT NULL,
    object_id integer NOT NULL,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    name character varying(255) NOT NULL,
    ip character varying(128),
    pathoffile character varying(255)
);


ALTER TABLE public.llx_onlinesignature OWNER TO dolibarr;

--
-- Name: llx_onlinesignature_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_onlinesignature_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_onlinesignature_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_onlinesignature_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_onlinesignature_rowid_seq OWNED BY public.llx_onlinesignature.rowid;


--
-- Name: llx_overwrite_trans; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_overwrite_trans (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    lang character varying(5),
    transkey character varying(128),
    transvalue text
);


ALTER TABLE public.llx_overwrite_trans OWNER TO dolibarr;

--
-- Name: llx_overwrite_trans_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_overwrite_trans_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_overwrite_trans_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_overwrite_trans_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_overwrite_trans_rowid_seq OWNED BY public.llx_overwrite_trans.rowid;


--
-- Name: llx_paiement; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_paiement (
    rowid integer NOT NULL,
    ref character varying(30),
    ref_ext character varying(255),
    entity integer DEFAULT 1 NOT NULL,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    datep timestamp without time zone,
    amount numeric(24,8) DEFAULT 0,
    multicurrency_amount numeric(24,8) DEFAULT 0,
    fk_paiement integer NOT NULL,
    num_paiement character varying(50),
    note text,
    ext_payment_id character varying(255),
    ext_payment_site character varying(128),
    fk_bank integer DEFAULT 0 NOT NULL,
    fk_user_creat integer,
    fk_user_modif integer,
    statut smallint DEFAULT 0 NOT NULL,
    fk_export_compta integer DEFAULT 0 NOT NULL,
    pos_change numeric(24,8) DEFAULT 0
);


ALTER TABLE public.llx_paiement OWNER TO dolibarr;

--
-- Name: llx_paiement_facture; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_paiement_facture (
    rowid integer NOT NULL,
    fk_paiement integer,
    fk_facture integer,
    amount numeric(24,8) DEFAULT 0,
    multicurrency_code character varying(3),
    multicurrency_tx numeric(24,8) DEFAULT 1,
    multicurrency_amount numeric(24,8) DEFAULT 0
);


ALTER TABLE public.llx_paiement_facture OWNER TO dolibarr;

--
-- Name: llx_paiement_facture_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_paiement_facture_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_paiement_facture_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_paiement_facture_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_paiement_facture_rowid_seq OWNED BY public.llx_paiement_facture.rowid;


--
-- Name: llx_paiement_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_paiement_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_paiement_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_paiement_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_paiement_rowid_seq OWNED BY public.llx_paiement.rowid;


--
-- Name: llx_paiementcharge; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_paiementcharge (
    rowid integer NOT NULL,
    fk_charge integer,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    datep timestamp without time zone,
    amount numeric(24,8) DEFAULT 0,
    fk_typepaiement integer NOT NULL,
    num_paiement character varying(50),
    note text,
    fk_bank integer NOT NULL,
    fk_user_creat integer,
    fk_user_modif integer
);


ALTER TABLE public.llx_paiementcharge OWNER TO dolibarr;

--
-- Name: llx_paiementcharge_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_paiementcharge_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_paiementcharge_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_paiementcharge_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_paiementcharge_rowid_seq OWNED BY public.llx_paiementcharge.rowid;


--
-- Name: llx_paiementfourn; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_paiementfourn (
    rowid integer NOT NULL,
    ref character varying(30),
    entity integer DEFAULT 1,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    datec timestamp without time zone,
    datep timestamp without time zone,
    amount numeric(24,8) DEFAULT 0,
    multicurrency_amount numeric(24,8) DEFAULT 0,
    fk_user_author integer,
    fk_user_modif integer,
    fk_paiement integer NOT NULL,
    num_paiement character varying(50),
    note text,
    fk_bank integer NOT NULL,
    statut smallint DEFAULT 0 NOT NULL,
    model_pdf character varying(255)
);


ALTER TABLE public.llx_paiementfourn OWNER TO dolibarr;

--
-- Name: llx_paiementfourn_facturefourn; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_paiementfourn_facturefourn (
    rowid integer NOT NULL,
    fk_paiementfourn integer,
    fk_facturefourn integer,
    amount numeric(24,8) DEFAULT 0,
    multicurrency_code character varying(3),
    multicurrency_tx numeric(24,8) DEFAULT 1,
    multicurrency_amount numeric(24,8) DEFAULT 0
);


ALTER TABLE public.llx_paiementfourn_facturefourn OWNER TO dolibarr;

--
-- Name: llx_paiementfourn_facturefourn_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_paiementfourn_facturefourn_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_paiementfourn_facturefourn_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_paiementfourn_facturefourn_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_paiementfourn_facturefourn_rowid_seq OWNED BY public.llx_paiementfourn_facturefourn.rowid;


--
-- Name: llx_paiementfourn_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_paiementfourn_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_paiementfourn_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_paiementfourn_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_paiementfourn_rowid_seq OWNED BY public.llx_paiementfourn.rowid;


--
-- Name: llx_payment_donation; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_payment_donation (
    rowid integer NOT NULL,
    fk_donation integer,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    datep timestamp without time zone,
    amount numeric(24,8) DEFAULT 0,
    fk_typepayment integer NOT NULL,
    num_payment character varying(50),
    note text,
    ext_payment_id character varying(255),
    ext_payment_site character varying(128),
    fk_bank integer NOT NULL,
    fk_user_creat integer,
    fk_user_modif integer
);


ALTER TABLE public.llx_payment_donation OWNER TO dolibarr;

--
-- Name: llx_payment_donation_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_payment_donation_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_payment_donation_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_payment_donation_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_payment_donation_rowid_seq OWNED BY public.llx_payment_donation.rowid;


--
-- Name: llx_payment_expensereport; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_payment_expensereport (
    rowid integer NOT NULL,
    fk_expensereport integer,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    datep timestamp without time zone,
    amount numeric(24,8) DEFAULT 0,
    fk_typepayment integer NOT NULL,
    num_payment character varying(50),
    note text,
    fk_bank integer NOT NULL,
    fk_user_creat integer,
    fk_user_modif integer
);


ALTER TABLE public.llx_payment_expensereport OWNER TO dolibarr;

--
-- Name: llx_payment_expensereport_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_payment_expensereport_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_payment_expensereport_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_payment_expensereport_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_payment_expensereport_rowid_seq OWNED BY public.llx_payment_expensereport.rowid;


--
-- Name: llx_payment_loan; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_payment_loan (
    rowid integer NOT NULL,
    fk_loan integer,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    datep timestamp without time zone,
    amount_capital numeric(24,8) DEFAULT 0,
    amount_insurance numeric(24,8) DEFAULT 0,
    amount_interest numeric(24,8) DEFAULT 0,
    fk_typepayment integer NOT NULL,
    num_payment character varying(50),
    note_private text,
    note_public text,
    fk_bank integer NOT NULL,
    fk_user_creat integer,
    fk_user_modif integer
);


ALTER TABLE public.llx_payment_loan OWNER TO dolibarr;

--
-- Name: llx_payment_loan_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_payment_loan_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_payment_loan_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_payment_loan_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_payment_loan_rowid_seq OWNED BY public.llx_payment_loan.rowid;


--
-- Name: llx_payment_salary; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_payment_salary (
    rowid integer NOT NULL,
    ref character varying(30),
    tms timestamp without time zone DEFAULT now() NOT NULL,
    datec timestamp without time zone,
    fk_user integer,
    datep timestamp without time zone,
    datev date,
    salary numeric(24,8),
    amount numeric(24,8) DEFAULT 0 NOT NULL,
    fk_projet integer,
    fk_typepayment integer NOT NULL,
    num_payment character varying(50),
    label character varying(255),
    datesp date,
    dateep date,
    entity integer DEFAULT 1 NOT NULL,
    note text,
    fk_bank integer,
    fk_user_author integer,
    fk_user_modif integer,
    fk_salary integer
);


ALTER TABLE public.llx_payment_salary OWNER TO dolibarr;

--
-- Name: llx_payment_salary_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_payment_salary_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_payment_salary_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_payment_salary_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_payment_salary_rowid_seq OWNED BY public.llx_payment_salary.rowid;


--
-- Name: llx_payment_various; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_payment_various (
    rowid integer NOT NULL,
    ref character varying(30),
    num_payment character varying(50),
    label character varying(255),
    tms timestamp without time zone DEFAULT now() NOT NULL,
    datec timestamp without time zone,
    datep date,
    datev date,
    sens smallint DEFAULT 0 NOT NULL,
    amount numeric(24,8) DEFAULT 0 NOT NULL,
    fk_typepayment integer NOT NULL,
    accountancy_code character varying(32),
    subledger_account character varying(32),
    fk_projet integer,
    entity integer DEFAULT 1 NOT NULL,
    note text,
    fk_bank integer,
    fk_user_author integer,
    fk_user_modif integer
);


ALTER TABLE public.llx_payment_various OWNER TO dolibarr;

--
-- Name: llx_payment_various_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_payment_various_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_payment_various_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_payment_various_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_payment_various_rowid_seq OWNED BY public.llx_payment_various.rowid;


--
-- Name: llx_payment_vat; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_payment_vat (
    rowid integer NOT NULL,
    fk_tva integer,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    datep timestamp without time zone,
    amount numeric(24,8) DEFAULT 0,
    fk_typepaiement integer NOT NULL,
    num_paiement character varying(50),
    note text,
    fk_bank integer NOT NULL,
    fk_user_creat integer,
    fk_user_modif integer
);


ALTER TABLE public.llx_payment_vat OWNER TO dolibarr;

--
-- Name: llx_payment_vat_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_payment_vat_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_payment_vat_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_payment_vat_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_payment_vat_rowid_seq OWNED BY public.llx_payment_vat.rowid;


--
-- Name: llx_paymentexpensereport_expensereport; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_paymentexpensereport_expensereport (
    rowid integer NOT NULL,
    fk_payment integer,
    fk_expensereport integer,
    amount numeric(24,8) DEFAULT 0,
    multicurrency_code character varying(3),
    multicurrency_tx numeric(24,8) DEFAULT 1,
    multicurrency_amount numeric(24,8) DEFAULT 0
);


ALTER TABLE public.llx_paymentexpensereport_expensereport OWNER TO dolibarr;

--
-- Name: llx_paymentexpensereport_expensereport_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_paymentexpensereport_expensereport_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_paymentexpensereport_expensereport_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_paymentexpensereport_expensereport_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_paymentexpensereport_expensereport_rowid_seq OWNED BY public.llx_paymentexpensereport_expensereport.rowid;


--
-- Name: llx_pos_cash_fence; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_pos_cash_fence (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    ref character varying(64),
    label character varying(255),
    opening numeric(24,8) DEFAULT 0,
    cash numeric(24,8) DEFAULT 0,
    card numeric(24,8) DEFAULT 0,
    cheque numeric(24,8) DEFAULT 0,
    status integer,
    date_creation timestamp without time zone,
    date_valid timestamp without time zone,
    day_close integer,
    month_close integer,
    year_close integer,
    posmodule character varying(30),
    posnumber character varying(30),
    fk_user_creat integer,
    fk_user_valid integer,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_pos_cash_fence OWNER TO dolibarr;

--
-- Name: llx_pos_cash_fence_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_pos_cash_fence_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_pos_cash_fence_extrafields OWNER TO dolibarr;

--
-- Name: llx_pos_cash_fence_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_pos_cash_fence_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_pos_cash_fence_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_pos_cash_fence_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_pos_cash_fence_extrafields_rowid_seq OWNED BY public.llx_pos_cash_fence_extrafields.rowid;


--
-- Name: llx_pos_cash_fence_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_pos_cash_fence_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_pos_cash_fence_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_pos_cash_fence_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_pos_cash_fence_rowid_seq OWNED BY public.llx_pos_cash_fence.rowid;


--
-- Name: llx_prelevement; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_prelevement (
    rowid integer NOT NULL,
    fk_facture integer,
    fk_facture_fourn integer,
    fk_salary integer,
    fk_prelevement_lignes integer NOT NULL
);


ALTER TABLE public.llx_prelevement OWNER TO dolibarr;

--
-- Name: llx_prelevement_bons; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_prelevement_bons (
    rowid integer NOT NULL,
    type character varying(16) DEFAULT 'debit-order'::character varying,
    ref character varying(12),
    entity integer DEFAULT 1 NOT NULL,
    datec timestamp without time zone,
    amount numeric(24,8) DEFAULT 0,
    statut smallint DEFAULT 0,
    credite smallint DEFAULT 0,
    note text,
    date_trans timestamp without time zone,
    method_trans smallint,
    fk_user_trans integer,
    date_credit timestamp without time zone,
    fk_user_credit integer,
    fk_bank_account integer
);


ALTER TABLE public.llx_prelevement_bons OWNER TO dolibarr;

--
-- Name: llx_prelevement_bons_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_prelevement_bons_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_prelevement_bons_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_prelevement_bons_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_prelevement_bons_rowid_seq OWNED BY public.llx_prelevement_bons.rowid;


--
-- Name: llx_prelevement_demande; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_prelevement_demande (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    fk_facture integer,
    fk_facture_fourn integer,
    fk_salary integer,
    sourcetype character varying(32),
    amount numeric(24,8) NOT NULL,
    date_demande timestamp without time zone,
    traite smallint DEFAULT 0,
    date_traite timestamp without time zone,
    fk_prelevement_bons integer,
    fk_user_demande integer NOT NULL,
    fk_societe_rib integer,
    code_banque character varying(128),
    code_guichet character varying(6),
    number character varying(255),
    cle_rib character varying(5),
    type character varying(12) DEFAULT ''::character varying,
    ext_payment_id character varying(255),
    ext_payment_site character varying(128)
);


ALTER TABLE public.llx_prelevement_demande OWNER TO dolibarr;

--
-- Name: llx_prelevement_demande_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_prelevement_demande_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_prelevement_demande_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_prelevement_demande_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_prelevement_demande_rowid_seq OWNED BY public.llx_prelevement_demande.rowid;


--
-- Name: llx_prelevement_lignes; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_prelevement_lignes (
    rowid integer NOT NULL,
    fk_prelevement_bons integer,
    fk_soc integer NOT NULL,
    fk_user integer,
    statut smallint DEFAULT 0,
    client_nom character varying(255),
    amount numeric(24,8) DEFAULT 0,
    code_banque character varying(128),
    code_guichet character varying(6),
    number character varying(255),
    cle_rib character varying(5),
    note text,
    tms timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.llx_prelevement_lignes OWNER TO dolibarr;

--
-- Name: llx_prelevement_lignes_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_prelevement_lignes_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_prelevement_lignes_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_prelevement_lignes_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_prelevement_lignes_rowid_seq OWNED BY public.llx_prelevement_lignes.rowid;


--
-- Name: llx_prelevement_rejet; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_prelevement_rejet (
    rowid integer NOT NULL,
    fk_prelevement_lignes integer,
    date_rejet timestamp without time zone,
    motif integer,
    date_creation timestamp without time zone,
    fk_user_creation integer,
    note text,
    afacturer smallint DEFAULT 0,
    fk_facture integer
);


ALTER TABLE public.llx_prelevement_rejet OWNER TO dolibarr;

--
-- Name: llx_prelevement_rejet_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_prelevement_rejet_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_prelevement_rejet_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_prelevement_rejet_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_prelevement_rejet_rowid_seq OWNED BY public.llx_prelevement_rejet.rowid;


--
-- Name: llx_prelevement_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_prelevement_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_prelevement_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_prelevement_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_prelevement_rowid_seq OWNED BY public.llx_prelevement.rowid;


--
-- Name: llx_printing; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_printing (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    datec timestamp without time zone,
    printer_name text NOT NULL,
    printer_location text NOT NULL,
    printer_id character varying(255) NOT NULL,
    copy integer DEFAULT 1 NOT NULL,
    module character varying(16) NOT NULL,
    driver character varying(16) NOT NULL,
    userid integer
);


ALTER TABLE public.llx_printing OWNER TO dolibarr;

--
-- Name: llx_printing_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_printing_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_printing_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_printing_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_printing_rowid_seq OWNED BY public.llx_printing.rowid;


--
-- Name: llx_product; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_product (
    rowid integer NOT NULL,
    ref character varying(128) NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    ref_ext character varying(128),
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_parent integer DEFAULT 0,
    label character varying(255) NOT NULL,
    description text,
    note_public text,
    note text,
    customcode character varying(32),
    fk_country integer,
    fk_state integer,
    price numeric(24,8) DEFAULT 0,
    price_ttc numeric(24,8) DEFAULT 0,
    price_min numeric(24,8) DEFAULT 0,
    price_min_ttc numeric(24,8) DEFAULT 0,
    price_base_type character varying(3) DEFAULT 'HT'::character varying,
    price_label character varying(255),
    cost_price numeric(24,8) DEFAULT NULL::numeric,
    default_vat_code character varying(10),
    tva_tx numeric(7,4),
    recuperableonly integer DEFAULT 0 NOT NULL,
    localtax1_tx numeric(7,4) DEFAULT 0,
    localtax1_type character varying(10) DEFAULT '0'::character varying NOT NULL,
    localtax2_tx numeric(7,4) DEFAULT 0,
    localtax2_type character varying(10) DEFAULT '0'::character varying NOT NULL,
    fk_user_author integer,
    fk_user_modif integer,
    tosell smallint DEFAULT 1,
    tobuy smallint DEFAULT 1,
    tobatch smallint DEFAULT 0 NOT NULL,
    sell_or_eat_by_mandatory smallint DEFAULT 0 NOT NULL,
    batch_mask character varying(32) DEFAULT NULL::character varying,
    fk_product_type integer DEFAULT 0,
    duration character varying(6),
    seuil_stock_alerte numeric,
    url character varying(255),
    barcode character varying(180) DEFAULT NULL::character varying,
    fk_barcode_type integer,
    accountancy_code_sell character varying(32),
    accountancy_code_sell_intra character varying(32),
    accountancy_code_sell_export character varying(32),
    accountancy_code_buy character varying(32),
    accountancy_code_buy_intra character varying(32),
    accountancy_code_buy_export character varying(32),
    partnumber character varying(32),
    net_measure numeric,
    net_measure_units smallint,
    weight numeric,
    weight_units smallint,
    length numeric,
    length_units smallint,
    width numeric,
    width_units smallint,
    height numeric,
    height_units smallint,
    surface numeric,
    surface_units smallint,
    volume numeric,
    volume_units smallint,
    stockable_product integer DEFAULT 1 NOT NULL,
    stock real,
    pmp numeric(24,8) DEFAULT 0 NOT NULL,
    fifo numeric(24,8),
    lifo numeric(24,8),
    fk_default_warehouse integer,
    fk_default_bom integer,
    fk_default_workstation integer,
    canvas character varying(32) DEFAULT NULL::character varying,
    finished smallint,
    lifetime integer,
    qc_frequency integer,
    hidden smallint DEFAULT 0,
    import_key character varying(14),
    model_pdf character varying(255),
    fk_price_expression integer,
    desiredstock numeric DEFAULT 0,
    fk_unit integer,
    price_autogen smallint DEFAULT 0,
    fk_project integer,
    mandatory_period smallint DEFAULT 0,
    last_main_doc character varying(255),
    packaging numeric(24,8) DEFAULT NULL::numeric
);


ALTER TABLE public.llx_product OWNER TO dolibarr;

--
-- Name: llx_product_association; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_product_association (
    rowid integer NOT NULL,
    fk_product_pere integer DEFAULT 0 NOT NULL,
    fk_product_fils integer DEFAULT 0 NOT NULL,
    qty numeric,
    incdec integer DEFAULT 1,
    rang integer DEFAULT 0,
    import_key character varying(14) DEFAULT NULL::character varying
);


ALTER TABLE public.llx_product_association OWNER TO dolibarr;

--
-- Name: llx_product_association_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_product_association_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_product_association_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_product_association_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_product_association_rowid_seq OWNED BY public.llx_product_association.rowid;


--
-- Name: llx_product_attribute; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_product_attribute (
    rowid integer NOT NULL,
    ref character varying(255) NOT NULL,
    ref_ext character varying(255),
    label character varying(255) NOT NULL,
    "position" integer DEFAULT 0 NOT NULL,
    entity integer DEFAULT 1 NOT NULL
);


ALTER TABLE public.llx_product_attribute OWNER TO dolibarr;

--
-- Name: llx_product_attribute_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_product_attribute_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_product_attribute_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_product_attribute_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_product_attribute_rowid_seq OWNED BY public.llx_product_attribute.rowid;


--
-- Name: llx_product_attribute_value; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_product_attribute_value (
    rowid integer NOT NULL,
    fk_product_attribute integer NOT NULL,
    ref character varying(180) NOT NULL,
    value character varying(255) NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    "position" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.llx_product_attribute_value OWNER TO dolibarr;

--
-- Name: llx_product_attribute_value_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_product_attribute_value_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_product_attribute_value_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_product_attribute_value_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_product_attribute_value_rowid_seq OWNED BY public.llx_product_attribute_value.rowid;


--
-- Name: llx_product_batch; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_product_batch (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_product_stock integer NOT NULL,
    eatby timestamp without time zone,
    sellby timestamp without time zone,
    batch character varying(128) NOT NULL,
    qty numeric DEFAULT 0 NOT NULL,
    import_key character varying(14) DEFAULT NULL::character varying
);


ALTER TABLE public.llx_product_batch OWNER TO dolibarr;

--
-- Name: llx_product_batch_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_product_batch_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_product_batch_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_product_batch_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_product_batch_rowid_seq OWNED BY public.llx_product_batch.rowid;


--
-- Name: llx_product_customer_price; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_product_customer_price (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_product integer NOT NULL,
    fk_soc integer NOT NULL,
    ref_customer character varying(128),
    date_begin date,
    date_end date,
    price numeric(24,8) DEFAULT 0,
    price_ttc numeric(24,8) DEFAULT 0,
    price_min numeric(24,8) DEFAULT 0,
    price_min_ttc numeric(24,8) DEFAULT 0,
    price_base_type character varying(3) DEFAULT 'HT'::character varying,
    default_vat_code character varying(10),
    tva_tx numeric(7,4),
    recuperableonly integer DEFAULT 0 NOT NULL,
    localtax1_tx numeric(7,4) DEFAULT 0,
    localtax1_type character varying(10) DEFAULT '0'::character varying NOT NULL,
    localtax2_tx numeric(7,4) DEFAULT 0,
    localtax2_type character varying(10) DEFAULT '0'::character varying NOT NULL,
    discount_percent real DEFAULT 0,
    fk_user integer,
    price_label character varying(255),
    import_key character varying(14)
);


ALTER TABLE public.llx_product_customer_price OWNER TO dolibarr;

--
-- Name: llx_product_customer_price_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_product_customer_price_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_product_customer_price_extrafields OWNER TO dolibarr;

--
-- Name: llx_product_customer_price_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_product_customer_price_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_product_customer_price_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_product_customer_price_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_product_customer_price_extrafields_rowid_seq OWNED BY public.llx_product_customer_price_extrafields.rowid;


--
-- Name: llx_product_customer_price_log; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_product_customer_price_log (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    datec timestamp without time zone,
    fk_product integer NOT NULL,
    fk_soc integer DEFAULT 0 NOT NULL,
    ref_customer character varying(30),
    date_begin date,
    date_end date,
    price numeric(24,8) DEFAULT 0,
    price_ttc numeric(24,8) DEFAULT 0,
    price_min numeric(24,8) DEFAULT 0,
    price_min_ttc numeric(24,8) DEFAULT 0,
    price_base_type character varying(3) DEFAULT 'HT'::character varying,
    default_vat_code character varying(10),
    tva_tx numeric(7,4),
    recuperableonly integer DEFAULT 0 NOT NULL,
    localtax1_tx numeric(7,4) DEFAULT 0,
    localtax1_type character varying(10) DEFAULT '0'::character varying NOT NULL,
    localtax2_tx numeric(7,4) DEFAULT 0,
    localtax2_type character varying(10) DEFAULT '0'::character varying NOT NULL,
    discount_percent real DEFAULT 0,
    fk_user integer,
    price_label character varying(255),
    import_key character varying(14)
);


ALTER TABLE public.llx_product_customer_price_log OWNER TO dolibarr;

--
-- Name: llx_product_customer_price_log_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_product_customer_price_log_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_product_customer_price_log_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_product_customer_price_log_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_product_customer_price_log_rowid_seq OWNED BY public.llx_product_customer_price_log.rowid;


--
-- Name: llx_product_customer_price_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_product_customer_price_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_product_customer_price_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_product_customer_price_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_product_customer_price_rowid_seq OWNED BY public.llx_product_customer_price.rowid;


--
-- Name: llx_product_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_product_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_product_extrafields OWNER TO dolibarr;

--
-- Name: llx_product_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_product_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_product_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_product_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_product_extrafields_rowid_seq OWNED BY public.llx_product_extrafields.rowid;


--
-- Name: llx_product_fournisseur_price; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_product_fournisseur_price (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_product integer,
    fk_soc integer,
    ref_fourn character varying(128),
    desc_fourn text,
    fk_availability integer,
    price numeric(24,8) DEFAULT 0,
    quantity numeric,
    remise_percent numeric DEFAULT 0 NOT NULL,
    remise numeric DEFAULT 0 NOT NULL,
    unitprice numeric(24,8) DEFAULT 0,
    charges numeric(24,8) DEFAULT 0,
    default_vat_code character varying(10),
    barcode character varying(180) DEFAULT NULL::character varying,
    fk_barcode_type integer,
    tva_tx numeric(7,4) NOT NULL,
    localtax1_tx numeric(7,4) DEFAULT 0,
    localtax1_type character varying(10) DEFAULT '0'::character varying NOT NULL,
    localtax2_tx numeric(7,4) DEFAULT 0,
    localtax2_type character varying(10) DEFAULT '0'::character varying NOT NULL,
    info_bits integer DEFAULT 0 NOT NULL,
    fk_user integer,
    fk_supplier_price_expression integer,
    delivery_time_days integer,
    supplier_reputation character varying(10),
    packaging real,
    fk_multicurrency integer,
    multicurrency_code character varying(3),
    multicurrency_tx numeric(24,8) DEFAULT 1,
    multicurrency_unitprice numeric(24,8) DEFAULT NULL::numeric,
    multicurrency_price numeric(24,8) DEFAULT NULL::numeric,
    import_key character varying(14),
    status integer DEFAULT 1
);


ALTER TABLE public.llx_product_fournisseur_price OWNER TO dolibarr;

--
-- Name: llx_product_fournisseur_price_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_product_fournisseur_price_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_product_fournisseur_price_extrafields OWNER TO dolibarr;

--
-- Name: llx_product_fournisseur_price_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_product_fournisseur_price_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_product_fournisseur_price_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_product_fournisseur_price_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_product_fournisseur_price_extrafields_rowid_seq OWNED BY public.llx_product_fournisseur_price_extrafields.rowid;


--
-- Name: llx_product_fournisseur_price_log; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_product_fournisseur_price_log (
    rowid integer NOT NULL,
    datec timestamp without time zone,
    fk_product_fournisseur integer NOT NULL,
    price numeric(24,8) DEFAULT 0,
    quantity numeric,
    fk_user integer,
    fk_multicurrency integer,
    multicurrency_code character varying(3),
    multicurrency_tx numeric(24,8) DEFAULT 1,
    multicurrency_unitprice numeric(24,8) DEFAULT NULL::numeric,
    multicurrency_price numeric(24,8) DEFAULT NULL::numeric
);


ALTER TABLE public.llx_product_fournisseur_price_log OWNER TO dolibarr;

--
-- Name: llx_product_fournisseur_price_log_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_product_fournisseur_price_log_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_product_fournisseur_price_log_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_product_fournisseur_price_log_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_product_fournisseur_price_log_rowid_seq OWNED BY public.llx_product_fournisseur_price_log.rowid;


--
-- Name: llx_product_fournisseur_price_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_product_fournisseur_price_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_product_fournisseur_price_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_product_fournisseur_price_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_product_fournisseur_price_rowid_seq OWNED BY public.llx_product_fournisseur_price.rowid;


--
-- Name: llx_product_lang; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_product_lang (
    rowid integer NOT NULL,
    fk_product integer DEFAULT 0 NOT NULL,
    lang character varying(5) DEFAULT 0 NOT NULL,
    label character varying(255) NOT NULL,
    description text,
    note text,
    import_key character varying(14) DEFAULT NULL::character varying
);


ALTER TABLE public.llx_product_lang OWNER TO dolibarr;

--
-- Name: llx_product_lang_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_product_lang_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_product_lang_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_product_lang_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_product_lang_rowid_seq OWNED BY public.llx_product_lang.rowid;


--
-- Name: llx_product_lot; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_product_lot (
    rowid integer NOT NULL,
    entity integer DEFAULT 1,
    fk_product integer NOT NULL,
    batch character varying(128) DEFAULT NULL::character varying,
    note_public text,
    note_private text,
    eatby date,
    sellby date,
    eol_date timestamp without time zone,
    manufacturing_date timestamp without time zone,
    scrapping_date timestamp without time zone,
    qc_frequency integer,
    lifetime integer,
    barcode character varying(180) DEFAULT NULL::character varying,
    fk_barcode_type integer,
    model_pdf character varying(255),
    last_main_doc character varying(255),
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_user_creat integer,
    fk_user_modif integer,
    import_key integer
);


ALTER TABLE public.llx_product_lot OWNER TO dolibarr;

--
-- Name: llx_product_lot_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_product_lot_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_product_lot_extrafields OWNER TO dolibarr;

--
-- Name: llx_product_lot_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_product_lot_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_product_lot_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_product_lot_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_product_lot_extrafields_rowid_seq OWNED BY public.llx_product_lot_extrafields.rowid;


--
-- Name: llx_product_lot_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_product_lot_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_product_lot_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_product_lot_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_product_lot_rowid_seq OWNED BY public.llx_product_lot.rowid;


--
-- Name: llx_product_price; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_product_price (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_product integer NOT NULL,
    date_price timestamp without time zone,
    price_level smallint DEFAULT 1,
    price numeric(24,8) DEFAULT NULL::numeric,
    price_ttc numeric(24,8) DEFAULT NULL::numeric,
    price_min numeric(24,8) DEFAULT NULL::numeric,
    price_min_ttc numeric(24,8) DEFAULT NULL::numeric,
    price_base_type character varying(3) DEFAULT 'HT'::character varying,
    default_vat_code character varying(10),
    tva_tx numeric(7,4) DEFAULT 0 NOT NULL,
    recuperableonly integer DEFAULT 0 NOT NULL,
    localtax1_tx numeric(7,4) DEFAULT 0,
    localtax1_type character varying(10) DEFAULT '0'::character varying NOT NULL,
    localtax2_tx numeric(7,4) DEFAULT 0,
    localtax2_type character varying(10) DEFAULT '0'::character varying NOT NULL,
    fk_user_author integer,
    price_label character varying(255),
    tosell smallint DEFAULT 1,
    price_by_qty integer DEFAULT 0 NOT NULL,
    fk_price_expression integer,
    import_key character varying(14),
    fk_multicurrency integer,
    multicurrency_code character varying(3),
    multicurrency_tx numeric(24,8) DEFAULT 1,
    multicurrency_price numeric(24,8) DEFAULT NULL::numeric,
    multicurrency_price_ttc numeric(24,8) DEFAULT NULL::numeric
);


ALTER TABLE public.llx_product_price OWNER TO dolibarr;

--
-- Name: llx_product_price_by_qty; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_product_price_by_qty (
    rowid integer NOT NULL,
    fk_product_price integer NOT NULL,
    price numeric(24,8) DEFAULT 0,
    price_base_type character varying(3) DEFAULT 'HT'::character varying,
    quantity numeric,
    remise_percent numeric DEFAULT 0 NOT NULL,
    remise numeric DEFAULT 0 NOT NULL,
    unitprice numeric(24,8) DEFAULT 0,
    fk_user_creat integer,
    fk_user_modif integer,
    fk_multicurrency integer,
    multicurrency_code character varying(3),
    multicurrency_tx numeric(24,8) DEFAULT 1,
    multicurrency_price numeric(24,8) DEFAULT NULL::numeric,
    multicurrency_price_ttc numeric(24,8) DEFAULT NULL::numeric,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_product_price_by_qty OWNER TO dolibarr;

--
-- Name: llx_product_price_by_qty_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_product_price_by_qty_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_product_price_by_qty_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_product_price_by_qty_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_product_price_by_qty_rowid_seq OWNED BY public.llx_product_price_by_qty.rowid;


--
-- Name: llx_product_price_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_product_price_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_product_price_extrafields OWNER TO dolibarr;

--
-- Name: llx_product_price_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_product_price_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_product_price_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_product_price_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_product_price_extrafields_rowid_seq OWNED BY public.llx_product_price_extrafields.rowid;


--
-- Name: llx_product_price_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_product_price_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_product_price_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_product_price_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_product_price_rowid_seq OWNED BY public.llx_product_price.rowid;


--
-- Name: llx_product_pricerules; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_product_pricerules (
    rowid integer NOT NULL,
    level integer NOT NULL,
    fk_level integer NOT NULL,
    var_percent real NOT NULL,
    var_min_percent real NOT NULL
);


ALTER TABLE public.llx_product_pricerules OWNER TO dolibarr;

--
-- Name: llx_product_pricerules_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_product_pricerules_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_product_pricerules_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_product_pricerules_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_product_pricerules_rowid_seq OWNED BY public.llx_product_pricerules.rowid;


--
-- Name: llx_product_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_product_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_product_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_product_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_product_rowid_seq OWNED BY public.llx_product.rowid;


--
-- Name: llx_product_stock; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_product_stock (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_product integer NOT NULL,
    fk_entrepot integer NOT NULL,
    reel real,
    import_key character varying(14)
);


ALTER TABLE public.llx_product_stock OWNER TO dolibarr;

--
-- Name: llx_product_stock_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_product_stock_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_product_stock_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_product_stock_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_product_stock_rowid_seq OWNED BY public.llx_product_stock.rowid;


--
-- Name: llx_product_thirdparty; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_product_thirdparty (
    rowid integer NOT NULL,
    fk_product integer NOT NULL,
    fk_soc integer NOT NULL,
    fk_product_thirdparty_relation_type integer NOT NULL,
    date_start timestamp without time zone,
    date_end timestamp without time zone,
    fk_project integer,
    description text,
    note_public text,
    note_private text,
    date_creation timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_user_creat integer NOT NULL,
    fk_user_modif integer,
    last_main_doc character varying(255),
    import_key character varying(14),
    model_pdf character varying(255),
    status integer DEFAULT 1 NOT NULL
);


ALTER TABLE public.llx_product_thirdparty OWNER TO dolibarr;

--
-- Name: llx_product_thirdparty_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_product_thirdparty_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_product_thirdparty_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_product_thirdparty_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_product_thirdparty_rowid_seq OWNED BY public.llx_product_thirdparty.rowid;


--
-- Name: llx_projet; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_projet (
    rowid integer NOT NULL,
    fk_project integer,
    fk_soc integer,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    dateo date,
    datee date,
    ref character varying(50),
    ref_ext character varying(50),
    entity integer DEFAULT 1 NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    fk_user_creat integer NOT NULL,
    fk_user_modif integer,
    public integer,
    fk_statut integer DEFAULT 0 NOT NULL,
    fk_opp_status integer,
    opp_percent numeric(5,2),
    fk_opp_status_end integer,
    date_close timestamp without time zone,
    fk_user_close integer,
    note_private text,
    note_public text,
    email_msgid character varying(175),
    email_date timestamp without time zone,
    opp_amount numeric(24,8),
    budget_amount numeric(24,8),
    usage_opportunity integer DEFAULT 0,
    usage_task integer DEFAULT 1,
    usage_bill_time integer DEFAULT 0,
    usage_organize_event integer DEFAULT 0,
    date_start_event timestamp without time zone,
    date_end_event timestamp without time zone,
    location character varying(255),
    accept_conference_suggestions integer DEFAULT 0,
    accept_booth_suggestions integer DEFAULT 0,
    max_attendees integer DEFAULT 0,
    price_registration numeric(24,8),
    price_booth numeric(24,8),
    model_pdf character varying(255),
    ip character varying(250),
    last_main_doc character varying(255),
    import_key character varying(14),
    extraparams character varying(255)
);


ALTER TABLE public.llx_projet OWNER TO dolibarr;

--
-- Name: llx_projet_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_projet_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_projet_extrafields OWNER TO dolibarr;

--
-- Name: llx_projet_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_projet_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_projet_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_projet_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_projet_extrafields_rowid_seq OWNED BY public.llx_projet_extrafields.rowid;


--
-- Name: llx_projet_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_projet_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_projet_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_projet_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_projet_rowid_seq OWNED BY public.llx_projet.rowid;


--
-- Name: llx_projet_task; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_projet_task (
    rowid integer NOT NULL,
    ref character varying(50),
    entity integer DEFAULT 1 NOT NULL,
    fk_projet integer NOT NULL,
    fk_task_parent integer DEFAULT 0 NOT NULL,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    dateo timestamp without time zone,
    datee timestamp without time zone,
    datev timestamp without time zone,
    label character varying(255) NOT NULL,
    description text,
    duration_effective real DEFAULT 0,
    planned_workload real DEFAULT 0,
    progress integer DEFAULT 0,
    priority integer DEFAULT 0,
    budget_amount numeric(24,8),
    fk_user_creat integer,
    fk_user_modif integer,
    fk_user_valid integer,
    fk_statut smallint DEFAULT 0 NOT NULL,
    note_private text,
    note_public text,
    rang integer DEFAULT 0,
    model_pdf character varying(255),
    import_key character varying(14),
    billable smallint DEFAULT 1
);


ALTER TABLE public.llx_projet_task OWNER TO dolibarr;

--
-- Name: llx_projet_task_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_projet_task_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_projet_task_extrafields OWNER TO dolibarr;

--
-- Name: llx_projet_task_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_projet_task_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_projet_task_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_projet_task_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_projet_task_extrafields_rowid_seq OWNED BY public.llx_projet_task_extrafields.rowid;


--
-- Name: llx_projet_task_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_projet_task_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_projet_task_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_projet_task_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_projet_task_rowid_seq OWNED BY public.llx_projet_task.rowid;


--
-- Name: llx_propal; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_propal (
    rowid integer NOT NULL,
    ref character varying(30) NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    ref_ext character varying(255),
    ref_client character varying(255),
    fk_soc integer,
    fk_projet integer,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    datec timestamp without time zone,
    datep date,
    fin_validite timestamp without time zone,
    date_valid timestamp without time zone,
    date_signature timestamp without time zone,
    date_cloture timestamp without time zone,
    fk_user_author integer,
    fk_user_modif integer,
    fk_user_valid integer,
    fk_user_signature integer,
    fk_user_cloture integer,
    fk_statut smallint DEFAULT 0 NOT NULL,
    price real DEFAULT 0,
    remise_percent real DEFAULT 0,
    remise_absolue real DEFAULT 0,
    remise real DEFAULT 0,
    total_ht numeric(24,8) DEFAULT 0,
    total_tva numeric(24,8) DEFAULT 0,
    localtax1 numeric(24,8) DEFAULT 0,
    localtax2 numeric(24,8) DEFAULT 0,
    total_ttc numeric(24,8) DEFAULT 0,
    fk_account integer,
    fk_currency character varying(3),
    fk_cond_reglement integer,
    deposit_percent character varying(63) DEFAULT NULL::character varying,
    fk_mode_reglement integer,
    online_sign_ip character varying(48),
    online_sign_name character varying(64),
    note_private text,
    note_public text,
    model_pdf character varying(255),
    model_pdf_pos_sign character varying(32),
    last_main_doc character varying(255),
    date_livraison date,
    fk_shipping_method integer,
    fk_warehouse integer,
    fk_availability integer,
    fk_input_reason integer,
    fk_incoterms integer,
    location_incoterms character varying(255),
    import_key character varying(14),
    extraparams character varying(255),
    fk_delivery_address integer,
    fk_multicurrency integer,
    multicurrency_code character varying(3),
    multicurrency_tx numeric(24,8) DEFAULT 1,
    multicurrency_total_ht numeric(24,8) DEFAULT 0,
    multicurrency_total_tva numeric(24,8) DEFAULT 0,
    multicurrency_total_ttc numeric(24,8) DEFAULT 0
);


ALTER TABLE public.llx_propal OWNER TO dolibarr;

--
-- Name: llx_propal_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_propal_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_propal_extrafields OWNER TO dolibarr;

--
-- Name: llx_propal_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_propal_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_propal_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_propal_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_propal_extrafields_rowid_seq OWNED BY public.llx_propal_extrafields.rowid;


--
-- Name: llx_propal_merge_pdf_product; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_propal_merge_pdf_product (
    rowid integer NOT NULL,
    fk_product integer NOT NULL,
    file_name character varying(200) NOT NULL,
    lang character varying(5) DEFAULT NULL::character varying,
    fk_user_author integer,
    fk_user_mod integer NOT NULL,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    import_key character varying(14) DEFAULT NULL::character varying
);


ALTER TABLE public.llx_propal_merge_pdf_product OWNER TO dolibarr;

--
-- Name: llx_propal_merge_pdf_product_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_propal_merge_pdf_product_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_propal_merge_pdf_product_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_propal_merge_pdf_product_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_propal_merge_pdf_product_rowid_seq OWNED BY public.llx_propal_merge_pdf_product.rowid;


--
-- Name: llx_propal_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_propal_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_propal_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_propal_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_propal_rowid_seq OWNED BY public.llx_propal.rowid;


--
-- Name: llx_propaldet; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_propaldet (
    rowid integer NOT NULL,
    fk_propal integer NOT NULL,
    fk_parent_line integer,
    fk_product integer,
    label character varying(255) DEFAULT NULL::character varying,
    description text,
    fk_remise_except integer,
    vat_src_code character varying(10) DEFAULT ''::character varying,
    tva_tx numeric(7,4) DEFAULT 0,
    localtax1_tx numeric(7,4) DEFAULT 0,
    localtax1_type character varying(10),
    localtax2_tx numeric(7,4) DEFAULT 0,
    localtax2_type character varying(10),
    qty real,
    remise_percent real DEFAULT 0,
    remise real DEFAULT 0,
    price real,
    subprice numeric(24,8) DEFAULT 0,
    subprice_ttc numeric(24,8) DEFAULT 0,
    total_ht numeric(24,8) DEFAULT 0,
    total_tva numeric(24,8) DEFAULT 0,
    total_localtax1 numeric(24,8) DEFAULT 0,
    total_localtax2 numeric(24,8) DEFAULT 0,
    total_ttc numeric(24,8) DEFAULT 0,
    product_type integer DEFAULT 0,
    date_start timestamp without time zone,
    date_end timestamp without time zone,
    info_bits integer DEFAULT 0,
    buy_price_ht numeric(24,8) DEFAULT 0,
    fk_product_fournisseur_price integer,
    special_code integer DEFAULT 0,
    rang integer DEFAULT 0,
    fk_unit integer,
    fk_multicurrency integer,
    multicurrency_code character varying(3),
    multicurrency_subprice numeric(24,8) DEFAULT 0,
    multicurrency_subprice_ttc numeric(24,8) DEFAULT 0,
    multicurrency_total_ht numeric(24,8) DEFAULT 0,
    multicurrency_total_tva numeric(24,8) DEFAULT 0,
    multicurrency_total_ttc numeric(24,8) DEFAULT 0,
    import_key character varying(14),
    extraparams character varying(255)
);


ALTER TABLE public.llx_propaldet OWNER TO dolibarr;

--
-- Name: llx_propaldet_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_propaldet_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_propaldet_extrafields OWNER TO dolibarr;

--
-- Name: llx_propaldet_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_propaldet_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_propaldet_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_propaldet_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_propaldet_extrafields_rowid_seq OWNED BY public.llx_propaldet_extrafields.rowid;


--
-- Name: llx_propaldet_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_propaldet_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_propaldet_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_propaldet_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_propaldet_rowid_seq OWNED BY public.llx_propaldet.rowid;


--
-- Name: llx_reception; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_reception (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    ref character varying(30) NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    fk_soc integer NOT NULL,
    fk_projet integer,
    ref_ext character varying(30),
    ref_supplier character varying(255),
    date_creation timestamp without time zone,
    fk_user_author integer,
    fk_user_modif integer,
    date_valid timestamp without time zone,
    fk_user_valid integer,
    date_delivery timestamp without time zone,
    date_reception timestamp without time zone,
    fk_shipping_method integer,
    tracking_number character varying(50),
    fk_statut smallint DEFAULT 0,
    billed smallint DEFAULT 0,
    height numeric,
    width numeric,
    size_units integer,
    size numeric,
    weight_units integer,
    weight numeric,
    note_private text,
    note_public text,
    model_pdf character varying(255),
    fk_incoterms integer,
    location_incoterms character varying(255),
    import_key character varying(14),
    extraparams character varying(255)
);


ALTER TABLE public.llx_reception OWNER TO dolibarr;

--
-- Name: llx_reception_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_reception_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_reception_extrafields OWNER TO dolibarr;

--
-- Name: llx_reception_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_reception_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_reception_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_reception_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_reception_extrafields_rowid_seq OWNED BY public.llx_reception_extrafields.rowid;


--
-- Name: llx_reception_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_reception_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_reception_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_reception_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_reception_rowid_seq OWNED BY public.llx_reception.rowid;


--
-- Name: llx_receptiondet_batch; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_receptiondet_batch (
    rowid integer NOT NULL,
    fk_reception integer,
    fk_element integer,
    fk_elementdet integer,
    element_type character varying(50) DEFAULT 'supplier_order'::character varying NOT NULL,
    fk_product integer,
    qty numeric,
    fk_entrepot integer,
    fk_projet integer,
    comment character varying(255),
    batch character varying(128) DEFAULT NULL::character varying,
    eatby date,
    sellby date,
    status integer,
    fk_user integer,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    cost_price numeric(24,8) DEFAULT 0,
    extraparams character varying(255)
);


ALTER TABLE public.llx_receptiondet_batch OWNER TO dolibarr;

--
-- Name: llx_receptiondet_batch_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_receptiondet_batch_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_receptiondet_batch_extrafields OWNER TO dolibarr;

--
-- Name: llx_receptiondet_batch_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_receptiondet_batch_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_receptiondet_batch_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_receptiondet_batch_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_receptiondet_batch_extrafields_rowid_seq OWNED BY public.llx_receptiondet_batch_extrafields.rowid;


--
-- Name: llx_receptiondet_batch_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_receptiondet_batch_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_receptiondet_batch_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_receptiondet_batch_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_receptiondet_batch_rowid_seq OWNED BY public.llx_receptiondet_batch.rowid;


--
-- Name: llx_resource; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_resource (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    ref character varying(255),
    asset_number character varying(255),
    description text,
    fk_code_type_resource character varying(32),
    address character varying(255) DEFAULT NULL::character varying,
    zip character varying(25) DEFAULT NULL::character varying,
    town character varying(50) DEFAULT NULL::character varying,
    photo_filename character varying(255) DEFAULT NULL::character varying,
    max_users integer,
    phone character varying(30) DEFAULT NULL::character varying,
    email character varying(255) DEFAULT NULL::character varying,
    url character varying(255) DEFAULT NULL::character varying,
    datec timestamp without time zone,
    date_valid timestamp without time zone,
    fk_user_author integer,
    fk_user_modif integer,
    fk_user_valid integer,
    fk_statut smallint DEFAULT '0'::smallint NOT NULL,
    note_public text,
    note_private text,
    import_key character varying(14),
    extraparams character varying(255),
    fk_country integer,
    fk_state integer,
    tms timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.llx_resource OWNER TO dolibarr;

--
-- Name: llx_resource_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_resource_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_resource_extrafields OWNER TO dolibarr;

--
-- Name: llx_resource_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_resource_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_resource_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_resource_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_resource_extrafields_rowid_seq OWNED BY public.llx_resource_extrafields.rowid;


--
-- Name: llx_resource_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_resource_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_resource_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_resource_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_resource_rowid_seq OWNED BY public.llx_resource.rowid;


--
-- Name: llx_rights_def; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_rights_def (
    id integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    libelle character varying(255),
    module character varying(64),
    module_origin character varying(64),
    module_position integer DEFAULT 0 NOT NULL,
    family_position integer DEFAULT 0 NOT NULL,
    perms character varying(50),
    subperms character varying(50),
    type character varying(1),
    bydefault smallint DEFAULT 0,
    enabled text
);


ALTER TABLE public.llx_rights_def OWNER TO dolibarr;

--
-- Name: llx_salary; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_salary (
    rowid integer NOT NULL,
    ref character varying(30),
    ref_ext character varying(255),
    tms timestamp without time zone DEFAULT now() NOT NULL,
    datec timestamp without time zone,
    fk_user integer NOT NULL,
    datep date,
    datev date,
    salary numeric(24,8),
    amount numeric(24,8) DEFAULT 0 NOT NULL,
    fk_projet integer,
    fk_typepayment integer NOT NULL,
    num_payment character varying(50),
    label character varying(255),
    datesp date,
    dateep date,
    entity integer DEFAULT 1 NOT NULL,
    note text,
    note_public text,
    fk_bank integer,
    paye smallint DEFAULT 0 NOT NULL,
    fk_account integer,
    fk_user_author integer,
    fk_user_modif integer
);


ALTER TABLE public.llx_salary OWNER TO dolibarr;

--
-- Name: llx_salary_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_salary_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_salary_extrafields OWNER TO dolibarr;

--
-- Name: llx_salary_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_salary_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_salary_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_salary_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_salary_extrafields_rowid_seq OWNED BY public.llx_salary_extrafields.rowid;


--
-- Name: llx_salary_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_salary_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_salary_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_salary_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_salary_rowid_seq OWNED BY public.llx_salary.rowid;


--
-- Name: llx_societe; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_societe (
    rowid integer NOT NULL,
    nom character varying(128),
    name_alias character varying(128),
    entity integer DEFAULT 1 NOT NULL,
    ref_ext character varying(255),
    statut smallint DEFAULT 0,
    parent integer,
    status smallint DEFAULT 1,
    code_client character varying(24),
    code_fournisseur character varying(24),
    tp_payment_reference character varying(25),
    accountancy_code_customer_general character varying(32) DEFAULT NULL::character varying,
    code_compta character varying(32),
    accountancy_code_supplier_general character varying(32) DEFAULT NULL::character varying,
    code_compta_fournisseur character varying(32),
    address character varying(255),
    zip character varying(25),
    town character varying(50),
    fk_departement integer DEFAULT 0,
    fk_pays integer DEFAULT 0,
    geolat numeric(24,8) DEFAULT NULL::numeric,
    geolong numeric(24,8) DEFAULT NULL::numeric,
    geopoint point,
    georesultcode character varying(16),
    phone character varying(30),
    phone_mobile character varying(30),
    fax character varying(30),
    url character varying(255),
    email character varying(128),
    fk_account integer DEFAULT 0,
    socialnetworks text,
    fk_effectif integer DEFAULT 0,
    fk_typent integer,
    fk_forme_juridique integer DEFAULT 0,
    fk_currency character varying(3),
    siren character varying(128),
    siret character varying(128),
    ape character varying(128),
    idprof4 character varying(128),
    idprof5 character varying(128),
    idprof6 character varying(128),
    tva_intra character varying(20),
    capital numeric(24,8) DEFAULT NULL::numeric,
    fk_stcomm integer DEFAULT 0 NOT NULL,
    note_private text,
    note_public text,
    model_pdf character varying(255),
    last_main_doc character varying(255),
    prefix_comm character varying(5),
    client smallint DEFAULT 0,
    fournisseur smallint DEFAULT 0,
    supplier_account character varying(32),
    fk_prospectlevel character varying(12),
    fk_incoterms integer,
    location_incoterms character varying(255),
    customer_bad smallint DEFAULT 0,
    customer_rate real DEFAULT 0,
    supplier_rate real DEFAULT 0,
    remise_client real DEFAULT 0,
    remise_supplier real DEFAULT 0,
    mode_reglement smallint,
    cond_reglement smallint,
    deposit_percent character varying(63) DEFAULT NULL::character varying,
    transport_mode smallint,
    mode_reglement_supplier smallint,
    cond_reglement_supplier smallint,
    transport_mode_supplier smallint,
    fk_shipping_method integer,
    tva_assuj smallint DEFAULT 1,
    vat_reverse_charge smallint DEFAULT 0,
    localtax1_assuj smallint DEFAULT 0,
    localtax1_value numeric(7,4),
    localtax2_assuj smallint DEFAULT 0,
    localtax2_value numeric(7,4),
    barcode character varying(180),
    fk_barcode_type integer DEFAULT 0,
    price_level integer,
    outstanding_limit numeric(24,8) DEFAULT NULL::numeric,
    order_min_amount numeric(24,8) DEFAULT NULL::numeric,
    supplier_order_min_amount numeric(24,8) DEFAULT NULL::numeric,
    default_lang character varying(6),
    logo character varying(255) DEFAULT NULL::character varying,
    logo_squarred character varying(255) DEFAULT NULL::character varying,
    canvas character varying(32) DEFAULT NULL::character varying,
    fk_warehouse integer,
    webservices_url character varying(255),
    webservices_key character varying(128),
    accountancy_code_sell character varying(32),
    accountancy_code_buy character varying(32),
    tms timestamp without time zone DEFAULT now() NOT NULL,
    datec timestamp without time zone,
    fk_user_creat integer,
    fk_user_modif integer,
    fk_multicurrency integer,
    multicurrency_code character varying(3),
    ip character varying(250),
    import_key character varying(14)
);


ALTER TABLE public.llx_societe OWNER TO dolibarr;

--
-- Name: llx_societe_account; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_societe_account (
    rowid integer NOT NULL,
    entity integer DEFAULT 1,
    login character varying(128) NOT NULL,
    pass_encoding character varying(24),
    pass_crypted character varying(128),
    pass_temp character varying(128),
    fk_soc integer,
    fk_website integer,
    site character varying(128) NOT NULL,
    site_account character varying(128),
    key_account character varying(128),
    note_private text,
    date_last_login timestamp without time zone,
    date_previous_login timestamp without time zone,
    date_last_reset_password timestamp without time zone,
    date_creation timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_user_creat integer NOT NULL,
    fk_user_modif integer,
    ip character varying(250),
    import_key character varying(14),
    status integer
);


ALTER TABLE public.llx_societe_account OWNER TO dolibarr;

--
-- Name: llx_societe_account_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_societe_account_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_societe_account_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_societe_account_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_societe_account_rowid_seq OWNED BY public.llx_societe_account.rowid;


--
-- Name: llx_societe_commerciaux; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_societe_commerciaux (
    rowid integer NOT NULL,
    fk_soc integer,
    fk_user integer,
    fk_c_type_contact_code character varying(32) DEFAULT 'SALESREPTHIRD'::character varying NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_societe_commerciaux OWNER TO dolibarr;

--
-- Name: llx_societe_commerciaux_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_societe_commerciaux_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_societe_commerciaux_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_societe_commerciaux_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_societe_commerciaux_rowid_seq OWNED BY public.llx_societe_commerciaux.rowid;


--
-- Name: llx_societe_contacts; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_societe_contacts (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    date_creation timestamp without time zone,
    fk_soc integer NOT NULL,
    fk_c_type_contact integer NOT NULL,
    fk_socpeople integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_societe_contacts OWNER TO dolibarr;

--
-- Name: llx_societe_contacts_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_societe_contacts_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_societe_contacts_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_societe_contacts_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_societe_contacts_rowid_seq OWNED BY public.llx_societe_contacts.rowid;


--
-- Name: llx_societe_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_societe_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_societe_extrafields OWNER TO dolibarr;

--
-- Name: llx_societe_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_societe_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_societe_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_societe_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_societe_extrafields_rowid_seq OWNED BY public.llx_societe_extrafields.rowid;


--
-- Name: llx_societe_prices; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_societe_prices (
    rowid integer NOT NULL,
    fk_soc integer DEFAULT 0,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    datec timestamp without time zone,
    fk_user_author integer,
    price_level smallint DEFAULT 1
);


ALTER TABLE public.llx_societe_prices OWNER TO dolibarr;

--
-- Name: llx_societe_prices_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_societe_prices_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_societe_prices_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_societe_prices_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_societe_prices_rowid_seq OWNED BY public.llx_societe_prices.rowid;


--
-- Name: llx_societe_remise; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_societe_remise (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    fk_soc integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    datec timestamp without time zone,
    fk_user_author integer,
    remise_client numeric(7,4) DEFAULT 0 NOT NULL,
    note text
);


ALTER TABLE public.llx_societe_remise OWNER TO dolibarr;

--
-- Name: llx_societe_remise_except; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_societe_remise_except (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    fk_soc integer NOT NULL,
    discount_type integer DEFAULT 0 NOT NULL,
    datec timestamp without time zone,
    amount_ht numeric(24,8) NOT NULL,
    amount_tva numeric(24,8) DEFAULT 0 NOT NULL,
    amount_ttc numeric(24,8) DEFAULT 0 NOT NULL,
    tva_tx numeric(7,4) DEFAULT 0 NOT NULL,
    vat_src_code character varying(10) DEFAULT ''::character varying,
    fk_user integer NOT NULL,
    fk_facture_line integer,
    fk_facture integer,
    fk_facture_source integer,
    fk_invoice_supplier_line integer,
    fk_invoice_supplier integer,
    fk_invoice_supplier_source integer,
    description text NOT NULL,
    multicurrency_code character varying(3),
    multicurrency_tx numeric(24,8),
    multicurrency_amount_ht numeric(24,8) DEFAULT 0 NOT NULL,
    multicurrency_amount_tva numeric(24,8) DEFAULT 0 NOT NULL,
    multicurrency_amount_ttc numeric(24,8) DEFAULT 0 NOT NULL
);


ALTER TABLE public.llx_societe_remise_except OWNER TO dolibarr;

--
-- Name: llx_societe_remise_except_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_societe_remise_except_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_societe_remise_except_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_societe_remise_except_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_societe_remise_except_rowid_seq OWNED BY public.llx_societe_remise_except.rowid;


--
-- Name: llx_societe_remise_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_societe_remise_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_societe_remise_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_societe_remise_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_societe_remise_rowid_seq OWNED BY public.llx_societe_remise.rowid;


--
-- Name: llx_societe_remise_supplier; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_societe_remise_supplier (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    fk_soc integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    datec timestamp without time zone,
    fk_user_author integer,
    remise_supplier numeric(7,4) DEFAULT 0 NOT NULL,
    note text
);


ALTER TABLE public.llx_societe_remise_supplier OWNER TO dolibarr;

--
-- Name: llx_societe_remise_supplier_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_societe_remise_supplier_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_societe_remise_supplier_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_societe_remise_supplier_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_societe_remise_supplier_rowid_seq OWNED BY public.llx_societe_remise_supplier.rowid;


--
-- Name: llx_societe_rib; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_societe_rib (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    type character varying(32) DEFAULT 'ban'::character varying NOT NULL,
    label character varying(180),
    fk_soc integer NOT NULL,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    bank character varying(255),
    code_banque character varying(128),
    code_guichet character varying(6),
    number character varying(255),
    cle_rib character varying(5),
    bic character varying(20),
    bic_intermediate character varying(11),
    iban_prefix character varying(100),
    cci character varying(100),
    domiciliation character varying(255),
    proprio character varying(60),
    owner_address character varying(255),
    default_rib smallint DEFAULT 0 NOT NULL,
    state_id integer,
    fk_country integer,
    currency_code character varying(3),
    model_pdf character varying(255),
    last_main_doc character varying(255),
    rum character varying(32),
    date_rum date,
    frstrecur character varying(16) DEFAULT 'FRST'::character varying,
    last_four character varying(4),
    card_type character varying(255),
    cvn character varying(255),
    exp_date_month integer,
    exp_date_year integer,
    country_code character varying(10),
    approved integer DEFAULT 0,
    email character varying(255),
    ending_date date,
    max_total_amount_of_all_payments numeric(24,8),
    preapproval_key character varying(255),
    starting_date date,
    total_amount_of_all_payments numeric(24,8),
    stripe_card_ref character varying(128),
    stripe_account character varying(128),
    ext_payment_site character varying(128),
    extraparams character varying(255),
    date_signature timestamp without time zone,
    online_sign_ip character varying(48),
    online_sign_name character varying(64),
    comment character varying(255),
    ipaddress character varying(68),
    status integer DEFAULT 1 NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_societe_rib OWNER TO dolibarr;

--
-- Name: llx_societe_rib_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_societe_rib_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_societe_rib_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_societe_rib_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_societe_rib_rowid_seq OWNED BY public.llx_societe_rib.rowid;


--
-- Name: llx_societe_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_societe_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_societe_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_societe_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_societe_rowid_seq OWNED BY public.llx_societe.rowid;


--
-- Name: llx_socpeople; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_socpeople (
    rowid integer NOT NULL,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_soc integer,
    entity integer DEFAULT 1 NOT NULL,
    ref_ext character varying(255),
    name_alias character varying(255),
    fk_parent integer,
    civility character varying(6),
    lastname character varying(50),
    firstname character varying(50),
    address character varying(255),
    zip character varying(25),
    town character varying(255),
    fk_departement integer,
    fk_pays integer DEFAULT 0,
    geolat numeric(24,8) DEFAULT NULL::numeric,
    geolong numeric(24,8) DEFAULT NULL::numeric,
    geopoint point,
    georesultcode character varying(16),
    birthday date,
    poste character varying(255),
    phone character varying(30),
    phone_perso character varying(30),
    phone_mobile character varying(30),
    fax character varying(30),
    url character varying(255),
    email character varying(255),
    socialnetworks text,
    photo character varying(255),
    no_email smallint DEFAULT 0 NOT NULL,
    priv smallint DEFAULT 0 NOT NULL,
    fk_prospectlevel character varying(12),
    fk_stcommcontact integer DEFAULT 0 NOT NULL,
    fk_user_creat integer DEFAULT 0,
    fk_user_modif integer,
    note_private text,
    note_public text,
    default_lang character varying(6),
    canvas character varying(32),
    import_key character varying(14),
    statut smallint DEFAULT 1 NOT NULL,
    ip character varying(250)
);


ALTER TABLE public.llx_socpeople OWNER TO dolibarr;

--
-- Name: llx_socpeople_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_socpeople_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_socpeople_extrafields OWNER TO dolibarr;

--
-- Name: llx_socpeople_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_socpeople_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_socpeople_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_socpeople_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_socpeople_extrafields_rowid_seq OWNED BY public.llx_socpeople_extrafields.rowid;


--
-- Name: llx_socpeople_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_socpeople_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_socpeople_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_socpeople_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_socpeople_rowid_seq OWNED BY public.llx_socpeople.rowid;


--
-- Name: llx_stock_mouvement; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_stock_mouvement (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    datem timestamp without time zone,
    fk_product integer NOT NULL,
    batch character varying(128) DEFAULT NULL::character varying,
    eatby date,
    sellby date,
    fk_entrepot integer NOT NULL,
    value real,
    price numeric(24,8) DEFAULT 0,
    type_mouvement smallint,
    fk_user_author integer,
    label character varying(255),
    inventorycode character varying(128),
    fk_project integer,
    fk_origin integer,
    origintype character varying(64),
    model_pdf character varying(255),
    fk_projet integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.llx_stock_mouvement OWNER TO dolibarr;

--
-- Name: llx_stock_mouvement_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_stock_mouvement_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_stock_mouvement_extrafields OWNER TO dolibarr;

--
-- Name: llx_stock_mouvement_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_stock_mouvement_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_stock_mouvement_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_stock_mouvement_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_stock_mouvement_extrafields_rowid_seq OWNED BY public.llx_stock_mouvement_extrafields.rowid;


--
-- Name: llx_stock_mouvement_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_stock_mouvement_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_stock_mouvement_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_stock_mouvement_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_stock_mouvement_rowid_seq OWNED BY public.llx_stock_mouvement.rowid;


--
-- Name: llx_subscription; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_subscription (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    datec timestamp without time zone,
    fk_adherent integer,
    fk_type integer,
    dateadh timestamp without time zone,
    datef timestamp without time zone,
    subscription numeric(24,8),
    fk_bank integer,
    fk_user_creat integer,
    fk_user_valid integer,
    note text
);


ALTER TABLE public.llx_subscription OWNER TO dolibarr;

--
-- Name: llx_subscription_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_subscription_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_subscription_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_subscription_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_subscription_rowid_seq OWNED BY public.llx_subscription.rowid;


--
-- Name: llx_supplier_proposal; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_supplier_proposal (
    rowid integer NOT NULL,
    ref character varying(30) NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    ref_ext character varying(255) DEFAULT NULL::character varying,
    fk_soc integer,
    fk_projet integer,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    datec timestamp without time zone,
    date_valid timestamp without time zone,
    date_cloture timestamp without time zone,
    fk_user_author integer,
    fk_user_modif integer,
    fk_user_valid integer,
    fk_user_cloture integer,
    fk_statut smallint DEFAULT 0 NOT NULL,
    price numeric DEFAULT 0,
    remise_percent numeric DEFAULT 0,
    remise_absolue numeric DEFAULT 0,
    remise numeric DEFAULT 0,
    total_ht numeric(24,8) DEFAULT 0,
    total_tva numeric(24,8) DEFAULT 0,
    localtax1 numeric(24,8) DEFAULT 0,
    localtax2 numeric(24,8) DEFAULT 0,
    total_ttc numeric(24,8) DEFAULT 0,
    fk_account integer,
    fk_currency character varying(3) DEFAULT NULL::character varying,
    fk_cond_reglement integer,
    fk_mode_reglement integer,
    note_private text,
    note_public text,
    model_pdf character varying(255) DEFAULT NULL::character varying,
    last_main_doc character varying(255),
    date_livraison date,
    fk_shipping_method integer,
    import_key character varying(14) DEFAULT NULL::character varying,
    extraparams character varying(255) DEFAULT NULL::character varying,
    fk_multicurrency integer,
    multicurrency_code character varying(3),
    multicurrency_tx numeric(24,8) DEFAULT 1,
    multicurrency_total_ht numeric(24,8) DEFAULT 0,
    multicurrency_total_tva numeric(24,8) DEFAULT 0,
    multicurrency_total_ttc numeric(24,8) DEFAULT 0
);


ALTER TABLE public.llx_supplier_proposal OWNER TO dolibarr;

--
-- Name: llx_supplier_proposal_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_supplier_proposal_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14) DEFAULT NULL::character varying
);


ALTER TABLE public.llx_supplier_proposal_extrafields OWNER TO dolibarr;

--
-- Name: llx_supplier_proposal_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_supplier_proposal_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_supplier_proposal_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_supplier_proposal_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_supplier_proposal_extrafields_rowid_seq OWNED BY public.llx_supplier_proposal_extrafields.rowid;


--
-- Name: llx_supplier_proposal_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_supplier_proposal_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_supplier_proposal_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_supplier_proposal_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_supplier_proposal_rowid_seq OWNED BY public.llx_supplier_proposal.rowid;


--
-- Name: llx_supplier_proposaldet; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_supplier_proposaldet (
    rowid integer NOT NULL,
    fk_supplier_proposal integer NOT NULL,
    fk_parent_line integer,
    fk_product integer,
    label character varying(255) DEFAULT NULL::character varying,
    description text,
    fk_remise_except integer,
    vat_src_code character varying(10) DEFAULT ''::character varying,
    tva_tx numeric(7,4) DEFAULT 0,
    localtax1_tx numeric(7,4) DEFAULT 0,
    localtax1_type character varying(10) DEFAULT NULL::character varying,
    localtax2_tx numeric(7,4) DEFAULT 0,
    localtax2_type character varying(10) DEFAULT NULL::character varying,
    qty numeric,
    remise_percent numeric DEFAULT '0'::numeric,
    remise numeric DEFAULT '0'::numeric,
    price numeric,
    subprice numeric(24,8) DEFAULT 0,
    subprice_ttc numeric(24,8) DEFAULT 0,
    total_ht numeric(24,8) DEFAULT 0,
    total_tva numeric(24,8) DEFAULT 0,
    total_localtax1 numeric(24,8) DEFAULT 0,
    total_localtax2 numeric(24,8) DEFAULT 0,
    total_ttc numeric(24,8) DEFAULT 0,
    product_type integer DEFAULT 0,
    date_start timestamp without time zone,
    date_end timestamp without time zone,
    info_bits integer DEFAULT 0,
    buy_price_ht numeric(24,8) DEFAULT 0,
    fk_product_fournisseur_price integer,
    special_code integer DEFAULT 0,
    rang integer DEFAULT 0,
    ref_fourn character varying(128) DEFAULT NULL::character varying,
    fk_multicurrency integer,
    multicurrency_code character varying(3),
    multicurrency_subprice numeric(24,8) DEFAULT 0,
    multicurrency_subprice_ttc numeric(24,8) DEFAULT 0,
    multicurrency_total_ht numeric(24,8) DEFAULT 0,
    multicurrency_total_tva numeric(24,8) DEFAULT 0,
    multicurrency_total_ttc numeric(24,8) DEFAULT 0,
    fk_unit integer,
    extraparams character varying(255)
);


ALTER TABLE public.llx_supplier_proposaldet OWNER TO dolibarr;

--
-- Name: llx_supplier_proposaldet_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_supplier_proposaldet_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14) DEFAULT NULL::character varying
);


ALTER TABLE public.llx_supplier_proposaldet_extrafields OWNER TO dolibarr;

--
-- Name: llx_supplier_proposaldet_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_supplier_proposaldet_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_supplier_proposaldet_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_supplier_proposaldet_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_supplier_proposaldet_extrafields_rowid_seq OWNED BY public.llx_supplier_proposaldet_extrafields.rowid;


--
-- Name: llx_supplier_proposaldet_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_supplier_proposaldet_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_supplier_proposaldet_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_supplier_proposaldet_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_supplier_proposaldet_rowid_seq OWNED BY public.llx_supplier_proposaldet.rowid;


--
-- Name: llx_tva; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_tva (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    datec timestamp without time zone,
    datep date,
    datev date,
    amount numeric(24,8) DEFAULT 0 NOT NULL,
    fk_typepayment integer,
    num_payment character varying(50),
    label character varying(255),
    entity integer DEFAULT 1 NOT NULL,
    note text,
    paye smallint DEFAULT 0 NOT NULL,
    fk_account integer,
    fk_user_creat integer,
    fk_user_modif integer,
    import_key character varying(14)
);


ALTER TABLE public.llx_tva OWNER TO dolibarr;

--
-- Name: llx_tva_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_tva_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_tva_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_tva_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_tva_rowid_seq OWNED BY public.llx_tva.rowid;


--
-- Name: llx_user; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_user (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    ref_employee character varying(50),
    ref_ext character varying(50),
    admin smallint DEFAULT 0,
    employee smallint DEFAULT 1,
    fk_establishment integer DEFAULT 0,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_user_creat integer,
    fk_user_modif integer,
    login character varying(50) NOT NULL,
    pass_encoding character varying(24),
    pass character varying(128),
    pass_crypted character varying(128),
    pass_temp character varying(128),
    api_key character varying(128),
    gender character varying(10),
    civility character varying(6),
    lastname character varying(50),
    firstname character varying(50),
    address character varying(255),
    zip character varying(25),
    town character varying(50),
    fk_state integer DEFAULT 0,
    fk_country integer DEFAULT 0,
    birth date,
    birth_place character varying(64),
    job character varying(128),
    office_phone character varying(30),
    office_fax character varying(30),
    user_mobile character varying(30),
    personal_mobile character varying(30),
    email character varying(255),
    personal_email character varying(255),
    email_oauth2 character varying(255),
    signature text,
    socialnetworks text,
    fk_soc integer,
    fk_socpeople integer,
    fk_member integer,
    fk_user integer,
    fk_user_expense_validator integer,
    fk_user_holiday_validator integer,
    national_registration_number character varying(50),
    idpers1 character varying(128),
    idpers2 character varying(128),
    idpers3 character varying(128),
    note_public text,
    note_private text,
    model_pdf character varying(255) DEFAULT NULL::character varying,
    last_main_doc character varying(255),
    datelastlogin timestamp without time zone,
    datepreviouslogin timestamp without time zone,
    datelastpassvalidation timestamp without time zone,
    datestartvalidity timestamp without time zone,
    dateendvalidity timestamp without time zone,
    flagdelsessionsbefore timestamp without time zone,
    iplastlogin character varying(250),
    ippreviouslogin character varying(250),
    ldap_sid character varying(255) DEFAULT NULL::character varying,
    openid character varying(255),
    statut smallint DEFAULT 1,
    photo character varying(255),
    lang character varying(6),
    color character varying(6),
    barcode character varying(255) DEFAULT NULL::character varying,
    fk_barcode_type integer DEFAULT 0,
    accountancy_code_user_general character varying(32) DEFAULT NULL::character varying,
    accountancy_code character varying(32),
    nb_holiday integer DEFAULT 0,
    thm numeric(24,8),
    tjm numeric(24,8),
    salary numeric(24,8),
    salaryextra numeric(24,8),
    dateemployment date,
    dateemploymentend date,
    weeklyhours numeric(16,8),
    import_key character varying(14),
    default_range integer,
    default_c_exp_tax_cat integer,
    fk_warehouse integer
);


ALTER TABLE public.llx_user OWNER TO dolibarr;

--
-- Name: llx_user_alert; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_user_alert (
    rowid integer NOT NULL,
    type integer,
    fk_contact integer,
    fk_user integer
);


ALTER TABLE public.llx_user_alert OWNER TO dolibarr;

--
-- Name: llx_user_alert_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_user_alert_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_user_alert_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_user_alert_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_user_alert_rowid_seq OWNED BY public.llx_user_alert.rowid;


--
-- Name: llx_user_clicktodial; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_user_clicktodial (
    fk_user integer NOT NULL,
    url character varying(255),
    login character varying(32),
    pass character varying(64),
    poste character varying(20)
);


ALTER TABLE public.llx_user_clicktodial OWNER TO dolibarr;

--
-- Name: llx_user_employment; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_user_employment (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    ref character varying(50),
    ref_ext character varying(50),
    fk_user integer,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_user_creat integer,
    fk_user_modif integer,
    job character varying(128),
    status integer NOT NULL,
    salary numeric(24,8),
    salaryextra numeric(24,8),
    weeklyhours numeric(16,8),
    dateemployment date,
    dateemploymentend date
);


ALTER TABLE public.llx_user_employment OWNER TO dolibarr;

--
-- Name: llx_user_employment_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_user_employment_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_user_employment_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_user_employment_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_user_employment_rowid_seq OWNED BY public.llx_user_employment.rowid;


--
-- Name: llx_user_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_user_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_user_extrafields OWNER TO dolibarr;

--
-- Name: llx_user_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_user_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_user_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_user_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_user_extrafields_rowid_seq OWNED BY public.llx_user_extrafields.rowid;


--
-- Name: llx_user_param; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_user_param (
    fk_user integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    param character varying(180) NOT NULL,
    value text NOT NULL
);


ALTER TABLE public.llx_user_param OWNER TO dolibarr;

--
-- Name: llx_user_rib; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_user_rib (
    rowid integer NOT NULL,
    fk_user integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    label character varying(30),
    bank character varying(255),
    code_banque character varying(128),
    code_guichet character varying(6),
    number character varying(255),
    cle_rib character varying(5),
    bic character varying(11),
    bic_intermediate character varying(11),
    iban_prefix character varying(100),
    domiciliation character varying(255),
    proprio character varying(60),
    owner_address character varying(255),
    state_id integer,
    fk_country integer,
    currency_code character varying(3),
    default_rib smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.llx_user_rib OWNER TO dolibarr;

--
-- Name: llx_user_rib_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_user_rib_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_user_rib_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_user_rib_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_user_rib_rowid_seq OWNED BY public.llx_user_rib.rowid;


--
-- Name: llx_user_rights; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_user_rights (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    fk_user integer NOT NULL,
    fk_id integer NOT NULL
);


ALTER TABLE public.llx_user_rights OWNER TO dolibarr;

--
-- Name: llx_user_rights_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_user_rights_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_user_rights_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_user_rights_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_user_rights_rowid_seq OWNED BY public.llx_user_rights.rowid;


--
-- Name: llx_user_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_user_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_user_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_user_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_user_rowid_seq OWNED BY public.llx_user.rowid;


--
-- Name: llx_usergroup; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_usergroup (
    rowid integer NOT NULL,
    nom character varying(180) NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    datec timestamp without time zone,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    note text,
    model_pdf character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.llx_usergroup OWNER TO dolibarr;

--
-- Name: llx_usergroup_extrafields; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_usergroup_extrafields (
    rowid integer NOT NULL,
    tms timestamp without time zone DEFAULT now() NOT NULL,
    fk_object integer NOT NULL,
    import_key character varying(14)
);


ALTER TABLE public.llx_usergroup_extrafields OWNER TO dolibarr;

--
-- Name: llx_usergroup_extrafields_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_usergroup_extrafields_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_usergroup_extrafields_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_usergroup_extrafields_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_usergroup_extrafields_rowid_seq OWNED BY public.llx_usergroup_extrafields.rowid;


--
-- Name: llx_usergroup_rights; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_usergroup_rights (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    fk_usergroup integer NOT NULL,
    fk_id integer NOT NULL
);


ALTER TABLE public.llx_usergroup_rights OWNER TO dolibarr;

--
-- Name: llx_usergroup_rights_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_usergroup_rights_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_usergroup_rights_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_usergroup_rights_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_usergroup_rights_rowid_seq OWNED BY public.llx_usergroup_rights.rowid;


--
-- Name: llx_usergroup_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_usergroup_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_usergroup_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_usergroup_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_usergroup_rowid_seq OWNED BY public.llx_usergroup.rowid;


--
-- Name: llx_usergroup_user; Type: TABLE; Schema: public; Owner: dolibarr
--

CREATE TABLE public.llx_usergroup_user (
    rowid integer NOT NULL,
    entity integer DEFAULT 1 NOT NULL,
    fk_user integer NOT NULL,
    fk_usergroup integer NOT NULL
);


ALTER TABLE public.llx_usergroup_user OWNER TO dolibarr;

--
-- Name: llx_usergroup_user_rowid_seq; Type: SEQUENCE; Schema: public; Owner: dolibarr
--

CREATE SEQUENCE public.llx_usergroup_user_rowid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.llx_usergroup_user_rowid_seq OWNER TO dolibarr;

--
-- Name: llx_usergroup_user_rowid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dolibarr
--

ALTER SEQUENCE public.llx_usergroup_user_rowid_seq OWNED BY public.llx_usergroup_user.rowid;


--
-- Name: llx_accounting_account rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_accounting_account ALTER COLUMN rowid SET DEFAULT nextval('public.llx_accounting_account_rowid_seq'::regclass);


--
-- Name: llx_accounting_bookkeeping rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_accounting_bookkeeping ALTER COLUMN rowid SET DEFAULT nextval('public.llx_accounting_bookkeeping_rowid_seq'::regclass);


--
-- Name: llx_accounting_bookkeeping_tmp rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_accounting_bookkeeping_tmp ALTER COLUMN rowid SET DEFAULT nextval('public.llx_accounting_bookkeeping_tmp_rowid_seq'::regclass);


--
-- Name: llx_accounting_fiscalyear rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_accounting_fiscalyear ALTER COLUMN rowid SET DEFAULT nextval('public.llx_accounting_fiscalyear_rowid_seq'::regclass);


--
-- Name: llx_accounting_groups_account rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_accounting_groups_account ALTER COLUMN rowid SET DEFAULT nextval('public.llx_accounting_groups_account_rowid_seq'::regclass);


--
-- Name: llx_accounting_journal rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_accounting_journal ALTER COLUMN rowid SET DEFAULT nextval('public.llx_accounting_journal_rowid_seq'::regclass);


--
-- Name: llx_accounting_system rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_accounting_system ALTER COLUMN rowid SET DEFAULT nextval('public.llx_accounting_system_rowid_seq'::regclass);


--
-- Name: llx_actioncomm id; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_actioncomm ALTER COLUMN id SET DEFAULT nextval('public.llx_actioncomm_id_seq'::regclass);


--
-- Name: llx_actioncomm_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_actioncomm_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_actioncomm_extrafields_rowid_seq'::regclass);


--
-- Name: llx_actioncomm_reminder rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_actioncomm_reminder ALTER COLUMN rowid SET DEFAULT nextval('public.llx_actioncomm_reminder_rowid_seq'::regclass);


--
-- Name: llx_actioncomm_resources rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_actioncomm_resources ALTER COLUMN rowid SET DEFAULT nextval('public.llx_actioncomm_resources_rowid_seq'::regclass);


--
-- Name: llx_adherent rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_adherent ALTER COLUMN rowid SET DEFAULT nextval('public.llx_adherent_rowid_seq'::regclass);


--
-- Name: llx_adherent_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_adherent_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_adherent_extrafields_rowid_seq'::regclass);


--
-- Name: llx_adherent_type rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_adherent_type ALTER COLUMN rowid SET DEFAULT nextval('public.llx_adherent_type_rowid_seq'::regclass);


--
-- Name: llx_adherent_type_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_adherent_type_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_adherent_type_extrafields_rowid_seq'::regclass);


--
-- Name: llx_adherent_type_lang rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_adherent_type_lang ALTER COLUMN rowid SET DEFAULT nextval('public.llx_adherent_type_lang_rowid_seq'::regclass);


--
-- Name: llx_bank rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_bank ALTER COLUMN rowid SET DEFAULT nextval('public.llx_bank_rowid_seq'::regclass);


--
-- Name: llx_bank_account rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_bank_account ALTER COLUMN rowid SET DEFAULT nextval('public.llx_bank_account_rowid_seq'::regclass);


--
-- Name: llx_bank_account_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_bank_account_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_bank_account_extrafields_rowid_seq'::regclass);


--
-- Name: llx_bank_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_bank_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_bank_extrafields_rowid_seq'::regclass);


--
-- Name: llx_bank_url rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_bank_url ALTER COLUMN rowid SET DEFAULT nextval('public.llx_bank_url_rowid_seq'::regclass);


--
-- Name: llx_blockedlog rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_blockedlog ALTER COLUMN rowid SET DEFAULT nextval('public.llx_blockedlog_rowid_seq'::regclass);


--
-- Name: llx_blockedlog_authority rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_blockedlog_authority ALTER COLUMN rowid SET DEFAULT nextval('public.llx_blockedlog_authority_rowid_seq'::regclass);


--
-- Name: llx_bookmark rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_bookmark ALTER COLUMN rowid SET DEFAULT nextval('public.llx_bookmark_rowid_seq'::regclass);


--
-- Name: llx_bordereau_cheque rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_bordereau_cheque ALTER COLUMN rowid SET DEFAULT nextval('public.llx_bordereau_cheque_rowid_seq'::regclass);


--
-- Name: llx_boxes rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_boxes ALTER COLUMN rowid SET DEFAULT nextval('public.llx_boxes_rowid_seq'::regclass);


--
-- Name: llx_boxes_def rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_boxes_def ALTER COLUMN rowid SET DEFAULT nextval('public.llx_boxes_def_rowid_seq'::regclass);


--
-- Name: llx_c_action_trigger rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_action_trigger ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_action_trigger_rowid_seq'::regclass);


--
-- Name: llx_c_availability rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_availability ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_availability_rowid_seq'::regclass);


--
-- Name: llx_c_barcode_type rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_barcode_type ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_barcode_type_rowid_seq'::regclass);


--
-- Name: llx_c_chargesociales id; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_chargesociales ALTER COLUMN id SET DEFAULT nextval('public.llx_c_chargesociales_id_seq'::regclass);


--
-- Name: llx_c_civility rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_civility ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_civility_rowid_seq'::regclass);


--
-- Name: llx_c_departements rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_departements ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_departements_rowid_seq'::regclass);


--
-- Name: llx_c_ecotaxe rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_ecotaxe ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_ecotaxe_rowid_seq'::regclass);


--
-- Name: llx_c_email_senderprofile rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_email_senderprofile ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_email_senderprofile_rowid_seq'::regclass);


--
-- Name: llx_c_email_templates rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_email_templates ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_email_templates_rowid_seq'::regclass);


--
-- Name: llx_c_field_list rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_field_list ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_field_list_rowid_seq'::regclass);


--
-- Name: llx_c_format_cards rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_format_cards ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_format_cards_rowid_seq'::regclass);


--
-- Name: llx_c_forme_juridique rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_forme_juridique ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_forme_juridique_rowid_seq'::regclass);


--
-- Name: llx_c_holiday_types rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_holiday_types ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_holiday_types_rowid_seq'::regclass);


--
-- Name: llx_c_hrm_public_holiday id; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_hrm_public_holiday ALTER COLUMN id SET DEFAULT nextval('public.llx_c_hrm_public_holiday_id_seq'::regclass);


--
-- Name: llx_c_incoterms rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_incoterms ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_incoterms_rowid_seq'::regclass);


--
-- Name: llx_c_input_method rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_input_method ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_input_method_rowid_seq'::regclass);


--
-- Name: llx_c_input_reason rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_input_reason ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_input_reason_rowid_seq'::regclass);


--
-- Name: llx_c_invoice_subtype rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_invoice_subtype ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_invoice_subtype_rowid_seq'::regclass);


--
-- Name: llx_c_lead_status rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_lead_status ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_lead_status_rowid_seq'::regclass);


--
-- Name: llx_c_paiement id; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_paiement ALTER COLUMN id SET DEFAULT nextval('public.llx_c_paiement_id_seq'::regclass);


--
-- Name: llx_c_paper_format rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_paper_format ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_paper_format_rowid_seq'::regclass);


--
-- Name: llx_c_payment_term rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_payment_term ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_payment_term_rowid_seq'::regclass);


--
-- Name: llx_c_product_nature rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_product_nature ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_product_nature_rowid_seq'::regclass);


--
-- Name: llx_c_product_thirdparty_relation_type rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_product_thirdparty_relation_type ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_product_thirdparty_relation_type_rowid_seq'::regclass);


--
-- Name: llx_c_regions rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_regions ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_regions_rowid_seq'::regclass);


--
-- Name: llx_c_revenuestamp rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_revenuestamp ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_revenuestamp_rowid_seq'::regclass);


--
-- Name: llx_c_shipment_mode rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_shipment_mode ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_shipment_mode_rowid_seq'::regclass);


--
-- Name: llx_c_shipment_package_type rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_shipment_package_type ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_shipment_package_type_rowid_seq'::regclass);


--
-- Name: llx_c_socialnetworks rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_socialnetworks ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_socialnetworks_rowid_seq'::regclass);


--
-- Name: llx_c_transport_mode rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_transport_mode ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_transport_mode_rowid_seq'::regclass);


--
-- Name: llx_c_tva rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_tva ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_tva_rowid_seq'::regclass);


--
-- Name: llx_c_type_contact rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_type_contact ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_type_contact_rowid_seq'::regclass);


--
-- Name: llx_c_type_fees id; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_type_fees ALTER COLUMN id SET DEFAULT nextval('public.llx_c_type_fees_id_seq'::regclass);


--
-- Name: llx_c_type_resource rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_type_resource ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_type_resource_rowid_seq'::regclass);


--
-- Name: llx_c_units rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_units ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_units_rowid_seq'::regclass);


--
-- Name: llx_c_ziptown rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_ziptown ALTER COLUMN rowid SET DEFAULT nextval('public.llx_c_ziptown_rowid_seq'::regclass);


--
-- Name: llx_categorie rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie ALTER COLUMN rowid SET DEFAULT nextval('public.llx_categorie_rowid_seq'::regclass);


--
-- Name: llx_categorie_lang rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_lang ALTER COLUMN rowid SET DEFAULT nextval('public.llx_categorie_lang_rowid_seq'::regclass);


--
-- Name: llx_categories_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categories_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_categories_extrafields_rowid_seq'::regclass);


--
-- Name: llx_chargesociales rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_chargesociales ALTER COLUMN rowid SET DEFAULT nextval('public.llx_chargesociales_rowid_seq'::regclass);


--
-- Name: llx_commande rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_commande ALTER COLUMN rowid SET DEFAULT nextval('public.llx_commande_rowid_seq'::regclass);


--
-- Name: llx_commande_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_commande_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_commande_extrafields_rowid_seq'::regclass);


--
-- Name: llx_commande_fournisseur rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_commande_fournisseur ALTER COLUMN rowid SET DEFAULT nextval('public.llx_commande_fournisseur_rowid_seq'::regclass);


--
-- Name: llx_commande_fournisseur_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_commande_fournisseur_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_commande_fournisseur_extrafields_rowid_seq'::regclass);


--
-- Name: llx_commande_fournisseur_log rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_commande_fournisseur_log ALTER COLUMN rowid SET DEFAULT nextval('public.llx_commande_fournisseur_log_rowid_seq'::regclass);


--
-- Name: llx_commande_fournisseurdet rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_commande_fournisseurdet ALTER COLUMN rowid SET DEFAULT nextval('public.llx_commande_fournisseurdet_rowid_seq'::regclass);


--
-- Name: llx_commande_fournisseurdet_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_commande_fournisseurdet_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_commande_fournisseurdet_extrafields_rowid_seq'::regclass);


--
-- Name: llx_commandedet rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_commandedet ALTER COLUMN rowid SET DEFAULT nextval('public.llx_commandedet_rowid_seq'::regclass);


--
-- Name: llx_commandedet_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_commandedet_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_commandedet_extrafields_rowid_seq'::regclass);


--
-- Name: llx_comment rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_comment ALTER COLUMN rowid SET DEFAULT nextval('public.llx_comment_rowid_seq'::regclass);


--
-- Name: llx_const rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_const ALTER COLUMN rowid SET DEFAULT nextval('public.llx_const_rowid_seq'::regclass);


--
-- Name: llx_contrat rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_contrat ALTER COLUMN rowid SET DEFAULT nextval('public.llx_contrat_rowid_seq'::regclass);


--
-- Name: llx_contrat_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_contrat_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_contrat_extrafields_rowid_seq'::regclass);


--
-- Name: llx_contratdet rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_contratdet ALTER COLUMN rowid SET DEFAULT nextval('public.llx_contratdet_rowid_seq'::regclass);


--
-- Name: llx_contratdet_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_contratdet_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_contratdet_extrafields_rowid_seq'::regclass);


--
-- Name: llx_cronjob rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_cronjob ALTER COLUMN rowid SET DEFAULT nextval('public.llx_cronjob_rowid_seq'::regclass);


--
-- Name: llx_default_values rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_default_values ALTER COLUMN rowid SET DEFAULT nextval('public.llx_default_values_rowid_seq'::regclass);


--
-- Name: llx_delivery rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_delivery ALTER COLUMN rowid SET DEFAULT nextval('public.llx_delivery_rowid_seq'::regclass);


--
-- Name: llx_delivery_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_delivery_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_delivery_extrafields_rowid_seq'::regclass);


--
-- Name: llx_deliverydet rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_deliverydet ALTER COLUMN rowid SET DEFAULT nextval('public.llx_deliverydet_rowid_seq'::regclass);


--
-- Name: llx_deliverydet_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_deliverydet_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_deliverydet_extrafields_rowid_seq'::regclass);


--
-- Name: llx_document_model rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_document_model ALTER COLUMN rowid SET DEFAULT nextval('public.llx_document_model_rowid_seq'::regclass);


--
-- Name: llx_ecm_directories rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_ecm_directories ALTER COLUMN rowid SET DEFAULT nextval('public.llx_ecm_directories_rowid_seq'::regclass);


--
-- Name: llx_ecm_directories_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_ecm_directories_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_ecm_directories_extrafields_rowid_seq'::regclass);


--
-- Name: llx_ecm_files rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_ecm_files ALTER COLUMN rowid SET DEFAULT nextval('public.llx_ecm_files_rowid_seq'::regclass);


--
-- Name: llx_ecm_files_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_ecm_files_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_ecm_files_extrafields_rowid_seq'::regclass);


--
-- Name: llx_element_categorie rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_element_categorie ALTER COLUMN rowid SET DEFAULT nextval('public.llx_element_categorie_rowid_seq'::regclass);


--
-- Name: llx_element_contact rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_element_contact ALTER COLUMN rowid SET DEFAULT nextval('public.llx_element_contact_rowid_seq'::regclass);


--
-- Name: llx_element_element rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_element_element ALTER COLUMN rowid SET DEFAULT nextval('public.llx_element_element_rowid_seq'::regclass);


--
-- Name: llx_element_resources rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_element_resources ALTER COLUMN rowid SET DEFAULT nextval('public.llx_element_resources_rowid_seq'::regclass);


--
-- Name: llx_element_time rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_element_time ALTER COLUMN rowid SET DEFAULT nextval('public.llx_element_time_rowid_seq'::regclass);


--
-- Name: llx_emailcollector_emailcollector rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_emailcollector_emailcollector ALTER COLUMN rowid SET DEFAULT nextval('public.llx_emailcollector_emailcollector_rowid_seq'::regclass);


--
-- Name: llx_emailcollector_emailcollectoraction rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_emailcollector_emailcollectoraction ALTER COLUMN rowid SET DEFAULT nextval('public.llx_emailcollector_emailcollectoraction_rowid_seq'::regclass);


--
-- Name: llx_emailcollector_emailcollectorfilter rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_emailcollector_emailcollectorfilter ALTER COLUMN rowid SET DEFAULT nextval('public.llx_emailcollector_emailcollectorfilter_rowid_seq'::regclass);


--
-- Name: llx_entrepot rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_entrepot ALTER COLUMN rowid SET DEFAULT nextval('public.llx_entrepot_rowid_seq'::regclass);


--
-- Name: llx_entrepot_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_entrepot_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_entrepot_extrafields_rowid_seq'::regclass);


--
-- Name: llx_establishment rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_establishment ALTER COLUMN rowid SET DEFAULT nextval('public.llx_establishment_rowid_seq'::regclass);


--
-- Name: llx_event_element rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_event_element ALTER COLUMN rowid SET DEFAULT nextval('public.llx_event_element_rowid_seq'::regclass);


--
-- Name: llx_eventorganization_conferenceorboothattendee rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_eventorganization_conferenceorboothattendee ALTER COLUMN rowid SET DEFAULT nextval('public.llx_eventorganization_conferenceorboothattendee_rowid_seq'::regclass);


--
-- Name: llx_eventorganization_conferenceorboothattendee_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_eventorganization_conferenceorboothattendee_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_eventorganization_conferenceorboothattendee_extra_rowid_seq'::regclass);


--
-- Name: llx_events rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_events ALTER COLUMN rowid SET DEFAULT nextval('public.llx_events_rowid_seq'::regclass);


--
-- Name: llx_expedition rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_expedition ALTER COLUMN rowid SET DEFAULT nextval('public.llx_expedition_rowid_seq'::regclass);


--
-- Name: llx_expedition_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_expedition_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_expedition_extrafields_rowid_seq'::regclass);


--
-- Name: llx_expedition_package rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_expedition_package ALTER COLUMN rowid SET DEFAULT nextval('public.llx_expedition_package_rowid_seq'::regclass);


--
-- Name: llx_expeditiondet rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_expeditiondet ALTER COLUMN rowid SET DEFAULT nextval('public.llx_expeditiondet_rowid_seq'::regclass);


--
-- Name: llx_expeditiondet_batch rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_expeditiondet_batch ALTER COLUMN rowid SET DEFAULT nextval('public.llx_expeditiondet_batch_rowid_seq'::regclass);


--
-- Name: llx_expeditiondet_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_expeditiondet_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_expeditiondet_extrafields_rowid_seq'::regclass);


--
-- Name: llx_expensereport rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_expensereport ALTER COLUMN rowid SET DEFAULT nextval('public.llx_expensereport_rowid_seq'::regclass);


--
-- Name: llx_expensereport_det rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_expensereport_det ALTER COLUMN rowid SET DEFAULT nextval('public.llx_expensereport_det_rowid_seq'::regclass);


--
-- Name: llx_expensereport_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_expensereport_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_expensereport_extrafields_rowid_seq'::regclass);


--
-- Name: llx_export_model rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_export_model ALTER COLUMN rowid SET DEFAULT nextval('public.llx_export_model_rowid_seq'::regclass);


--
-- Name: llx_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_extrafields_rowid_seq'::regclass);


--
-- Name: llx_facture rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture ALTER COLUMN rowid SET DEFAULT nextval('public.llx_facture_rowid_seq'::regclass);


--
-- Name: llx_facture_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_facture_extrafields_rowid_seq'::regclass);


--
-- Name: llx_facture_fourn rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_fourn ALTER COLUMN rowid SET DEFAULT nextval('public.llx_facture_fourn_rowid_seq'::regclass);


--
-- Name: llx_facture_fourn_det rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_fourn_det ALTER COLUMN rowid SET DEFAULT nextval('public.llx_facture_fourn_det_rowid_seq'::regclass);


--
-- Name: llx_facture_fourn_det_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_fourn_det_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_facture_fourn_det_extrafields_rowid_seq'::regclass);


--
-- Name: llx_facture_fourn_det_rec rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_fourn_det_rec ALTER COLUMN rowid SET DEFAULT nextval('public.llx_facture_fourn_det_rec_rowid_seq'::regclass);


--
-- Name: llx_facture_fourn_det_rec_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_fourn_det_rec_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_facture_fourn_det_rec_extrafields_rowid_seq'::regclass);


--
-- Name: llx_facture_fourn_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_fourn_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_facture_fourn_extrafields_rowid_seq'::regclass);


--
-- Name: llx_facture_fourn_rec rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_fourn_rec ALTER COLUMN rowid SET DEFAULT nextval('public.llx_facture_fourn_rec_rowid_seq'::regclass);


--
-- Name: llx_facture_fourn_rec_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_fourn_rec_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_facture_fourn_rec_extrafields_rowid_seq'::regclass);


--
-- Name: llx_facture_rec rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_rec ALTER COLUMN rowid SET DEFAULT nextval('public.llx_facture_rec_rowid_seq'::regclass);


--
-- Name: llx_facture_rec_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_rec_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_facture_rec_extrafields_rowid_seq'::regclass);


--
-- Name: llx_facturedet rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facturedet ALTER COLUMN rowid SET DEFAULT nextval('public.llx_facturedet_rowid_seq'::regclass);


--
-- Name: llx_facturedet_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facturedet_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_facturedet_extrafields_rowid_seq'::regclass);


--
-- Name: llx_facturedet_rec rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facturedet_rec ALTER COLUMN rowid SET DEFAULT nextval('public.llx_facturedet_rec_rowid_seq'::regclass);


--
-- Name: llx_facturedet_rec_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facturedet_rec_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_facturedet_rec_extrafields_rowid_seq'::regclass);


--
-- Name: llx_fichinter rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_fichinter ALTER COLUMN rowid SET DEFAULT nextval('public.llx_fichinter_rowid_seq'::regclass);


--
-- Name: llx_fichinter_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_fichinter_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_fichinter_extrafields_rowid_seq'::regclass);


--
-- Name: llx_fichinter_rec rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_fichinter_rec ALTER COLUMN rowid SET DEFAULT nextval('public.llx_fichinter_rec_rowid_seq'::regclass);


--
-- Name: llx_fichinterdet rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_fichinterdet ALTER COLUMN rowid SET DEFAULT nextval('public.llx_fichinterdet_rowid_seq'::regclass);


--
-- Name: llx_fichinterdet_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_fichinterdet_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_fichinterdet_extrafields_rowid_seq'::regclass);


--
-- Name: llx_fichinterdet_rec rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_fichinterdet_rec ALTER COLUMN rowid SET DEFAULT nextval('public.llx_fichinterdet_rec_rowid_seq'::regclass);


--
-- Name: llx_holiday rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_holiday ALTER COLUMN rowid SET DEFAULT nextval('public.llx_holiday_rowid_seq'::regclass);


--
-- Name: llx_holiday_config rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_holiday_config ALTER COLUMN rowid SET DEFAULT nextval('public.llx_holiday_config_rowid_seq'::regclass);


--
-- Name: llx_holiday_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_holiday_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_holiday_extrafields_rowid_seq'::regclass);


--
-- Name: llx_holiday_logs rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_holiday_logs ALTER COLUMN rowid SET DEFAULT nextval('public.llx_holiday_logs_rowid_seq'::regclass);


--
-- Name: llx_import_model rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_import_model ALTER COLUMN rowid SET DEFAULT nextval('public.llx_import_model_rowid_seq'::regclass);


--
-- Name: llx_links rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_links ALTER COLUMN rowid SET DEFAULT nextval('public.llx_links_rowid_seq'::regclass);


--
-- Name: llx_localtax rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_localtax ALTER COLUMN rowid SET DEFAULT nextval('public.llx_localtax_rowid_seq'::regclass);


--
-- Name: llx_mailing_unsubscribe rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_mailing_unsubscribe ALTER COLUMN rowid SET DEFAULT nextval('public.llx_mailing_unsubscribe_rowid_seq'::regclass);


--
-- Name: llx_menu rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_menu ALTER COLUMN rowid SET DEFAULT nextval('public.llx_menu_rowid_seq'::regclass);


--
-- Name: llx_multicurrency rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_multicurrency ALTER COLUMN rowid SET DEFAULT nextval('public.llx_multicurrency_rowid_seq'::regclass);


--
-- Name: llx_multicurrency_rate rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_multicurrency_rate ALTER COLUMN rowid SET DEFAULT nextval('public.llx_multicurrency_rate_rowid_seq'::regclass);


--
-- Name: llx_notify rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_notify ALTER COLUMN rowid SET DEFAULT nextval('public.llx_notify_rowid_seq'::regclass);


--
-- Name: llx_notify_def rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_notify_def ALTER COLUMN rowid SET DEFAULT nextval('public.llx_notify_def_rowid_seq'::regclass);


--
-- Name: llx_notify_def_object id; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_notify_def_object ALTER COLUMN id SET DEFAULT nextval('public.llx_notify_def_object_id_seq'::regclass);


--
-- Name: llx_oauth_state rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_oauth_state ALTER COLUMN rowid SET DEFAULT nextval('public.llx_oauth_state_rowid_seq'::regclass);


--
-- Name: llx_oauth_token rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_oauth_token ALTER COLUMN rowid SET DEFAULT nextval('public.llx_oauth_token_rowid_seq'::regclass);


--
-- Name: llx_object_lang rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_object_lang ALTER COLUMN rowid SET DEFAULT nextval('public.llx_object_lang_rowid_seq'::regclass);


--
-- Name: llx_onlinesignature rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_onlinesignature ALTER COLUMN rowid SET DEFAULT nextval('public.llx_onlinesignature_rowid_seq'::regclass);


--
-- Name: llx_overwrite_trans rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_overwrite_trans ALTER COLUMN rowid SET DEFAULT nextval('public.llx_overwrite_trans_rowid_seq'::regclass);


--
-- Name: llx_paiement rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_paiement ALTER COLUMN rowid SET DEFAULT nextval('public.llx_paiement_rowid_seq'::regclass);


--
-- Name: llx_paiement_facture rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_paiement_facture ALTER COLUMN rowid SET DEFAULT nextval('public.llx_paiement_facture_rowid_seq'::regclass);


--
-- Name: llx_paiementcharge rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_paiementcharge ALTER COLUMN rowid SET DEFAULT nextval('public.llx_paiementcharge_rowid_seq'::regclass);


--
-- Name: llx_paiementfourn rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_paiementfourn ALTER COLUMN rowid SET DEFAULT nextval('public.llx_paiementfourn_rowid_seq'::regclass);


--
-- Name: llx_paiementfourn_facturefourn rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_paiementfourn_facturefourn ALTER COLUMN rowid SET DEFAULT nextval('public.llx_paiementfourn_facturefourn_rowid_seq'::regclass);


--
-- Name: llx_payment_donation rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_payment_donation ALTER COLUMN rowid SET DEFAULT nextval('public.llx_payment_donation_rowid_seq'::regclass);


--
-- Name: llx_payment_expensereport rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_payment_expensereport ALTER COLUMN rowid SET DEFAULT nextval('public.llx_payment_expensereport_rowid_seq'::regclass);


--
-- Name: llx_payment_loan rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_payment_loan ALTER COLUMN rowid SET DEFAULT nextval('public.llx_payment_loan_rowid_seq'::regclass);


--
-- Name: llx_payment_salary rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_payment_salary ALTER COLUMN rowid SET DEFAULT nextval('public.llx_payment_salary_rowid_seq'::regclass);


--
-- Name: llx_payment_various rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_payment_various ALTER COLUMN rowid SET DEFAULT nextval('public.llx_payment_various_rowid_seq'::regclass);


--
-- Name: llx_payment_vat rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_payment_vat ALTER COLUMN rowid SET DEFAULT nextval('public.llx_payment_vat_rowid_seq'::regclass);


--
-- Name: llx_paymentexpensereport_expensereport rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_paymentexpensereport_expensereport ALTER COLUMN rowid SET DEFAULT nextval('public.llx_paymentexpensereport_expensereport_rowid_seq'::regclass);


--
-- Name: llx_pos_cash_fence rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_pos_cash_fence ALTER COLUMN rowid SET DEFAULT nextval('public.llx_pos_cash_fence_rowid_seq'::regclass);


--
-- Name: llx_pos_cash_fence_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_pos_cash_fence_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_pos_cash_fence_extrafields_rowid_seq'::regclass);


--
-- Name: llx_prelevement rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_prelevement ALTER COLUMN rowid SET DEFAULT nextval('public.llx_prelevement_rowid_seq'::regclass);


--
-- Name: llx_prelevement_bons rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_prelevement_bons ALTER COLUMN rowid SET DEFAULT nextval('public.llx_prelevement_bons_rowid_seq'::regclass);


--
-- Name: llx_prelevement_demande rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_prelevement_demande ALTER COLUMN rowid SET DEFAULT nextval('public.llx_prelevement_demande_rowid_seq'::regclass);


--
-- Name: llx_prelevement_lignes rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_prelevement_lignes ALTER COLUMN rowid SET DEFAULT nextval('public.llx_prelevement_lignes_rowid_seq'::regclass);


--
-- Name: llx_prelevement_rejet rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_prelevement_rejet ALTER COLUMN rowid SET DEFAULT nextval('public.llx_prelevement_rejet_rowid_seq'::regclass);


--
-- Name: llx_printing rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_printing ALTER COLUMN rowid SET DEFAULT nextval('public.llx_printing_rowid_seq'::regclass);


--
-- Name: llx_product rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product ALTER COLUMN rowid SET DEFAULT nextval('public.llx_product_rowid_seq'::regclass);


--
-- Name: llx_product_association rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_association ALTER COLUMN rowid SET DEFAULT nextval('public.llx_product_association_rowid_seq'::regclass);


--
-- Name: llx_product_attribute rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_attribute ALTER COLUMN rowid SET DEFAULT nextval('public.llx_product_attribute_rowid_seq'::regclass);


--
-- Name: llx_product_attribute_value rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_attribute_value ALTER COLUMN rowid SET DEFAULT nextval('public.llx_product_attribute_value_rowid_seq'::regclass);


--
-- Name: llx_product_batch rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_batch ALTER COLUMN rowid SET DEFAULT nextval('public.llx_product_batch_rowid_seq'::regclass);


--
-- Name: llx_product_customer_price rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_customer_price ALTER COLUMN rowid SET DEFAULT nextval('public.llx_product_customer_price_rowid_seq'::regclass);


--
-- Name: llx_product_customer_price_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_customer_price_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_product_customer_price_extrafields_rowid_seq'::regclass);


--
-- Name: llx_product_customer_price_log rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_customer_price_log ALTER COLUMN rowid SET DEFAULT nextval('public.llx_product_customer_price_log_rowid_seq'::regclass);


--
-- Name: llx_product_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_product_extrafields_rowid_seq'::regclass);


--
-- Name: llx_product_fournisseur_price rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_fournisseur_price ALTER COLUMN rowid SET DEFAULT nextval('public.llx_product_fournisseur_price_rowid_seq'::regclass);


--
-- Name: llx_product_fournisseur_price_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_fournisseur_price_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_product_fournisseur_price_extrafields_rowid_seq'::regclass);


--
-- Name: llx_product_fournisseur_price_log rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_fournisseur_price_log ALTER COLUMN rowid SET DEFAULT nextval('public.llx_product_fournisseur_price_log_rowid_seq'::regclass);


--
-- Name: llx_product_lang rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_lang ALTER COLUMN rowid SET DEFAULT nextval('public.llx_product_lang_rowid_seq'::regclass);


--
-- Name: llx_product_lot rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_lot ALTER COLUMN rowid SET DEFAULT nextval('public.llx_product_lot_rowid_seq'::regclass);


--
-- Name: llx_product_lot_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_lot_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_product_lot_extrafields_rowid_seq'::regclass);


--
-- Name: llx_product_price rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_price ALTER COLUMN rowid SET DEFAULT nextval('public.llx_product_price_rowid_seq'::regclass);


--
-- Name: llx_product_price_by_qty rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_price_by_qty ALTER COLUMN rowid SET DEFAULT nextval('public.llx_product_price_by_qty_rowid_seq'::regclass);


--
-- Name: llx_product_price_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_price_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_product_price_extrafields_rowid_seq'::regclass);


--
-- Name: llx_product_pricerules rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_pricerules ALTER COLUMN rowid SET DEFAULT nextval('public.llx_product_pricerules_rowid_seq'::regclass);


--
-- Name: llx_product_stock rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_stock ALTER COLUMN rowid SET DEFAULT nextval('public.llx_product_stock_rowid_seq'::regclass);


--
-- Name: llx_product_thirdparty rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_thirdparty ALTER COLUMN rowid SET DEFAULT nextval('public.llx_product_thirdparty_rowid_seq'::regclass);


--
-- Name: llx_projet rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_projet ALTER COLUMN rowid SET DEFAULT nextval('public.llx_projet_rowid_seq'::regclass);


--
-- Name: llx_projet_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_projet_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_projet_extrafields_rowid_seq'::regclass);


--
-- Name: llx_projet_task rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_projet_task ALTER COLUMN rowid SET DEFAULT nextval('public.llx_projet_task_rowid_seq'::regclass);


--
-- Name: llx_projet_task_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_projet_task_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_projet_task_extrafields_rowid_seq'::regclass);


--
-- Name: llx_propal rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_propal ALTER COLUMN rowid SET DEFAULT nextval('public.llx_propal_rowid_seq'::regclass);


--
-- Name: llx_propal_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_propal_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_propal_extrafields_rowid_seq'::regclass);


--
-- Name: llx_propal_merge_pdf_product rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_propal_merge_pdf_product ALTER COLUMN rowid SET DEFAULT nextval('public.llx_propal_merge_pdf_product_rowid_seq'::regclass);


--
-- Name: llx_propaldet rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_propaldet ALTER COLUMN rowid SET DEFAULT nextval('public.llx_propaldet_rowid_seq'::regclass);


--
-- Name: llx_propaldet_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_propaldet_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_propaldet_extrafields_rowid_seq'::regclass);


--
-- Name: llx_reception rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_reception ALTER COLUMN rowid SET DEFAULT nextval('public.llx_reception_rowid_seq'::regclass);


--
-- Name: llx_reception_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_reception_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_reception_extrafields_rowid_seq'::regclass);


--
-- Name: llx_receptiondet_batch rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_receptiondet_batch ALTER COLUMN rowid SET DEFAULT nextval('public.llx_receptiondet_batch_rowid_seq'::regclass);


--
-- Name: llx_receptiondet_batch_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_receptiondet_batch_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_receptiondet_batch_extrafields_rowid_seq'::regclass);


--
-- Name: llx_resource rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_resource ALTER COLUMN rowid SET DEFAULT nextval('public.llx_resource_rowid_seq'::regclass);


--
-- Name: llx_resource_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_resource_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_resource_extrafields_rowid_seq'::regclass);


--
-- Name: llx_salary rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_salary ALTER COLUMN rowid SET DEFAULT nextval('public.llx_salary_rowid_seq'::regclass);


--
-- Name: llx_salary_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_salary_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_salary_extrafields_rowid_seq'::regclass);


--
-- Name: llx_societe rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe ALTER COLUMN rowid SET DEFAULT nextval('public.llx_societe_rowid_seq'::regclass);


--
-- Name: llx_societe_account rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_account ALTER COLUMN rowid SET DEFAULT nextval('public.llx_societe_account_rowid_seq'::regclass);


--
-- Name: llx_societe_commerciaux rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_commerciaux ALTER COLUMN rowid SET DEFAULT nextval('public.llx_societe_commerciaux_rowid_seq'::regclass);


--
-- Name: llx_societe_contacts rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_contacts ALTER COLUMN rowid SET DEFAULT nextval('public.llx_societe_contacts_rowid_seq'::regclass);


--
-- Name: llx_societe_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_societe_extrafields_rowid_seq'::regclass);


--
-- Name: llx_societe_prices rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_prices ALTER COLUMN rowid SET DEFAULT nextval('public.llx_societe_prices_rowid_seq'::regclass);


--
-- Name: llx_societe_remise rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_remise ALTER COLUMN rowid SET DEFAULT nextval('public.llx_societe_remise_rowid_seq'::regclass);


--
-- Name: llx_societe_remise_except rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_remise_except ALTER COLUMN rowid SET DEFAULT nextval('public.llx_societe_remise_except_rowid_seq'::regclass);


--
-- Name: llx_societe_remise_supplier rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_remise_supplier ALTER COLUMN rowid SET DEFAULT nextval('public.llx_societe_remise_supplier_rowid_seq'::regclass);


--
-- Name: llx_societe_rib rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_rib ALTER COLUMN rowid SET DEFAULT nextval('public.llx_societe_rib_rowid_seq'::regclass);


--
-- Name: llx_socpeople rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_socpeople ALTER COLUMN rowid SET DEFAULT nextval('public.llx_socpeople_rowid_seq'::regclass);


--
-- Name: llx_socpeople_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_socpeople_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_socpeople_extrafields_rowid_seq'::regclass);


--
-- Name: llx_stock_mouvement rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_stock_mouvement ALTER COLUMN rowid SET DEFAULT nextval('public.llx_stock_mouvement_rowid_seq'::regclass);


--
-- Name: llx_stock_mouvement_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_stock_mouvement_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_stock_mouvement_extrafields_rowid_seq'::regclass);


--
-- Name: llx_subscription rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_subscription ALTER COLUMN rowid SET DEFAULT nextval('public.llx_subscription_rowid_seq'::regclass);


--
-- Name: llx_supplier_proposal rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_supplier_proposal ALTER COLUMN rowid SET DEFAULT nextval('public.llx_supplier_proposal_rowid_seq'::regclass);


--
-- Name: llx_supplier_proposal_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_supplier_proposal_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_supplier_proposal_extrafields_rowid_seq'::regclass);


--
-- Name: llx_supplier_proposaldet rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_supplier_proposaldet ALTER COLUMN rowid SET DEFAULT nextval('public.llx_supplier_proposaldet_rowid_seq'::regclass);


--
-- Name: llx_supplier_proposaldet_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_supplier_proposaldet_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_supplier_proposaldet_extrafields_rowid_seq'::regclass);


--
-- Name: llx_tva rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_tva ALTER COLUMN rowid SET DEFAULT nextval('public.llx_tva_rowid_seq'::regclass);


--
-- Name: llx_user rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_user ALTER COLUMN rowid SET DEFAULT nextval('public.llx_user_rowid_seq'::regclass);


--
-- Name: llx_user_alert rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_user_alert ALTER COLUMN rowid SET DEFAULT nextval('public.llx_user_alert_rowid_seq'::regclass);


--
-- Name: llx_user_employment rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_user_employment ALTER COLUMN rowid SET DEFAULT nextval('public.llx_user_employment_rowid_seq'::regclass);


--
-- Name: llx_user_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_user_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_user_extrafields_rowid_seq'::regclass);


--
-- Name: llx_user_rib rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_user_rib ALTER COLUMN rowid SET DEFAULT nextval('public.llx_user_rib_rowid_seq'::regclass);


--
-- Name: llx_user_rights rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_user_rights ALTER COLUMN rowid SET DEFAULT nextval('public.llx_user_rights_rowid_seq'::regclass);


--
-- Name: llx_usergroup rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_usergroup ALTER COLUMN rowid SET DEFAULT nextval('public.llx_usergroup_rowid_seq'::regclass);


--
-- Name: llx_usergroup_extrafields rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_usergroup_extrafields ALTER COLUMN rowid SET DEFAULT nextval('public.llx_usergroup_extrafields_rowid_seq'::regclass);


--
-- Name: llx_usergroup_rights rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_usergroup_rights ALTER COLUMN rowid SET DEFAULT nextval('public.llx_usergroup_rights_rowid_seq'::regclass);


--
-- Name: llx_usergroup_user rowid; Type: DEFAULT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_usergroup_user ALTER COLUMN rowid SET DEFAULT nextval('public.llx_usergroup_user_rowid_seq'::regclass);


--
-- Data for Name: llx_accounting_account; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_accounting_account (rowid, entity, datec, tms, fk_pcg_version, pcg_type, account_number, account_parent, label, labelshort, fk_accounting_category, fk_user_author, fk_user_modif, active, centralized, reconcilable, import_key, extraparams) FROM stdin;
\.


--
-- Data for Name: llx_accounting_bookkeeping; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_accounting_bookkeeping (rowid, entity, ref, piece_num, doc_date, doc_type, doc_ref, fk_doc, fk_docdet, thirdparty_code, subledger_account, subledger_label, numero_compte, label_compte, label_operation, debit, credit, montant, sens, multicurrency_amount, multicurrency_code, lettering_code, date_lettering, date_lim_reglement, fk_user_author, fk_user_modif, date_creation, tms, fk_user, code_journal, journal_label, date_validated, date_export, import_key, extraparams) FROM stdin;
\.


--
-- Data for Name: llx_accounting_bookkeeping_tmp; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_accounting_bookkeeping_tmp (rowid, ref, entity, doc_date, doc_type, doc_ref, fk_doc, fk_docdet, thirdparty_code, subledger_account, subledger_label, numero_compte, label_compte, label_operation, debit, credit, montant, sens, multicurrency_amount, multicurrency_code, lettering_code, date_lettering, date_lim_reglement, fk_user_author, fk_user_modif, date_creation, tms, fk_user, code_journal, journal_label, piece_num, date_validated, import_key, extraparams) FROM stdin;
\.


--
-- Data for Name: llx_accounting_fiscalyear; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_accounting_fiscalyear (rowid, label, date_start, date_end, statut, entity, datec, tms, fk_user_author, fk_user_modif) FROM stdin;
\.


--
-- Data for Name: llx_accounting_groups_account; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_accounting_groups_account (rowid, fk_accounting_account, fk_c_accounting_category) FROM stdin;
\.


--
-- Data for Name: llx_accounting_journal; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_accounting_journal (rowid, entity, code, label, nature, active) FROM stdin;
1	1	VT	ACCOUNTING_SELL_JOURNAL	2	1
2	1	AC	ACCOUNTING_PURCHASE_JOURNAL	3	1
3	1	BQ	FinanceJournal	4	1
4	1	OD	ACCOUNTING_MISCELLANEOUS_JOURNAL	1	1
5	1	AN	ACCOUNTING_HAS_NEW_JOURNAL	9	1
6	1	ER	ExpenseReportsJournal	5	1
7	1	INV	InventoryJournal	8	1
\.


--
-- Data for Name: llx_accounting_system; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_accounting_system (rowid, fk_country, pcg_version, label, active, date_creation, fk_user_author) FROM stdin;
1	1	PCG25-DEV	The developed accountancy french plan 2025	1	\N	\N
2	1	PCG18-ASSOC	French foundation chart of accounts 2018	1	\N	\N
3	1	PCGAFR14-DEV	The developed farm accountancy french plan 2014	1	\N	\N
4	2	PCMN-BASE	The base accountancy belgium plan	1	\N	\N
5	2	MAR-VERKORT	The base accountancy belgium plan Dutch	1	\N	\N
6	4	PCG08-PYME	The PYME accountancy spanish plan	1	\N	\N
7	4	PCG08-PYME-CAT	The PYME accountancy spanish plan in catalan language	1	\N	\N
8	5	SKR03	Standardkontenrahmen SKR 03	1	\N	\N
9	5	SKR04	Standardkontenrahmen SKR 04	1	\N	\N
10	6	PCG_SUISSE	Switzerland plan	1	\N	\N
11	7	ENG-BASE	England plan	1	\N	\N
12	10	PCT	The Tunisia plan	1	\N	\N
13	12	PCG	The Moroccan chart of accounts	1	\N	\N
14	13	NSCF	Nouveau système comptable financier	1	\N	\N
15	17	NL-VERKORT	Verkort rekeningschema	1	\N	\N
16	20	BAS-K1-MINI	The Swedish mini chart of accounts	1	\N	\N
17	41	AT-BASE	Plan Austria	1	\N	\N
18	67	PC-MIPYME	The PYME accountancy Chile plan	1	\N	\N
19	80	DK-STD	Standardkontoplan fra SKAT	1	\N	\N
20	84	EC-SUPERCIAS	Plan de cuentas Ecuador	1	\N	\N
21	70	CO-PUC	Plan único de cuentas Colombia	1	\N	\N
22	140	PCN2020-LUXEMBURG	Plan comptable normalisé 2020 Luxembourgeois	1	\N	\N
23	188	RO-BASE	Plan de conturi romanesc	1	\N	\N
24	102	Ε.Λ.Π.	Ελληνικά Λογιστικά Πρότυπα	1	\N	\N
25	49	SYSCOHADA-BJ	Plan comptable Ouest-Africain	1	\N	\N
26	60	SYSCOHADA-BF	Plan comptable Ouest-Africain	1	\N	\N
27	73	SYSCOHADA-CD	Plan comptable Ouest-Africain	1	\N	\N
28	65	SYSCOHADA-CF	Plan comptable Ouest-Africain	1	\N	\N
29	72	SYSCOHADA-CG	Plan comptable Ouest-Africain	1	\N	\N
30	21	SYSCOHADA-CI	Plan comptable Ouest-Africain	1	\N	\N
31	24	SYSCOHADA-CM	Plan comptable Ouest-Africain	1	\N	\N
32	16	SYSCOHADA-GA	Plan comptable Ouest-Africain	1	\N	\N
33	87	SYSCOHADA-GQ	Plan comptable Ouest-Africain	1	\N	\N
34	71	SYSCOHADA-KM	Plan comptable Ouest-Africain	1	\N	\N
35	147	SYSCOHADA-ML	Plan comptable Ouest-Africain	1	\N	\N
36	168	SYSCOHADA-NE	Plan comptable Ouest-Africain	1	\N	\N
37	22	SYSCOHADA-SN	Plan comptable Ouest-Africain	1	\N	\N
38	66	SYSCOHADA-TD	Plan comptable Ouest-Africain	1	\N	\N
39	15	SYSCOHADA-TG	Plan comptable Ouest-Africain	1	\N	\N
40	11	US-BASE	USA basic chart of accounts	1	\N	\N
41	11	US-GAAP-BASIC	USA GAAP basic chart of accounts	1	\N	\N
42	14	CA-ENG-BASE	Canadian basic chart of accounts - English	1	\N	\N
43	154	SAT/24-2019	Catalogo y codigo agrupador fiscal del 2019	1	\N	\N
44	123	JPN-BASE	日本 勘定科目表 基本版	1	\N	\N
\.


--
-- Data for Name: llx_actioncomm; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_actioncomm (id, ref, ref_ext, entity, datep, datep2, fk_action, code, datec, tms, fk_user_author, fk_user_mod, fk_project, fk_task, fk_soc, fk_contact, fk_parent, fk_user_action, transparency, priority, visibility, fulldayevent, percent, location, durationp, label, note, calling_duration, email_subject, email_msgid, email_from, email_sender, email_to, email_tocc, email_tobcc, errors_to, reply_to, recurid, recurrule, recurdateend, num_vote, event_paid, status, fk_element, elementtype, ip, fk_bookcal_calendar, import_key, extraparams) FROM stdin;
1	1	\N	1	2026-02-14 16:15:49	2026-02-14 16:15:49	40	AC_USER_CREATE	2026-02-14 16:15:49	2026-02-14 16:15:49.333629	1	\N	\N	\N	\N	\N	0	1	0	0	default	0	-1		0	Enregistrement  effectué	Enregistrement  effectué	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	2	user	172.18.0.2	\N	\N	\N
2	2	\N	1	2026-02-14 16:15:49	2026-02-14 16:15:49	40	AC_USER_NEW_PASSWORD	2026-02-14 16:15:49	2026-02-14 16:15:49.333629	1	\N	\N	\N	\N	\N	0	1	0	0	default	0	-1		0	Mot de passe modifié dans Dolibarr	Mot de passe modifié dans Dolibarr	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	2	user	172.18.0.2	\N	\N	\N
3	3	\N	1	2026-02-14 16:37:07	2026-02-14 16:37:07	40	AC_USER_ENABLEDISABLE	2026-02-14 16:37:07	2026-02-14 16:37:07.678836	1	\N	\N	\N	\N	\N	0	1	0	0	default	0	-1		0	Utilisateur activé ou désactivé	User samir.guelbi disabled	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	2	user	172.18.0.2	\N	\N	\N
4	4	\N	1	2026-02-15 09:28:02	2026-02-15 09:28:02	40	AC_USER_NEW_PASSWORD	2026-02-15 09:28:02	2026-02-15 09:28:02.004186	1	\N	\N	\N	\N	\N	0	1	0	0	default	0	-1		0	Mot de passe modifié dans Dolibarr	Mot de passe modifié dans Dolibarr	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	1	user	172.18.0.2	\N	\N	\N
5	5	\N	1	2026-02-15 09:28:02	2026-02-15 09:28:02	40	AC_USER_MODIFY	2026-02-15 09:28:02	2026-02-15 09:28:02.004186	1	\N	\N	\N	\N	\N	0	1	0	0	default	0	-1		0	Enregistrement 1 modifié	Enregistrement 1 modifié	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	1	user	172.18.0.2	\N	\N	\N
\.


--
-- Data for Name: llx_actioncomm_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_actioncomm_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_actioncomm_reminder; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_actioncomm_reminder (rowid, dateremind, typeremind, fk_user, offsetvalue, offsetunit, status, datedone, lasterror, entity, fk_actioncomm, fk_email_template) FROM stdin;
\.


--
-- Data for Name: llx_actioncomm_resources; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_actioncomm_resources (rowid, fk_actioncomm, element_type, fk_element, answer_status, mandatory, transparency) FROM stdin;
1	1	user	1	0	0	0
2	2	user	1	0	0	0
3	3	user	1	0	0	0
4	4	user	1	0	0	0
5	5	user	1	0	0	0
\.


--
-- Data for Name: llx_adherent; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_adherent (rowid, ref, entity, ref_ext, gender, civility, lastname, firstname, login, pass, pass_crypted, fk_adherent_type, morphy, societe, fk_soc, address, zip, town, state_id, country, email, url, socialnetworks, phone, phone_perso, phone_mobile, birth, photo, statut, public, datefin, default_lang, note_private, note_public, model_pdf, datevalid, datec, tms, fk_user_author, fk_user_mod, fk_user_valid, canvas, ip, import_key) FROM stdin;
\.


--
-- Data for Name: llx_adherent_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_adherent_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_adherent_type; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_adherent_type (rowid, entity, tms, statut, libelle, morphy, duration, subscription, amount, caneditamount, vote, note, mail_valid) FROM stdin;
\.


--
-- Data for Name: llx_adherent_type_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_adherent_type_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_adherent_type_lang; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_adherent_type_lang (rowid, fk_type, lang, label, description, email, import_key) FROM stdin;
\.


--
-- Data for Name: llx_bank; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_bank (rowid, datec, tms, datev, dateo, amount, amount_main_currency, label, fk_account, fk_user_author, fk_user_rappro, fk_type, num_releve, num_chq, numero_compte, rappro, note, fk_bordereau, "position", banque, emetteur, author, origin_id, origin_type, import_key) FROM stdin;
\.


--
-- Data for Name: llx_bank_account; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_bank_account (rowid, datec, tms, ref, label, entity, fk_user_author, fk_user_modif, bank, code_banque, code_guichet, number, cle_rib, bic, bic_intermediate, iban_prefix, country_iban, cle_iban, domiciliation, pti_in_ctti, state_id, fk_pays, proprio, owner_address, owner_zip, owner_town, owner_country_id, courant, clos, rappro, url, account_number, fk_accountancy_journal, currency_code, min_allowed, min_desired, comment, note_public, model_pdf, import_key, extraparams, ics, ics_transfer) FROM stdin;
\.


--
-- Data for Name: llx_bank_account_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_bank_account_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_bank_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_bank_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_bank_url; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_bank_url (rowid, fk_bank, url_id, url, label, type) FROM stdin;
\.


--
-- Data for Name: llx_blockedlog; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_blockedlog (rowid, entity, date_creation, action, amounts, ref_object, date_object, user_fullname, object_data, signature, element, fk_user, fk_object, signature_line, object_version, certified, tms, debuginfo) FROM stdin;
\.


--
-- Data for Name: llx_blockedlog_authority; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_blockedlog_authority (rowid, blockchain, signature, tms) FROM stdin;
\.


--
-- Data for Name: llx_bookmark; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_bookmark (rowid, fk_user, dateb, url, target, title, favicon, "position", entity) FROM stdin;
\.


--
-- Data for Name: llx_bordereau_cheque; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_bordereau_cheque (rowid, ref, label, ref_ext, type, datec, date_bordereau, amount, nbcheque, fk_bank_account, fk_user_author, statut, tms, note, entity) FROM stdin;
\.


--
-- Data for Name: llx_boxes; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_boxes (rowid, entity, box_id, "position", box_order, fk_user, maxline, params) FROM stdin;
1	1	1	0	A01	0	\N	\N
2	1	2	0	B02	0	\N	\N
3	1	3	0	A03	0	\N	\N
4	1	4	0	B04	0	\N	\N
5	1	5	0	A05	0	\N	\N
\.


--
-- Data for Name: llx_boxes_def; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_boxes_def (rowid, file, entity, fk_user, tms, note) FROM stdin;
1	box_lastlogin.php	1	0	2026-02-08 16:14:29.029274	\N
2	box_birthdays.php	1	0	2026-02-08 16:14:29.029274	\N
3	box_dolibarr_state_board.php	1	0	2026-02-08 16:14:29.029274	\N
4	box_actions.php	1	0	2026-02-08 16:14:29.122577	\N
5	box_actions_future.php	1	0	2026-02-08 16:14:29.122577	\N
\.


--
-- Data for Name: llx_c_action_trigger; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_action_trigger (rowid, elementtype, code, contexts, label, description, rang) FROM stdin;
1	societe	COMPANY_CREATE	\N	Third party created	Executed when a third party is created	1
2	societe	COMPANY_MODIFY	\N	Third party update	Executed when you update third party	1
3	societe	COMPANY_SENTBYMAIL	\N	Mails sent from third party card	Executed when you send email from third party card	1
4	societe	COMPANY_DELETE	\N	Third party deleted	Executed when you delete third party	1
5	societe	COMPANY_RIB_CREATE	\N	Third party payment information created	Executed when a third party payment information is created	1
6	societe	COMPANY_RIB_MODIFY	\N	Third party payment information updated	Executed when a third party payment information is updated	1
7	societe	COMPANY_RIB_DELETE	\N	Third party payment information deleted	Executed when a third party payment information is deleted	1
8	propal	PROPAL_VALIDATE	\N	Customer proposal validated	Executed when a commercial proposal is validated	2
9	propal	PROPAL_MODIFY	\N	Customer proposal modified	Executed when a customer proposal is modified	2
10	propal	PROPAL_SENTBYMAIL	\N	Commercial proposal sent by mail	Executed when a commercial proposal is sent by mail	3
11	propal	PROPAL_CLOSE_SIGNED	\N	Customer proposal closed signed	Executed when a customer proposal is closed signed	2
12	propal	PROPAL_CLOSE_REFUSED	\N	Customer proposal closed refused	Executed when a customer proposal is closed refused	2
13	propal	PROPAL_CLASSIFY_BILLED	\N	Customer proposal set billed	Executed when a customer proposal is set to billed	2
14	propal	PROPAL_DELETE	\N	Customer proposal deleted	Executed when a customer proposal is deleted	2
15	commande	ORDER_VALIDATE	\N	Customer order validate	Executed when a customer order is validated	4
16	commande	ORDER_CLOSE	\N	Customer order classify delivered	Executed when a customer order is set delivered	5
17	commande	ORDER_MODIFY	\N	Customer order modified	Executed when a customer order is set modified	5
18	commande	ORDER_CLASSIFY_BILLED	\N	Customer order classify billed	Executed when a customer order is set to billed	5
19	commande	ORDER_CANCEL	\N	Customer order canceled	Executed when a customer order is canceled	5
20	commande	ORDER_SENTBYMAIL	\N	Customer order sent by mail	Executed when a customer order is sent by mail 	5
21	commande	ORDER_DELETE	\N	Customer order deleted	Executed when a customer order is deleted	5
22	facture	BILL_VALIDATE	\N	Customer invoice validated	Executed when a customer invoice is approved	6
23	facture	BILL_MODIFY	\N	Customer invoice modified	Executed when a customer invoice is modified	7
24	facture	BILL_PAYED	\N	Customer invoice payed	Executed when a customer invoice is payed	7
25	facture	BILL_CANCEL	\N	Customer invoice canceled	Executed when a customer invoice is canceled	8
26	facture	BILL_SENTBYMAIL	\N	Customer invoice sent by mail	Executed when a customer invoice is sent by mail	9
27	facture	BILL_UNVALIDATE	\N	Customer invoice unvalidated	Executed when a customer invoice status set back to draft	9
28	facture	BILL_DELETE	\N	Customer invoice deleted	Executed when a customer invoice is deleted	9
29	proposal_supplier	PROPOSAL_SUPPLIER_VALIDATE	\N	Price request validated	Executed when a commercial proposal is validated	10
30	proposal_supplier	PROPOSAL_SUPPLIER_MODIFY	\N	Price request modified	Executed when a commercial proposal is modified	10
31	proposal_supplier	PROPOSAL_SUPPLIER_SENTBYMAIL	\N	Price request sent by mail	Executed when a commercial proposal is sent by mail	10
32	proposal_supplier	PROPOSAL_SUPPLIER_CLOSE_SIGNED	\N	Price request closed signed	Executed when a customer proposal is closed signed	10
33	proposal_supplier	PROPOSAL_SUPPLIER_CLOSE_REFUSED	\N	Price request closed refused	Executed when a customer proposal is closed refused	10
34	proposal_supplier	PROPOSAL_SUPPLIER_DELETE	\N	Price request deleted	Executed when a customer proposal delete	10
35	order_supplier	ORDER_SUPPLIER_VALIDATE	\N	Purchase order validated	Executed when a supplier order is validated	12
36	order_supplier	ORDER_SUPPLIER_APPROVE	\N	Purchase order request approved	Executed when a supplier order is approved	13
37	order_supplier	ORDER_SUPPLIER_MODIFY	\N	Purchase order request modified	Executed when a supplier order is modified	13
38	order_supplier	ORDER_SUPPLIER_SUBMIT	\N	Purchase order request submited	Executed when a supplier order is approved	13
39	order_supplier	ORDER_SUPPLIER_RECEIVE	\N	Purchase order request received	Executed when a supplier order is received	13
40	order_supplier	ORDER_SUPPLIER_REFUSE	\N	Purchase order request refused	Executed when a supplier order is refused	13
41	order_supplier	ORDER_SUPPLIER_CANCEL	\N	Purchase order request canceled	Executed when a supplier order is canceled	13
42	order_supplier	ORDER_SUPPLIER_SENTBYMAIL	\N	Purchase order sent by mail	Executed when a supplier order is sent by mail	14
43	order_supplier	ORDER_SUPPLIER_CLASSIFY_BILLED	\N	Purchase order set billed	Executed when a supplier order is set as billed	14
44	order_supplier	ORDER_SUPPLIER_DELETE	\N	Purchase order deleted	Executed when a supplier order is deleted	14
45	invoice_supplier	BILL_SUPPLIER_VALIDATE	\N	Supplier invoice validated	Executed when a supplier invoice is validated	15
46	invoice_supplier	BILL_SUPPLIER_MODIFY	\N	Supplier invoice modified	Executed when a supplier invoice is modified	15
47	invoice_supplier	BILL_SUPPLIER_UNVALIDATE	\N	Supplier invoice unvalidated	Executed when a supplier invoice status is set back to draft	15
48	invoice_supplier	BILL_SUPPLIER_PAYED	\N	Supplier invoice payed	Executed when a supplier invoice is payed	16
49	invoice_supplier	BILL_SUPPLIER_SENTBYMAIL	\N	Supplier invoice sent by mail	Executed when a supplier invoice is sent by mail	17
50	invoice_supplier	BILL_SUPPLIER_CANCELED	\N	Supplier invoice cancelled	Executed when a supplier invoice is cancelled	17
51	invoice_supplier	BILL_SUPPLIER_DELETE	\N	Supplier invoice deleted	Executed when a supplier invoice is deleted	17
52	contrat	CONTRACT_VALIDATE	\N	Contract validated	Executed when a contract is validated	18
53	contrat	CONTRACT_MODIFY	\N	Contract modified	Executed when a contract is modified	18
54	contrat	CONTRACT_SENTBYMAIL	\N	Contract sent by mail	Executed when a contract is sent by mail	18
55	contrat	CONTRACT_DELETE	\N	Contract deleted	Executed when a contract is deleted	18
56	shipping	SHIPPING_VALIDATE	\N	Shipping validated	Executed when a shipping is validated	20
57	shipping	SHIPPING_MODIFY	\N	Shipping modified	Executed when a shipping is modified	20
58	shipping	SHIPPING_SENTBYMAIL	\N	Shipping sent by mail	Executed when a shipping is sent by mail	21
59	shipping	SHIPPING_DELETE	\N	Shipping sent is deleted	Executed when a shipping is deleted	21
60	reception	RECEPTION_VALIDATE	\N	Reception validated	Executed when a reception is validated	22
61	reception	RECEPTION_SENTBYMAIL	\N	Reception sent by mail	Executed when a reception is sent by mail	22
62	member	MEMBER_VALIDATE	\N	Member validated	Executed when a member is validated	22
63	member	MEMBER_MODIFY	\N	Member modified	Executed when a member is modified	23
64	member	MEMBER_SENTBYMAIL	\N	Mails sent from member card	Executed when you send email from member card	23
65	member	MEMBER_SUBSCRIPTION_CREATE	\N	Member subscribtion recorded	Executed when a member subscribtion is deleted	24
66	member	MEMBER_SUBSCRIPTION_MODIFY	\N	Member subscribtion modified	Executed when a member subscribtion is modified	24
67	member	MEMBER_SUBSCRIPTION_DELETE	\N	Member subscribtion deleted	Executed when a member subscribtion is deleted	24
68	member	MEMBER_RESILIATE	\N	Member resiliated	Executed when a member is resiliated	25
69	member	MEMBER_DELETE	\N	Member deleted	Executed when a member is deleted	26
70	member	MEMBER_EXCLUDE	\N	Member excluded	Executed when a member is excluded	27
71	ficheinter	FICHINTER_VALIDATE	\N	Intervention validated	Executed when a intervention is validated	30
72	ficheinter	FICHINTER_MODIFY	\N	Intervention modified	Executed when a intervention is modify	30
73	ficheinter	FICHINTER_CLASSIFY_BILLED	\N	Intervention set billed	Executed when a intervention is set to billed (when option FICHINTER_CLASSIFY_BILLED is set)	32
74	ficheinter	FICHINTER_CLASSIFY_UNBILLED	\N	Intervention set unbilled	Executed when a intervention is set to unbilled (when option FICHINTER_CLASSIFY_BILLED is set)	33
75	ficheinter	FICHINTER_REOPEN	\N	Intervention opened	Executed when a intervention is re-opened	34
76	ficheinter	FICHINTER_SENTBYMAIL	\N	Intervention sent by mail	Executed when a intervention is sent by mail	35
77	ficheinter	FICHINTER_DELETE	\N	Intervention is deleted	Executed when a intervention is deleted	35
78	ficheinter	FICHINTER_CLOSE	\N	Intervention is done	Executed when a intervention is done	36
79	product	PRODUCT_CREATE	\N	Product or service created	Executed when a product or sevice is created	40
80	product	PRODUCT_MODIFY	\N	Product or service modified	Executed when a product or sevice is modified	41
81	product	PRODUCT_DELETE	\N	Product or service deleted	Executed when a product or sevice is deleted	42
82	expensereport	EXPENSE_REPORT_CREATE	\N	Expense report created	Executed when an expense report is created	201
83	expensereport	EXPENSE_REPORT_VALIDATE	\N	Expense report validated	Executed when an expense report is validated	202
84	expensereport	EXPENSE_REPORT_MODIFY	\N	Expense report modified	Executed when an expense report is modified	202
85	expensereport	EXPENSE_REPORT_APPROVE	\N	Expense report approved	Executed when an expense report is approved	203
86	expensereport	EXPENSE_REPORT_PAID	\N	Expense report billed	Executed when an expense report is set as billed	204
87	expensereport	EXPENSE_REPORT_DELETE	\N	Expense report deleted	Executed when an expense report is deleted	205
88	project	PROJECT_CREATE	\N	Project creation	Executed when a project is created	140
89	project	PROJECT_VALIDATE	\N	Project validation	Executed when a project is validated	141
90	project	PROJECT_MODIFY	\N	Project modified	Executed when a project is modified	142
91	project	PROJECT_DELETE	\N	Project deleted	Executed when a project is deleted	143
92	project	PROJECT_SENTBYMAIL	\N	Project sent by mail	Executed when a project is sent by email	144
93	project	PROJECT_CLOSE	\N	Project closed	Executed when a project is closed	145
94	ticket	TICKET_CREATE	\N	Ticket created	Executed when a ticket is created	161
95	ticket	TICKET_MODIFY	\N	Ticket modified	Executed when a ticket is modified	163
96	ticket	TICKET_ASSIGNED	\N	Ticket assigned	Executed when a ticket is modified	164
97	ticket	TICKET_CLOSE	\N	Ticket closed	Executed when a ticket is closed	165
98	ticket	TICKET_SENTBYMAIL	\N	Ticket message sent by email	Executed when a message is sent from the ticket record	166
99	ticket	TICKET_DELETE	\N	Ticket deleted	Executed when a ticket is deleted	167
100	user	USER_SENTBYMAIL	\N	Email sent	Executed when an email is sent from user card	300
101	user	USER_CREATE	\N	User created	Executed when a user is created	301
102	user	USER_MODIFY	\N	User update	Executed when a user is updated	302
103	user	USER_DELETE	\N	User update	Executed when a user is deleted	303
104	user	USER_NEW_PASSWORD	\N	User update	Executed when a user is change password	304
105	user	USER_ENABLEDISABLE	\N	User update	Executed when a user is enable or disable	305
106	bom	BOM_VALIDATE	\N	BOM validated	Executed when a BOM is validated	650
107	bom	BOM_UNVALIDATE	\N	BOM unvalidated	Executed when a BOM is unvalidated	651
108	bom	BOM_CLOSE	\N	BOM disabled	Executed when a BOM is disabled	652
109	bom	BOM_REOPEN	\N	BOM reopen	Executed when a BOM is re-open	653
110	bom	BOM_DELETE	\N	BOM deleted	Executed when a BOM deleted	654
111	mrp	MRP_MO_VALIDATE	\N	MO validated	Executed when a MO is validated	660
112	mrp	MRP_MO_PRODUCED	\N	MO produced	Executed when a MO is produced	661
113	mrp	MRP_MO_DELETE	\N	MO deleted	Executed when a MO is deleted	662
114	mrp	MRP_MO_CANCEL	\N	MO canceled	Executed when a MO is canceled	663
115	contact	CONTACT_CREATE	\N	Contact address created	Executed when a contact is created	50
116	contact	CONTACT_MODIFY	\N	Contact address update	Executed when a contact is updated	51
117	contact	CONTACT_SENTBYMAIL	\N	Mails sent from third party card	Executed when you send email from contact address record	52
118	contact	CONTACT_DELETE	\N	Contact address deleted	Executed when a contact is deleted	53
119	recruitment	RECRUITMENTJOBPOSITION_CREATE	\N	Job created	Executed when a job is created	7500
120	recruitment	RECRUITMENTJOBPOSITION_MODIFY	\N	Job modified	Executed when a job is modified	7502
121	recruitment	RECRUITMENTJOBPOSITION_SENTBYMAIL	\N	Mails sent from job record	Executed when you send email from job record	7504
122	recruitment	RECRUITMENTJOBPOSITION_DELETE	\N	Job deleted	Executed when a job is deleted	7506
123	recruitment	RECRUITMENTCANDIDATURE_CREATE	\N	Candidature created	Executed when a candidature is created	7510
124	recruitment	RECRUITMENTCANDIDATURE_MODIFY	\N	Candidature modified	Executed when a candidature is modified	7512
125	recruitment	RECRUITMENTCANDIDATURE_SENTBYMAIL	\N	Mails sent from candidature record	Executed when you send email from candidature record	7514
126	recruitment	RECRUITMENTCANDIDATURE_DELETE	\N	Candidature deleted	Executed when a candidature is deleted	7516
127	project	TASK_CREATE	\N	Task created	Executed when a project task is created	150
128	project	TASK_MODIFY	\N	Task modified	Executed when a project task is modified	151
129	project	TASK_DELETE	\N	Task deleted	Executed when a project task is deleted	152
130	agenda	ACTION_CREATE	\N	Action added	Executed when an action is added to the agenda	700
131	holiday	HOLIDAY_CREATE	\N	Holiday created	Executed when a holiday is created	800
132	holiday	HOLIDAY_MODIFY	\N	Holiday modified	Executed when a holiday is modified	801
133	holiday	HOLIDAY_VALIDATE	\N	Holiday validated	Executed when a holiday is validated	802
134	holiday	HOLIDAY_APPROVE	\N	Holiday approved	Executed when a holiday is aprouved	803
135	holiday	HOLIDAY_CANCEL	\N	Holiday canceled	Executed when a holiday is canceled	802
136	holiday	HOLIDAY_DELETE	\N	Holiday deleted	Executed when a holiday is deleted	804
137	hrm	HRM_EVALUATION_CREATE	\N	HR Evaluation created	Executed when an evaluation is created	4000
138	hrm	HRM_EVALUATION_MODIFY	\N	HR Evaluation modified	Executed when an evaluation is modified	4001
139	hrm	HRM_EVALUATION_VALIDATE	\N	HR Evaluation validated	Executed when an evaluation is validated	4002
140	hrm	HRM_EVALUATION_UNVALIDATE	\N	HR Evaluation back to draft	Executed when an evaluation is back to draft	4003
141	hrm	HRM_EVALUATION_DELETE	\N	HR Evaluation deleted	Executed when an evaluation is dleted	4005
142	facturerec	BILLREC_CREATE	\N	Template invoices created	Executed when a Template invoices is created	900
143	facturerec	BILLREC_MODIFY	\N	Template invoices update	Executed when a Template invoices is updated	901
144	facturerec	BILLREC_DELETE	\N	Template invoices deleted	Executed when a Template invoices is deleted	902
145	partnership	PARTNERSHIP_CREATE	\N	Partnership created	Executed when a partnership is created	58000
146	partnership	PARTNERSHIP_MODIFY	\N	Partnership modified	Executed when a partnership is modified	58002
147	partnership	PARTNERSHIP_SENTBYMAIL	\N	Mails sent from partnership file	Executed when you send email from partnership file	58004
148	partnership	PARTNERSHIP_DELETE	\N	Partnership deleted	Executed when a partnership is deleted	58006
149	knowledgemanagement	KNOWLEDGERECORD_CREATE	\N	Knowledgerecord created	Executed when a knowledgerecord is created	57001
150	knowledgemanagement	KNOWLEDGERECORD_MODIFY	\N	Knowledgerecord modified	Executed when a knowledgerecord is modified	57002
151	knowledgemanagement	KNOWLEDGERECORD_VALIDATE	\N	Knowledgerecord Evaluation validated	Executed when an evaluation is validated	57004
152	knowledgemanagement	KNOWLEDGERECORD_REOPEN	\N	Knowledgerecord reopen	Executed when an evaluation is back to draft	57004
153	knowledgemanagement	KNOWLEDGERECORD_UNVALIDATE	\N	Knowledgerecord unvalidated	Executed when an evaluation is back to draft	57004
154	knowledgemanagement	KNOWLEDGERECORD_CANCEL	\N	Knowledgerecord cancel	Executed when an evaluation to cancel	57004
155	knowledgemanagement	KNOWLEDGERECORD_SENTBYMAIL	\N	Mails sent from knowledgerecord file	knowledgerecord when you send email from knowledgerecord file	57004
156	knowledgemanagement	KNOWLEDGERECORD_DELETE	\N	Knowledgerecord deleted	Executed when a knowledgerecord is deleted	57006
\.


--
-- Data for Name: llx_c_actioncomm; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_actioncomm (id, code, type, libelle, module, active, todo, color, picto, "position") FROM stdin;
1	AC_TEL	system	Phone call	\N	1	\N	\N	\N	2
2	AC_FAX	system	Send Fax	\N	0	\N	\N	\N	3
4	AC_EMAIL	system	Send Email	\N	0	\N	\N	\N	4
5	AC_RDV	system	Rendez-vous	\N	1	\N	\N	\N	1
6	AC_EMAIL_IN	system	Reception Email	\N	0	\N	\N	\N	4
11	AC_INT	system	Intervention on site	\N	1	\N	\N	\N	4
40	AC_OTH_AUTO	systemauto	Other (automatically inserted events)	\N	1	\N	\N	\N	20
50	AC_OTH	system	Other (manually inserted events)	\N	1	\N	\N	\N	5
60	AC_EO_ONLINECONF	module	Online/Virtual conference	conference@eventorganization	1	\N	\N	\N	60
61	AC_EO_INDOORCONF	module	Indoor conference	conference@eventorganization	1	\N	\N	\N	61
62	AC_EO_ONLINEBOOTH	module	Online/Virtual booth	booth@eventorganization	1	\N	\N	\N	62
63	AC_EO_INDOORBOOTH	module	Indoor booth	booth@eventorganization	1	\N	\N	\N	63
\.


--
-- Data for Name: llx_c_availability; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_availability (rowid, code, label, type_duration, qty, active, "position") FROM stdin;
1	AV_NOW	Immediate	\N	0	1	10
2	AV_1D	1 day	d	1	1	11
3	AV_2D	2 days	d	2	1	12
4	AV_3D	3 days	d	3	1	13
5	AV_4D	4 days	d	4	1	14
6	AV_5D	5 days	d	5	1	15
7	AV_1W	1 week	w	1	1	20
8	AV_2W	2 weeks	w	2	1	30
9	AV_3W	3 weeks	w	3	1	40
10	AV_4W	4 weeks	w	4	1	50
11	AV_5W	5 weeks	w	5	1	60
12	AV_6W	6 weeks	w	6	1	70
13	AV_8W	8 weeks	w	8	1	80
14	AV_10W	10 weeks	w	10	1	90
15	AV_12W	12 weeks	w	12	1	100
16	AV_14W	14 weeks	w	14	1	110
17	AV_16W	16 weeks	w	16	1	120
\.


--
-- Data for Name: llx_c_barcode_type; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_barcode_type (rowid, code, entity, libelle, coder, example) FROM stdin;
\.


--
-- Data for Name: llx_c_chargesociales; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_chargesociales (id, libelle, deductible, active, code, accountancy_code, fk_pays, module) FROM stdin;
1	Securite sociale (URSSAF / MSA)	1	1	TAXSECU	\N	1	\N
2	Securite sociale des indépendants (URSSAF)	1	1	TAXSSI	\N	1	\N
10	Taxe apprentissage	1	1	TAXAPP	\N	1	\N
11	Formation professionnelle continue	1	1	TAXFPC	\N	1	\N
12	Cotisation fonciere des entreprises (CFE)	1	1	TAXCFE	\N	1	\N
13	Cotisation sur la valeur ajoutee des entreprises (CVAE)	1	1	TAXCVAE	\N	1	\N
20	Taxe fonciere	1	1	TAXFON	\N	1	\N
25	Prelevement à la source (PAS)	0	1	TAXPAS	\N	1	\N
30	Prevoyance	1	1	TAXPREV	\N	1	\N
40	Mutuelle	1	1	TAXMUT	\N	1	\N
50	Retraite	1	1	TAXRET	\N	1	\N
60	Taxe sur vehicule societe (TVS)	0	1	TAXTVS	\N	1	\N
70	impôts sur les sociétés (IS)	0	1	TAXIS	\N	1	\N
201	ONSS	1	1	TAXBEONSS	\N	2	\N
210	Precompte professionnel	1	1	TAXBEPREPRO	\N	2	\N
220	Prime existence	1	1	TAXBEPRIEXI	\N	2	\N
230	Precompte immobilier	1	1	TAXBEPREIMMO	\N	2	\N
4101	Krankenversicherung	1	1	TAXATKV	\N	41	\N
4102	Unfallversicherung	1	1	TAXATUV	\N	41	\N
4103	Pensionsversicherung	1	1	TAXATPV	\N	41	\N
4104	Arbeitslosenversicherung	1	1	TAXATAV	\N	41	\N
4105	Insolvenzentgeltsicherungsfond	1	1	TAXATIESG	\N	41	\N
4106	Wohnbauförderung	1	1	TAXATWF	\N	41	\N
4107	Arbeiterkammerumlage	1	1	TAXATAK	\N	41	\N
4108	Mitarbeitervorsorgekasse	1	1	TAXATMVK	\N	41	\N
4109	Familienlastenausgleichsfond	1	1	TAXATFLAF	\N	41	\N
10201	Αναλυτική Περιοδική Δήλωση (ΑΠΔ)	1	1	ΑΠΔ	\N	102	\N
10202	Φόρος Μισθωτών Υπηρεσιών (ΦΜΥ)	1	1	ΦΜΥ	\N	102	\N
10203	Ασφαλιστικές εισφορές (ΕΦΚΑ)	1	1	ΕΦΚΑ	\N	102	\N
10204	Προκαταβολή Φόρου Εισοδήματος	0	1	ΕΦΟΡΙΑ	\N	102	\N
10205	Ενιαίος Φόρος Ιδιοκτησίας Ακινήτων (ΕΝ.Φ.Ι.Α) 	0	1	ΕΝΦΙΑ	\N	102	\N
10206	Ετήσιο τέλος διατήρησης Μερίδας στο Γ.Ε.ΜΗ.	1	1	ΓΕΜΗ	\N	102	\N
10207	Επαγγελματικό Επιμελητήριο	1	1	ΕΕ	\N	102	\N
10208	Εμπορικό και Βιομηχανικό Επιμελητηρίο	1	1	ΕΒΕ	\N	102	\N
10209	Τέλη Κυκλοφορίας	1	1	ΤΕΛΗ	\N	102	\N
10210	Ασφάλιση οχήματος	1	1	ΑΣΦΑΛΕΙΑ	\N	102	\N
10211	Ενοίκιο	1	1	ΕΝΟΙΚΙΟ	\N	102	\N
10212	Κοινόχρηστα	1	1	ΚΟΙΝΟ	\N	102	\N
10213	Ηλεκτροδότηση	1	1	ΡΕΥΜΑ	\N	102	\N
\.


--
-- Data for Name: llx_c_civility; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_civility (rowid, code, label, active, module) FROM stdin;
1	MME	Madame	1	\N
2	MR	Monsieur	1	\N
3	MLE	Mademoiselle	1	\N
4	MTRE	Maître	1	\N
5	DR	Docteur	1	\N
\.


--
-- Data for Name: llx_c_country; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_country (rowid, code, code_iso, numeric_code, label, eec, sepa, active, favorite) FROM stdin;
0		\N	\N	-	0	0	1	1
247	XK	XKX	\N	Kosovo	0	0	1	0
30	AF	AFG	004	Afghanistan	0	0	1	0
31	AX	ALA	248	Åland Islands	0	0	1	0
35	AO	AGO	024	Angola	0	0	1	0
36	AI	AIA	660	Anguilla	0	0	1	0
37	AQ	ATA	010	Antarctica	0	0	1	0
38	AG	ATG	028	Antigua and Barbuda	0	0	1	0
26	SA	SAU	682	Saudi Arabia	0	0	1	0
13	DZ	DZA	012	Algeria	0	0	1	0
23	AR	ARG	032	Argentina	0	0	1	0
39	AM	ARM	051	Armenia	0	0	1	0
40	AW	ABW	533	Aruba	0	0	1	0
28	AU	AUS	036	Australia	0	0	1	0
42	AZ	AZE	031	Azerbaijan	0	0	1	0
43	BS	BHS	044	Bahamas	0	0	1	0
45	BD	BGD	050	Bangladesh	0	0	1	0
46	BB	BRB	052	Barbados	0	0	1	0
44	BH	BHR	048	Bahrain	0	0	1	0
48	BZ	BLZ	084	Belize	0	0	1	0
49	BJ	BEN	204	Benin	0	0	1	0
50	BM	BMU	060	Bermuda	0	0	1	0
47	BY	BLR	112	Belarus	0	0	1	0
52	BO	BOL	068	Bolivia	0	0	1	0
53	BA	BIH	070	Bosnia and Herzegovina	0	0	1	0
54	BW	BWA	072	Botswana	0	0	1	0
56	BR	BRA	076	Brazil	0	0	1	0
58	BN	BRN	096	Brunei	0	0	1	0
60	BF	BFA	854	Burkina Faso	0	0	1	0
61	BI	BDI	108	Burundi	0	0	1	0
51	BT	BTN	064	Bhutan	0	0	1	0
63	CV	CPV	132	Cape Verde	0	0	1	0
62	KH	KHM	116	Cambodia	0	0	1	0
24	CM	CMR	120	Cameroun	0	0	1	0
14	CA	CAN	124	Canada	0	0	1	0
186	QA	QAT	634	Qatar	0	0	1	0
66	TD	TCD	148	Chad	0	0	1	0
67	CL	CHL	152	Chile	0	0	1	0
9	CN	CHN	156	China	0	0	1	0
70	CO	COL	170	Colombia	0	0	1	0
71	KM	COM	174	Comoros	0	0	1	0
128	KP	PRK	408	North Corea	0	0	1	0
129	KR	KOR	410	South Corea	0	0	1	0
21	CI	CIV	384	Ivory Cost	0	0	1	0
75	CR	CRI	188	Costa Rica	0	0	1	0
77	CU	CUB	192	Cuba	0	0	1	0
300	CW	CUW	531	Curaçao	0	0	1	0
82	DM	DMA	212	Dominica	0	0	1	0
84	EC	ECU	218	Republic of Ecuador	0	0	1	0
85	EG	EGY	818	Egypt	0	0	1	0
86	SV	SLV	222	El Salvador	0	0	1	0
227	AE	ARE	784	United Arab Emirates	0	0	1	0
88	ER	ERI	232	Eritrea	0	0	1	0
11	US	USA	840	United States	0	0	1	0
90	ET	ETH	231	Ethiopia	0	0	1	0
182	PH	PHL	608	Philippines	0	0	1	0
93	FJ	FJI	242	Fidji Islands	0	0	1	0
16	GA	GAB	266	Gabon	0	0	1	0
98	GM	GMB	270	Gambia	0	0	1	0
99	GE	GEO	268	Georgia	0	0	1	0
100	GH	GHA	288	Ghana	0	0	1	0
101	GI	GIB	292	Gibraltar	0	0	1	0
104	GD	GRD	308	Grenade	0	0	1	0
103	GL	GRL	304	Greenland	0	0	1	0
106	GU	GUM	316	Guam	0	0	1	0
107	GT	GTM	320	Guatemala	0	0	1	0
95	GF	GUF	254	French Guiana	0	0	1	0
108	GN	GIN	324	Guinea	0	0	1	0
109	GW	GNB	624	Guinea-Bissao	0	0	1	0
87	GQ	GNQ	226	Equatorial Guinea	0	0	1	0
111	HT	HTI	332	Haiti	0	0	1	0
114	HN	HND	340	Honduras	0	0	1	0
115	HK	HKG	344	Hong Kong	0	0	1	0
117	IN	IND	356	India	0	0	1	0
118	ID	IDN	360	Indonesia	0	0	1	0
120	IQ	IRQ	368	Iraq	0	0	1	0
119	IR	IRN	364	Iran	0	0	1	0
55	BV	BVT	074	Bouvet Island	0	0	0	0
68	CX	CXR	162	Christmas Island	0	0	1	0
64	KY	CYM	136	Cayman Islands	0	0	1	0
69	CC	CCK	166	Cocos Islands (Keeling)	0	0	1	0
74	CK	COK	184	Cook Islands‎‎	0	0	1	0
92	FO	FRO	234	Faroe Islands	0	0	1	0
206	GS	SGS	239	South Georgia and the South Sandwich Islands 	0	0	1	0
112	HM	HMD	334	Heard Island and McDonald Islands	0	0	1	0
91	FK	FLK	238	Falkland Islands	0	0	1	0
172	MP	MNP	580	Northern Mariana Islands	0	0	1	0
149	MH	MHL	584	Marshall Islands	0	0	1	0
183	PN	PCN	612	Pitcairn Islands	0	0	1	0
203	SB	SLB	090	Solomon Islands	0	0	1	0
223	TC	TCA	796	Turks and Caicos Islands	0	0	1	0
228	UM	UMI	581	United States Minor Outlying Islands	0	0	1	0
234	VG	VGB	092	British Virgin Islands	0	0	1	0
235	VI	VIR	850	Virgin Islands of the United States	0	0	1	0
121	IL	ISR	376	Israel	0	0	1	0
122	JM	JAM	388	Jamaica	0	0	1	0
123	JP	JPN	392	Japan	0	0	1	0
124	JO	JOR	400	Jordan	0	0	1	0
125	KZ	KAZ	398	Kazakhstan	0	0	1	0
126	KE	KEN	404	Kenya	0	0	1	0
131	KG	KGZ	417	Kirghizistan	0	0	1	0
127	KI	KIR	296	Kiribati	0	0	1	0
130	KW	KWT	414	Koweït	0	0	1	0
132	LA	LAO	418	Laos	0	0	1	0
135	LS	LSO	426	Lesotho	0	0	1	0
134	LB	LBN	422	Lebanon	0	0	1	0
136	LR	LBR	430	Liberia	0	0	1	0
137	LY	LBY	434	Libya	0	0	1	0
141	MO	MAC	446	Macao	0	0	1	0
143	MG	MDG	450	Madagascar	0	0	1	0
145	MY	MYS	458	Malaysia	0	0	1	0
144	MW	MWI	454	Malawi	0	0	1	0
146	MV	MDV	462	Maldives	0	0	1	0
147	ML	MLI	466	Mali	0	0	1	0
12	MA	MAR	504	Morocco	0	0	1	0
152	MU	MUS	480	Mauritius	0	0	1	0
151	MR	MRT	478	Mauritania	0	0	1	0
153	YT	MYT	175	Mayotte	0	0	1	0
154	MX	MEX	484	Mexico	0	0	1	0
155	FM	FSM	583	Micronesia	0	0	1	0
157	MN	MNG	496	Mongolia	0	0	1	0
158	MS	MSR	500	Montserrat	0	0	1	0
159	MZ	MOZ	508	Mozambique	0	0	1	0
160	MM	MMR	104	Myanmar	0	0	1	0
161	NA	NAM	516	Namibia	0	0	1	0
162	NR	NRU	520	Nauru	0	0	1	0
163	NP	NPL	524	Népal	0	0	1	0
167	NI	NIC	558	Nicaragua	0	0	1	0
168	NE	NER	562	Niger	0	0	1	0
169	NG	NGA	566	Nigeria	0	0	1	0
170	NU	NIU	570	Niue	0	0	1	0
171	NF	NFK	574	Norfolk Island	0	0	1	0
165	NC	NCL	540	New Caledonia	0	0	1	0
166	NZ	NZL	554	New Zealand	0	0	1	0
174	OM	OMN	512	Oman	0	0	1	0
175	PK	PAK	586	Pakistan	0	0	1	0
176	PW	PLW	585	Palau	0	0	1	0
177	PS	PSE	275	Palestine	0	0	1	0
178	PA	PAN	591	Panama	0	0	1	0
179	PG	PNG	598	Papua New Guinea	0	0	1	0
180	PY	PRY	600	Paraguay	0	0	1	0
181	PE	PER	604	Peru	0	0	1	0
96	PF	PYF	258	French Polynesia	0	0	1	0
185	PR	PRI	630	Puerto Rico	0	0	1	0
237	EH	ESH	732	Western Sahara	0	0	1	0
65	CF	CAF	140	Central African Republic (CAR/RCA)	0	0	1	0
72	CG	COG	178	Congo	0	0	1	0
73	CD	COD	180	DR Congo (RDC)	0	0	1	0
83	DO	DOM	214	Dominican Republic	0	0	1	0
189	RW	RWA	646	Rwanda	0	0	1	0
19	RU	RUS	643	Russia	0	0	1	0
195	WS	WSM	882	Samoa	0	0	1	0
33	AS	ASM	016	American Samoa	0	0	1	0
245	BL	BLM	652	Saint-Barthélemy	0	0	1	0
191	KN	KNA	659	Saint Kitts and Nevis	0	0	1	0
246	MF	MAF	663	Saint-Martin	0	0	1	0
194	VC	VCT	670	Saint Vincent and the Grenadines	0	0	1	0
190	SH	SHN	654	Saint Helena	0	0	1	0
192	LC	LCA	662	Saint Lucia	0	0	1	0
197	ST	STP	678	Saint Thomas and Prince	0	0	1	0
22	SN	SEN	686	Senegal	0	0	1	0
199	SC	SYC	690	Seychelles	0	0	1	0
200	SL	SLE	694	Sierra Leone	0	0	1	0
29	SG	SGP	702	Singapore	0	0	1	0
301	SX	SXM	534	Sint Maarten	0	0	1	0
212	SY	SYR	760	Syria	0	0	1	0
204	SO	SOM	706	Somalia	0	0	1	0
207	LK	LKA	144	Sri Lanka	0	0	1	0
211	SZ	SWZ	748	Swaziland / Eswatini	0	0	1	0
205	ZA	ZAF	710	South Africa	0	0	1	0
208	SD	SDN	729	Sudan	0	0	1	0
209	SR	SUR	740	Suriname	0	0	1	0
210	SJ	SJM	744	Svalbard and Jan Mayen	0	0	1	0
216	TH	THA	764	Thailand	0	0	1	0
213	TW	TWN	158	Taiwan	0	0	1	0
215	TZ	TZA	834	Tanzania	0	0	1	0
214	TJ	TJK	762	Tajikistan	0	0	1	0
57	IO	IOT	086	British Indian Ocean Territory	0	0	1	0
97	TF	ATF	260	French Southern and Antarctic Lands	0	0	1	0
217	TL	TLS	626	Timor-Leste	0	0	1	0
15	TG	TGO	768	Togo	0	0	1	0
218	TK	TKL	772	Tokelau	0	0	1	0
219	TO	TON	776	Tonga	0	0	1	0
220	TT	TTO	780	Trinidad and Tobago	0	0	1	0
10	TN	TUN	788	Tunisia	0	0	1	0
222	TM	TKM	795	Turkmenistan	0	0	1	0
221	TR	TUR	792	Turkey	0	0	1	0
224	TV	TUV	798	Tuvalu	0	0	1	0
226	UA	UKR	804	Ukraine	0	0	1	0
225	UG	UGA	800	Uganda	0	0	1	0
229	UY	URY	858	Uruguay	0	0	1	0
230	UZ	UZB	860	Uzbekistan	0	0	1	0
231	VU	VUT	548	Vanuatu	0	0	1	0
232	VE	VEN	862	Venezuela	0	0	1	0
233	VN	VNM	704	Vietnam	0	0	1	0
236	WF	WLF	876	Wallis and Futuna	0	0	1	0
238	YE	YEM	887	Yemen	0	0	1	0
81	DJ	DJI	262	Djibouti	0	0	1	0
239	ZM	ZMB	894	Zambia	0	0	1	0
240	ZW	ZWE	716	Zimbabwe	0	0	1	0
32	AL	ALB	008	Albania	0	1	1	0
34	AD	AND	020	Andorra	0	1	1	0
241	GG	GGY	831	Guernsey	0	1	1	0
242	IM	IMN	833	Isle of Man	0	1	1	0
116	IS	ISL	352	Iceland	0	1	1	0
243	JE	JEY	832	Jersey	0	1	1	0
138	LI	LIE	438	Liechtenstein	0	1	1	0
142	MK	MKD	807	North Macedonia	0	1	1	0
156	MD	MDA	498	Moldova	0	1	1	0
244	ME	MNE	499	Montenegro	0	1	1	0
173	NO	NOR	578	Norway	0	1	1	0
7	GB	GBR	826	United Kingdom	0	1	1	0
196	SM	SMR	674	San Marino 	0	1	1	0
193	PM	SPM	666	Saint Pierre and Miquelon	0	1	1	0
198	RS	SRB	688	Serbia	0	1	1	0
6	CH	CHE	756	Switzerland	0	1	1	0
113	VA	VAT	336	Vatican City (Saint-Siège)	0	1	1	0
5	DE	DEU	276	Germany	1	1	1	0
41	AT	AUT	040	Austria	1	1	1	0
2	BE	BEL	056	Belgium	1	1	1	0
59	BG	BGR	100	Bulgaria	1	1	1	0
78	CY	CYP	196	Cyprus	1	1	1	0
76	HR	HRV	191	Croatia	1	1	1	0
80	DK	DNK	208	Denmark	1	1	1	0
201	SK	SVK	703	Slovakia	1	1	1	0
202	SI	SVN	705	Slovenia	1	1	1	0
4	ES	ESP	724	Spain	1	1	1	0
89	EE	EST	233	Estonia	1	1	1	0
94	FI	FIN	246	Finland	1	1	1	0
1	FR	FRA	250	France	1	1	1	0
102	GR	GRC	300	Greece	1	1	1	0
18	HU	HUN	348	Hungary	1	1	1	0
8	IE	IRL	372	Ireland	1	1	1	0
3	IT	ITA	380	Italy	1	1	1	0
133	LV	LVA	428	Latvia	1	1	1	0
139	LT	LTU	440	Lithuania	1	1	1	0
140	LU	LUX	442	Luxembourg	1	1	1	0
148	MT	MLT	470	Malta	1	1	1	0
27	MC	MCO	492	Monaco	1	1	1	0
17	NL	NLD	528	Netherlands	1	1	1	0
184	PL	POL	616	Poland	1	1	1	0
25	PT	PRT	620	Portugal	1	1	1	0
79	CZ	CZE	203	Czech Republic	1	1	1	0
188	RO	ROU	642	Romania	1	1	1	0
20	SE	SWE	752	Sweden	1	1	1	0
\.


--
-- Data for Name: llx_c_currencies; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_currencies (code_iso, label, unicode, active) FROM stdin;
ALL	Albania Lek	[76,101,107]	1
DZD	Algeria Dinar	\N	1
AOA	Angola Kwanza	\N	1
AFN	Afghanistan Afghani	[1547]	1
ARS	Argentino Peso	[36]	1
AWG	Aruba Guilder	[402]	1
AUD	Australia Dollar	[36]	1
AZN	Azerbaijan New Manat	[1084,1072,1085]	1
BHD	Bahrain	\N	1
BSD	Bahamas Dollar	[36]	1
BBD	Barbados Dollar	[36]	1
BDT	Bangladeshi Taka	[2547]	1
BYR	Belarus Ruble	[112,46]	1
BZD	Belize Dollar	[66,90,36]	1
BMD	Bermuda Dollar	[36]	1
BOB	Bolivia Boliviano	[66,115]	1
BAM	Bosnia and Herzegovina Convertible Marka	[75,77]	1
BWP	Botswana Pula	[80]	1
BGN	Bulgaria Lev	[1083,1074]	1
BRL	Brazil Real	[82,36]	1
BND	Brunei Darussalam Dollar	[36]	1
BIF	Burundi Franc	\N	1
KHR	Cambodia Riel	[6107]	1
CAD	Canada Dollar	[36]	1
CVE	Cap Verde Escudo	[4217]	1
KYD	Cayman Islands Dollar	[36]	1
CLP	Chile Peso	[36]	1
CNY	China Yuan Renminbi	[165]	1
COP	Colombia Peso	[36]	1
CRC	Costa Rica Colon	[8353]	1
HRK	Croatia Kuna	[107,110]	1
CUP	Cuba Peso	[8369]	1
CZK	Czech Republic Koruna	[75,269]	1
DKK	Denmark Krone	[107,114]	1
DOP	Dominican Republic Peso	[82,68,36]	1
XCD	East Caribbean Dollar	[36]	1
ECS	Ecuador Sucre	[83,47,46]	1
EGP	Egypt Pound	[163]	1
SVC	El Salvador Colon	[36]	1
EEK	Estonia Kroon	[107,114]	1
ETB	Ethiopian Birr	\N	1
EUR	Euro Member Countries	[8364]	1
FKP	Falkland Islands (Malvinas) Pound	[163]	1
FJD	Fiji Dollar	[36]	1
GHC	Ghana Cedis	[162]	1
GNF	Guinea Franc	[70,71]	1
GIP	Gibraltar Pound	[163]	1
GTQ	Guatemala Quetzal	[81]	1
GGP	Guernsey Pound	[163]	1
GYD	Guyana Dollar	[36]	1
HNL	Honduras Lempira	[76]	1
HKD	Hong Kong Dollar	[36]	1
HUF	Hungary Forint	[70,116]	1
ISK	Iceland Krona	[107,114]	1
INR	India Rupee	[8377]	1
IDR	Indonesia Rupiah	[82,112]	1
IRR	Iran Rial	[65020]	1
IMP	Isle of Man Pound	[163]	1
ILS	Israel Shekel	[8362]	1
JMD	Jamaica Dollar	[74,36]	1
JPY	Japan Yen	[165]	1
JEP	Jersey Pound	[163]	1
KES	Kenya Shilling	\N	1
KZT	Kazakhstan Tenge	[1083,1074]	1
KPW	Korea (North) Won	[8361]	1
KRW	Korea (South) Won	[8361]	1
KGS	Kyrgyzstan Som	[1083,1074]	1
LAK	Laos Kip	[8365]	1
LVL	Latvia Lat	[76,115]	1
LBP	Lebanon Pound	[163]	1
LRD	Liberia Dollar	[36]	1
LTL	Lithuania Litas	[76,116]	1
MGA	Ariary	\N	1
MKD	Macedonia Denar	[1076,1077,1085]	1
MYR	Malaysia Ringgit	[82,77]	1
MRO	Mauritania Ouguiya	\N	0
MRU	Mauritania Ouguiya	[77,85]	1
MUR	Mauritius Rupee	[8360]	1
MXN	Mexico Peso	[36]	1
MDL	Moldova Leu	\N	1
MMK	Myanmar Kyat	[75]	1
MNT	Mongolia Tughrik	[8366]	1
MAD	Morocco Dirham	\N	1
MZN	Mozambique Metical	[77,84]	1
NAD	Namibia Dollar	[36]	1
NPR	Nepal Rupee	[8360]	1
ANG	Netherlands Antilles Guilder	[402]	1
NZD	New Zealand Dollar	[36]	1
NIO	Nicaragua Cordoba	[67,36]	1
NGN	Nigeria Naira	[8358]	1
NOK	Norway Krone	[107,114]	1
OMR	Oman Rial	[65020]	1
PKR	Pakistan Rupee	[8360]	1
PAB	Panama Balboa	[66,47,46]	1
PYG	Paraguay Guarani	[71,115]	1
PEN	Perú Sol	[83,47]	1
PHP	Philippines Peso	[8369]	1
PLN	Poland Zloty	[122,322]	1
QAR	Qatar Riyal	[65020]	1
RON	Romania New Leu	[108,101,105]	1
RUB	Russia Ruble	[1088,1091,1073]	1
SHP	Saint Helena Pound	[163]	1
SAR	Saudi Arabia Riyal	[65020]	1
RSD	Serbia Dinar	[1044,1080,1085,46]	1
SCR	Seychelles Rupee	[8360]	1
SGD	Singapore Dollar	[36]	1
SBD	Solomon Islands Dollar	[36]	1
SOS	Somalia Shilling	[83]	1
ZAR	South Africa Rand	[82]	1
LKR	Sri Lanka Rupee	[8360]	1
SEK	Sweden Krona	[107,114]	1
CHF	Switzerland Franc	[67,72,70]	1
SRD	Suriname Dollar	[36]	1
SYP	Syria Pound	[163]	1
TWD	Taiwan New Dollar	[78,84,36]	1
THB	Thailand Baht	[3647]	1
TTD	Trinidad and Tobago Dollar	[84,84,36]	1
TND	Tunisia Dinar	\N	1
TRY	Turkey Lira	[8378]	1
TVD	Tuvalu Dollar	[36]	1
UAH	Ukraine Hryvna	[8372]	1
AED	United Arab Emirates Dirham	\N	1
GBP	United Kingdom Pound	[163]	1
USD	United States Dollar	[36]	1
UYU	Uruguay Peso	[36,85]	1
UZS	Uzbekistan Som	[1083,1074]	1
VEF	Venezuela Bolivar Fuerte	[66,115]	1
VND	Viet Nam Dong	[8363]	1
XAF	Communaute Financiere Africaine (BEAC) CFA Franc	\N	1
XOF	Communaute Financiere Africaine (BCEAO) Franc	\N	1
XPF	Franc CFP	[70]	1
YER	Yemen Rial	[65020]	1
ZWD	Zimbabwe Dollar	[90,36]	1
ATS	Shiliing autrichiens	\N	0
BEF	Francs belges	\N	0
DEM	Deutsche Mark	\N	0
ESP	Pesete	\N	0
FIM	Mark finlandais	\N	0
FRF	Francs francais	\N	0
GRD	Drachme (grece)	\N	0
IEP	Livres irlandaises	\N	0
ITL	Lires	\N	0
LUF	Francs luxembourgeois	\N	0
NLG	Florins	\N	0
PTE	Escudos	\N	0
SKK	Couronnes slovaques	\N	0
SUR	Rouble	\N	0
XEU	Ecus	\N	0
TRL	Turkey Lira	[84,76]	0
ARP	Pesos argentins	\N	0
MXP	Pesos Mexicans	\N	0
\.


--
-- Data for Name: llx_c_departements; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_departements (rowid, code_departement, fk_region, cheflieu, tncc, ncc, nom, active) FROM stdin;
1	0	0	0	0	-	-	1
2	01	1301		0		Adrar	1
3	02	1301		0		Chlef	1
4	03	1301		0		Laghouat	1
5	04	1301		0		Oum El Bouaghi	1
6	05	1301		0		Batna	1
7	06	1301		0		Béjaïa	1
8	07	1301		0		Biskra	1
9	08	1301		0		Béchar	1
10	09	1301		0		Blida	1
11	10	1301		0		Bouira	1
12	11	1301		0		Tamanrasset	1
13	12	1301		0		Tébessa	1
14	13	1301		0		Tlemcen	1
15	14	1301		0		Tiaret	1
16	15	1301		0		Tizi Ouzou	1
17	16	1301		0		Alger	1
18	17	1301		0		Djelfa	1
19	18	1301		0		Jijel	1
20	19	1301		0		Sétif	1
21	20	1301		0		Saïda	1
22	21	1301		0		Skikda	1
23	22	1301		0		Sidi Bel Abbès	1
24	23	1301		0		Annaba	1
25	24	1301		0		Guelma	1
26	25	1301		0		Constantine	1
27	26	1301		0		Médéa	1
28	27	1301		0		Mostaganem	1
29	28	1301		0		M'Sila	1
30	29	1301		0		Mascara	1
31	30	1301		0		Ouargla	1
32	31	1301		0		Oran	1
33	32	1301		0		El Bayadh	1
34	33	1301		0		Illizi	1
35	34	1301		0		Bordj Bou Arreridj	1
36	35	1301		0		Boumerdès	1
37	36	1301		0		El Tarf	1
38	37	1301		0		Tindouf	1
39	38	1301		0		Tissemsilt	1
40	39	1301		0		El Oued	1
41	40	1301		0		Khenchela	1
42	41	1301		0		Souk Ahras	1
43	42	1301		0		Tipaza	1
44	43	1301		0		Mila	1
45	44	1301		0		Aïn Defla	1
46	45	1301		0		Naâma	1
47	46	1301		0		Aïn Témouchent	1
48	47	1301		0		Ghardaïa	1
49	48	1301		0		Relizane	1
50	49	1301		0		Timimoun	1
51	50	1301		0		Bordj Badji Mokhtar	1
52	51	1301		0		Ouled Djellal	1
53	52	1301		0		Béni Abbès	1
54	53	1301		0		In Salah	1
55	54	1301		0		In Guezzam	1
56	55	1301		0		Touggourt	1
57	56	1301		0		Djanet	1
58	57	1301		0		El M'Ghair	1
59	58	1301		0		El Ménéa	1
60	AD-002	34000	AD100	\N	\N	Canillo	1
61	AD-003	34000	AD200	\N	\N	Encamp	1
62	AD-004	34000	AD400	\N	\N	La Massana	1
63	AD-005	34000	AD300	\N	\N	Ordino	1
64	AD-006	34000	AD600	\N	\N	Sant Julià de Lòria	1
65	AD-007	34000	AD500	\N	\N	Andorra la Vella	1
66	AD-008	34000	AD700	\N	\N	Escaldes-Engordany	1
67	AO-ABO	35001	\N	\N	BENGO	Bengo	1
68	AO-BGU	35001	\N	\N	BENGUELA	Benguela	1
69	AO-BIE	35001	\N	\N	BIÉ	Bié	1
70	AO-CAB	35001	\N	\N	CABINDA	Cabinda	1
71	AO-CCU	35001	\N	\N	KUANDO KUBANGO	Kuando Kubango	1
72	AO-CNO	35001	\N	\N	KWANZA NORTE	Kwanza Norte	1
73	AO-CUS	35001	\N	\N	KWANZA SUL	Kwanza Sul	1
74	AO-CNN	35001	\N	\N	CUNENE	Cunene	1
75	AO-HUA	35001	\N	\N	HUAMBO	Huambo	1
76	AO-HUI	35001	\N	\N	HUÍLA	Huila	1
77	AO-LUA	35001	\N	\N	LUANDA	Luanda	1
78	AO-LNO	35001	\N	\N	LUNDA-NORTE	Lunda-Norte	1
79	AO-LSU	35001	\N	\N	LUNDA-SUL	Lunda-Sul	1
80	AO-MAL	35001	\N	\N	MALANGE	Malange	1
81	AO-MOX	35001	\N	\N	MOXICO	Moxico	1
82	AO-NAM	35001	\N	\N	NAMÍBE	Namíbe	1
83	AO-UIG	35001	\N	\N	UÍGE	Uíge	1
84	AO-ZAI	35001	\N	\N	ZAÍRE	Zaíre	1
85	2301	2301		0	CATAMARCA	Catamarca	1
86	2302	2301		0	JUJUY	Jujuy	1
87	2303	2301		0	TUCAMAN	Tucamán	1
88	2304	2301		0	SANTIAGO DEL ESTERO	Santiago del Estero	1
89	2305	2301		0	SALTA	Salta	1
90	2306	2302		0	CHACO	Chaco	1
91	2307	2302		0	CORRIENTES	Corrientes	1
92	2308	2302		0	ENTRE RIOS	Entre Ríos	1
93	2309	2302		0	FORMOSA	Formosa	1
94	2310	2302		0	SANTA FE	Santa Fe	1
95	2311	2303		0	LA RIOJA	La Rioja	1
96	2312	2303		0	MENDOZA	Mendoza	1
97	2313	2303		0	SAN JUAN	San Juan	1
98	2314	2303		0	SAN LUIS	San Luis	1
99	2315	2304		0	CORDOBA	Córdoba	1
100	2316	2304		0	BUENOS AIRES	Buenos Aires	1
101	2317	2304		0	CABA	Caba	1
102	2318	2305		0	LA PAMPA	La Pampa	1
103	2319	2305		0	NEUQUEN	Neuquén	1
104	2320	2305		0	RIO NEGRO	Río Negro	1
105	2321	2305		0	CHUBUT	Chubut	1
106	2322	2305		0	SANTA CRUZ	Santa Cruz	1
107	2323	2305		0	TIERRA DEL FUEGO	Tierra del Fuego	1
108	2324	2305		0	ISLAS MALVINAS	Islas Malvinas	1
109	2325	2305		0	ANTARTIDA	Antártida	1
110	2326	2305		0	MISIONES	Misiones	1
111	NSW	2801		1		New South Wales	1
112	VIC	2801		1		Victoria	1
113	QLD	2801		1		Queensland	1
114	SA	2801		1		South Australia	1
115	ACT	2801		1		Australia Capital Territory	1
116	TAS	2801		1		Tasmania	1
117	WA	2801		1		Western Australia	1
118	NT	2801		1		Northern Territory	1
119	B	4101	\N	\N	BURGENLAND	Burgenland	1
120	K	4101	\N	\N	KAERNTEN	Kärnten	1
121	N	4101	\N	\N	NIEDEROESTERREICH	Niederösterreich	1
122	O	4101	\N	\N	OBEROESTERREICH	Oberösterreich	1
123	S	4101	\N	\N	SALZBURG	Salzburg	1
124	ST	4101	\N	\N	STEIERMARK	Steiermark	1
125	T	4101	\N	\N	TIROL	Tirol	1
126	V	4101	\N	\N	VORARLBERG	Vorarlberg	1
127	W	4101	\N	\N	WIEN	Wien	1
128	CC	4601	Oistins	0	CC	Christ Church	1
129	SA	4601	Greenland	0	SA	Saint Andrew	1
130	SG	4601	Bulkeley	0	SG	Saint George	1
131	JA	4601	Holetown	0	JA	Saint James	1
132	SJ	4601	Four Roads	0	SJ	Saint John	1
133	SB	4601	Bathsheba	0	SB	Saint Joseph	1
134	SL	4601	Crab Hill	0	SL	Saint Lucy	1
135	SM	4601	Bridgetown	0	SM	Saint Michael	1
136	SP	4601	Speightstown	0	SP	Saint Peter	1
137	SC	4601	Crane	0	SC	Saint Philip	1
138	ST	4601	Hillaby	0	ST	Saint Thomas	1
139	01	201		1	ANVERS	Anvers	1
140	02	203		3	BRUXELLES-CAPITALE	Bruxelles-Capitale	1
141	03	202		2	BRABANT-WALLON	Brabant-Wallon	1
142	04	201		1	BRABANT-FLAMAND	Brabant-Flamand	1
143	05	201		1	FLANDRE-OCCIDENTALE	Flandre-Occidentale	1
144	06	201		1	FLANDRE-ORIENTALE	Flandre-Orientale	1
145	07	202		2	HAINAUT	Hainaut	1
146	08	202		2	LIEGE	Liège	1
147	09	202		1	LIMBOURG	Limbourg	1
148	10	202		2	LUXEMBOURG	Luxembourg	1
149	11	202		2	NAMUR	Namur	1
150	AC	5601	ACRE	0	AC	Acre	1
151	AL	5601	ALAGOAS	0	AL	Alagoas	1
152	AP	5601	AMAPA	0	AP	Amapá	1
153	AM	5601	AMAZONAS	0	AM	Amazonas	1
154	BA	5601	BAHIA	0	BA	Bahia	1
155	CE	5601	CEARA	0	CE	Ceará	1
156	ES	5601	ESPIRITO SANTO	0	ES	Espirito Santo	1
157	GO	5601	GOIAS	0	GO	Goiás	1
158	MA	5601	MARANHAO	0	MA	Maranhão	1
159	MT	5601	MATO GROSSO	0	MT	Mato Grosso	1
160	MS	5601	MATO GROSSO DO SUL	0	MS	Mato Grosso do Sul	1
161	MG	5601	MINAS GERAIS	0	MG	Minas Gerais	1
162	PA	5601	PARA	0	PA	Pará	1
163	PB	5601	PARAIBA	0	PB	Paraiba	1
164	PR	5601	PARANA	0	PR	Paraná	1
165	PE	5601	PERNAMBUCO	0	PE	Pernambuco	1
166	PI	5601	PIAUI	0	PI	Piauí	1
167	RJ	5601	RIO DE JANEIRO	0	RJ	Rio de Janeiro	1
168	RN	5601	RIO GRANDE DO NORTE	0	RN	Rio Grande do Norte	1
169	RS	5601	RIO GRANDE DO SUL	0	RS	Rio Grande do Sul	1
170	RO	5601	RONDONIA	0	RO	Rondônia	1
171	RR	5601	RORAIMA	0	RR	Roraima	1
172	SC	5601	SANTA CATARINA	0	SC	Santa Catarina	1
173	SE	5601	SERGIPE	0	SE	Sergipe	1
174	SP	5601	SAO PAULO	0	SP	Sao Paulo	1
175	TO	5601	TOCANTINS	0	TO	Tocantins	1
176	DF	5601	DISTRITO FEDERAL	0	DF	Distrito Federal	1
177	ON	1401		1		Ontario	1
178	QC	1401		1		Quebec	1
179	NS	1401		1		Nova Scotia	1
180	NB	1401		1		New Brunswick	1
181	MB	1401		1		Manitoba	1
182	BC	1401		1		British Columbia	1
183	PE	1401		1		Prince Edward Island	1
184	SK	1401		1		Saskatchewan	1
185	AB	1401		1		Alberta	1
186	NL	1401		1		Newfoundland and Labrador	1
187	YT	1401		1		Yukon	1
188	NT	1401		1		Northwest Territories	1
189	NU	1401		1		Nunavut	1
190	011	6701		0	011	Iquique	1
191	014	6701		0	014	Tamarugal	1
192	021	6702		0	021	Antofagasa	1
193	022	6702		0	022	El Loa	1
194	023	6702		0	023	Tocopilla	1
195	031	6703		0	031	Copiapó	1
196	032	6703		0	032	Chañaral	1
197	033	6703		0	033	Huasco	1
198	041	6704		0	041	Elqui	1
199	042	6704		0	042	Choapa	1
200	043	6704		0	043	Limarí	1
201	051	6705		0	051	Valparaíso	1
202	052	6705		0	052	Isla de Pascua	1
203	053	6705		0	053	Los Andes	1
204	054	6705		0	054	Petorca	1
205	055	6705		0	055	Quillota	1
206	056	6705		0	056	San Antonio	1
207	057	6705		0	057	San Felipe de Aconcagua	1
208	058	6705		0	058	Marga Marga	1
209	061	6706		0	061	Cachapoal	1
210	062	6706		0	062	Cardenal Caro	1
211	063	6706		0	063	Colchagua	1
212	071	6707		0	071	Talca	1
213	072	6707		0	072	Cauquenes	1
214	073	6707		0	073	Curicó	1
215	074	6707		0	074	Linares	1
216	081	6708		0	081	Concepción	1
217	082	6708		0	082	Arauco	1
218	083	6708		0	083	Biobío	1
219	084	6708		0	084	Ñuble	1
220	091	6709		0	091	Cautín	1
221	092	6709		0	092	Malleco	1
222	101	6710		0	101	Llanquihue	1
223	102	6710		0	102	Chiloé	1
224	103	6710		0	103	Osorno	1
225	104	6710		0	104	Palena	1
226	111	6711		0	111	Coihaique	1
227	112	6711		0	112	Aisén	1
228	113	6711		0	113	Capitán Prat	1
229	114	6711		0	114	General Carrera	1
230	121	6712		0	121	Magallanes	1
231	122	6712		0	122	Antártica Chilena	1
232	123	6712		0	123	Tierra del Fuego	1
233	124	6712		0	124	Última Esperanza	1
234	131	6713		0	131	Santiago	1
235	132	6713		0	132	Cordillera	1
236	133	6713		0	133	Chacabuco	1
237	134	6713		0	134	Maipo	1
238	135	6713		0	135	Melipilla	1
239	136	6713		0	136	Talagante	1
240	141	6714		0	141	Valdivia	1
241	142	6714		0	142	Ranco	1
242	151	6715		0	151	Arica	1
243	152	6715		0	152	Parinacota	1
244	ANT	7001		0	ANT	Antioquia	1
245	BOL	7001		0	BOL	Bolívar	1
246	BOY	7001		0	BOY	Boyacá	1
247	CAL	7001		0	CAL	Caldas	1
248	CAU	7001		0	CAU	Cauca	1
249	CUN	7001		0	CUN	Cundinamarca	1
250	HUI	7001		0	HUI	Huila	1
251	LAG	7001		0	LAG	La Guajira	1
252	MET	7001		0	MET	Meta	1
253	NAR	7001		0	NAR	Nariño	1
254	NDS	7001		0	NDS	Norte de Santander	1
255	SAN	7001		0	SAN	Santander	1
256	SUC	7001		0	SUC	Sucre	1
257	TOL	7001		0	TOL	Tolima	1
258	VAC	7001		0	VAC	Valle del Cauca	1
259	RIS	7001		0	RIS	Risalda	1
260	ATL	7001		0	ATL	Atlántico	1
261	COR	7001		0	COR	Córdoba	1
262	SAP	7001		0	SAP	San Andrés, Providencia y Santa Catalina	1
263	ARA	7001		0	ARA	Arauca	1
264	CAS	7001		0	CAS	Casanare	1
265	AMA	7001		0	AMA	Amazonas	1
266	CAQ	7001		0	CAQ	Caquetá	1
267	CHO	7001		0	CHO	Chocó	1
268	GUA	7001		0	GUA	Guainía	1
269	GUV	7001		0	GUV	Guaviare	1
270	PUT	7001		0	PUT	Putumayo	1
271	QUI	7001		0	QUI	Quindío	1
272	VAU	7001		0	VAU	Vaupés	1
273	BOG	7001		0	BOG	Bogotá	1
274	VID	7001		0	VID	Vichada	1
275	CES	7001		0	CES	Cesar	1
276	MAG	7001		0	MAG	Magdalena	1
277	HR-01	7601	Bjelovar	0	\N	Bjelovarsko-bilogorska županija	1
278	HR-02	7601	Karlovac	0	\N	Karlovačka županija	1
279	HR-03	7601	Koprivnica	0	\N	Koprivničko-križevačka županija	1
280	HR-04	7601	Krapina	0	\N	Krapinsko-zagorska županija	1
281	HR-05	7601	Gospić	0	\N	Ličko-senjska županija	1
282	HR-06	7601	Čakovec	0	\N	Međimurska županija	1
283	HR-07	7601	Rijeka	0	\N	Primorsko-goranska županija	1
284	HR-08	7601	Sisak	0	\N	Sisačko-moslavačka županija	1
285	HR-09	7601	Varaždin	0	\N	Varaždinska županija	1
286	HR-10	7601	Zagreb	0	\N	Zagrebačka županija	1
287	HR-11	7601	Zagreb	0	\N	Grad Zagreb	1
288	HR-12	7602	Zadar	0	\N	Zadarska županija	1
289	HR-13	7602	Šibenik	0	\N	Šibensko-kninska županija	1
290	HR-14	7602	Split	0	\N	Splitsko-dalmatinska županija	1
291	HR-15	7602	Dubrovnik	0	\N	Dubrovačko-neretvanska županija	1
292	HR-16	7603	Slavonski Brod	0	\N	Brodsko-posavska županija	1
293	HR-17	7603	Osijek	0	\N	Osječko-baranjska županija	1
294	HR-18	7603	Požega	0	\N	Požeško-slavonska županija	1
295	HR-19	7603	Virovitica	0	\N	Virovitičko-podravska županija	1
296	HR-20	7603	Vukovar	0	\N	Vukovarsko-srijemska županija	1
297	HR-21	7604	Pazin	0	\N	Istarska županija	1
298	971	1	97105	3	GUADELOUPE	Guadeloupe	1
299	972	2	97209	3	MARTINIQUE	Martinique	1
300	973	3	97302	3	GUYANE	Guyane	1
301	974	4	97411	3	REUNION	Réunion	1
302	976	6	97601	3	MAYOTTE	Mayotte	1
303	01	84	01053	5	AIN	Ain	1
304	02	32	02408	5	AISNE	Aisne	1
305	03	84	03190	5	ALLIER	Allier	1
306	04	93	04070	4	ALPES-DE-HAUTE-PROVENCE	Alpes-de-Haute-Provence	1
307	05	93	05061	4	HAUTES-ALPES	Hautes-Alpes	1
308	06	93	06088	4	ALPES-MARITIMES	Alpes-Maritimes	1
309	07	84	07186	5	ARDECHE	Ardèche	1
310	08	44	08105	4	ARDENNES	Ardennes	1
311	09	76	09122	5	ARIEGE	Ariège	1
312	10	44	10387	5	AUBE	Aube	1
313	11	76	11069	5	AUDE	Aude	1
314	12	76	12202	5	AVEYRON	Aveyron	1
315	13	93	13055	4	BOUCHES-DU-RHONE	Bouches-du-Rhône	1
316	14	28	14118	2	CALVADOS	Calvados	1
317	15	84	15014	2	CANTAL	Cantal	1
318	16	75	16015	3	CHARENTE	Charente	1
319	17	75	17300	3	CHARENTE-MARITIME	Charente-Maritime	1
320	18	24	18033	2	CHER	Cher	1
321	19	75	19272	3	CORREZE	Corrèze	1
322	2A	94	2A004	3	CORSE-DU-SUD	Corse-du-Sud	1
323	2B	94	2B033	3	HAUTE-CORSE	Haute-Corse	1
324	21	27	21231	3	COTE-D OR	Côte-d Or	1
325	22	53	22278	4	COTES-D ARMOR	Côtes-d Armor	1
326	23	75	23096	3	CREUSE	Creuse	1
327	24	75	24322	3	DORDOGNE	Dordogne	1
328	25	27	25056	2	DOUBS	Doubs	1
329	26	84	26362	3	DROME	Drôme	1
330	27	28	27229	5	EURE	Eure	1
331	28	24	28085	1	EURE-ET-LOIR	Eure-et-Loir	1
332	29	53	29232	2	FINISTERE	Finistère	1
333	30	76	30189	2	GARD	Gard	1
334	31	76	31555	3	HAUTE-GARONNE	Haute-Garonne	1
335	32	76	32013	2	GERS	Gers	1
336	33	75	33063	3	GIRONDE	Gironde	1
337	34	76	34172	5	HERAULT	Hérault	1
338	35	53	35238	1	ILLE-ET-VILAINE	Ille-et-Vilaine	1
339	36	24	36044	5	INDRE	Indre	1
340	37	24	37261	1	INDRE-ET-LOIRE	Indre-et-Loire	1
341	38	84	38185	5	ISERE	Isère	1
342	39	27	39300	2	JURA	Jura	1
343	40	75	40192	4	LANDES	Landes	1
344	41	24	41018	0	LOIR-ET-CHER	Loir-et-Cher	1
345	42	84	42218	3	LOIRE	Loire	1
346	43	84	43157	3	HAUTE-LOIRE	Haute-Loire	1
347	44	52	44109	3	LOIRE-ATLANTIQUE	Loire-Atlantique	1
348	45	24	45234	2	LOIRET	Loiret	1
349	46	76	46042	2	LOT	Lot	1
350	47	75	47001	0	LOT-ET-GARONNE	Lot-et-Garonne	1
351	48	76	48095	3	LOZERE	Lozère	1
352	49	52	49007	0	MAINE-ET-LOIRE	Maine-et-Loire	1
353	50	28	50502	3	MANCHE	Manche	1
354	51	44	51108	3	MARNE	Marne	1
355	52	44	52121	3	HAUTE-MARNE	Haute-Marne	1
356	53	52	53130	3	MAYENNE	Mayenne	1
357	54	44	54395	0	MEURTHE-ET-MOSELLE	Meurthe-et-Moselle	1
358	55	44	55029	3	MEUSE	Meuse	1
359	56	53	56260	2	MORBIHAN	Morbihan	1
360	57	44	57463	3	MOSELLE	Moselle	1
361	58	27	58194	3	NIEVRE	Nièvre	1
362	59	32	59350	2	NORD	Nord	1
363	60	32	60057	5	OISE	Oise	1
364	61	28	61001	5	ORNE	Orne	1
365	62	32	62041	2	PAS-DE-CALAIS	Pas-de-Calais	1
366	63	84	63113	2	PUY-DE-DOME	Puy-de-Dôme	1
367	64	75	64445	4	PYRENEES-ATLANTIQUES	Pyrénées-Atlantiques	1
368	65	76	65440	4	HAUTES-PYRENEES	Hautes-Pyrénées	1
369	66	76	66136	4	PYRENEES-ORIENTALES	Pyrénées-Orientales	1
370	67	44	67482	2	BAS-RHIN	Bas-Rhin	1
371	68	44	68066	2	HAUT-RHIN	Haut-Rhin	1
372	69	84	69123	2	RHONE	Rhône	1
373	70	27	70550	3	HAUTE-SAONE	Haute-Saône	1
374	71	27	71270	0	SAONE-ET-LOIRE	Saône-et-Loire	1
375	72	52	72181	3	SARTHE	Sarthe	1
376	73	84	73065	3	SAVOIE	Savoie	1
377	74	84	74010	3	HAUTE-SAVOIE	Haute-Savoie	1
378	75	11	75056	0	PARIS	Paris	1
379	76	28	76540	3	SEINE-MARITIME	Seine-Maritime	1
380	77	11	77288	0	SEINE-ET-MARNE	Seine-et-Marne	1
381	78	11	78646	4	YVELINES	Yvelines	1
382	79	75	79191	4	DEUX-SEVRES	Deux-Sèvres	1
383	80	32	80021	3	SOMME	Somme	1
384	81	76	81004	2	TARN	Tarn	1
385	82	76	82121	0	TARN-ET-GARONNE	Tarn-et-Garonne	1
386	83	93	83137	2	VAR	Var	1
387	84	93	84007	0	VAUCLUSE	Vaucluse	1
388	85	52	85191	3	VENDEE	Vendée	1
389	86	75	86194	3	VIENNE	Vienne	1
390	87	75	87085	3	HAUTE-VIENNE	Haute-Vienne	1
391	88	44	88160	4	VOSGES	Vosges	1
392	89	27	89024	5	YONNE	Yonne	1
393	90	27	90010	0	TERRITOIRE DE BELFORT	Territoire de Belfort	1
394	91	11	91228	5	ESSONNE	Essonne	1
395	92	11	92050	4	HAUTS-DE-SEINE	Hauts-de-Seine	1
396	93	11	93008	3	SEINE-SAINT-DENIS	Seine-Saint-Denis	1
397	94	11	94028	2	VAL-DE-MARNE	Val-de-Marne	1
398	95	11	95500	2	VAL-D OISE	Val-d Oise	1
399	BW	501	\N	\N	BADEN-WÜRTTEMBERG	Baden-Württemberg	1
400	BY	501	\N	\N	BAYERN	Bayern	1
401	BE	501	\N	\N	BERLIN	Berlin	1
402	BB	501	\N	\N	BRANDENBURG	Brandenburg	1
403	HB	501	\N	\N	BREMEN	Bremen	1
404	HH	501	\N	\N	HAMBURG	Hamburg	1
405	HE	501	\N	\N	HESSEN	Hessen	1
406	MV	501	\N	\N	MECKLENBURG-VORPOMMERN	Mecklenburg-Vorpommern	1
407	NI	501	\N	\N	NIEDERSACHSEN	Niedersachsen	1
408	NW	501	\N	\N	NORDRHEIN-WESTFALEN	Nordrhein-Westfalen	1
409	RP	501	\N	\N	RHEINLAND-PFALZ	Rheinland-Pfalz	1
410	SL	501	\N	\N	SAARLAND	Saarland	1
411	SN	501	\N	\N	SACHSEN	Sachsen	1
412	ST	501	\N	\N	SACHSEN-ANHALT	Sachsen-Anhalt	1
413	SH	501	\N	\N	SCHLESWIG-HOLSTEIN	Schleswig-Holstein	1
414	TH	501	\N	\N	THÜRINGEN	Thüringen	1
415	66	10201		0		Αθήνα	1
416	67	10205		0		Δράμα	1
417	01	10205		0		Έβρος	1
418	02	10205		0		Θάσος	1
419	03	10205		0		Καβάλα	1
420	04	10205		0		Ξάνθη	1
421	05	10205		0		Ροδόπη	1
422	06	10203		0		Ημαθία	1
423	07	10203		0		Θεσσαλονίκη	1
424	08	10203		0		Κιλκίς	1
425	09	10203		0		Πέλλα	1
426	10	10203		0		Πιερία	1
427	11	10203		0		Σέρρες	1
428	12	10203		0		Χαλκιδική	1
429	13	10206		0		Άρτα	1
430	14	10206		0		Θεσπρωτία	1
431	15	10206		0		Ιωάννινα	1
432	16	10206		0		Πρέβεζα	1
433	17	10213		0		Γρεβενά	1
434	18	10213		0		Καστοριά	1
435	19	10213		0		Κοζάνη	1
436	20	10213		0		Φλώρινα	1
437	21	10212		0		Καρδίτσα	1
438	22	10212		0		Λάρισα	1
439	23	10212		0		Μαγνησία	1
440	24	10212		0		Τρίκαλα	1
441	25	10212		0		Σποράδες	1
442	26	10212		0		Βοιωτία	1
443	27	10202		0		Εύβοια	1
444	28	10202		0		Ευρυτανία	1
445	29	10202		0		Φθιώτιδα	1
446	30	10202		0		Φωκίδα	1
447	31	10209		0		Αργολίδα	1
448	32	10209		0		Αρκαδία	1
449	33	10209		0		Κορινθία	1
450	34	10209		0		Λακωνία	1
451	35	10209		0		Μεσσηνία	1
452	36	10211		0		Αιτωλοακαρνανία	1
453	37	10211		0		Αχαΐα	1
454	38	10211		0		Ηλεία	1
455	39	10207		0		Ζάκυνθος	1
456	40	10207		0		Κέρκυρα	1
457	41	10207		0		Κεφαλληνία	1
458	42	10207		0		Ιθάκη	1
459	43	10207		0		Λευκάδα	1
460	44	10208		0		Ικαρία	1
461	45	10208		0		Λέσβος	1
462	46	10208		0		Λήμνος	1
463	47	10208		0		Σάμος	1
464	48	10208		0		Χίος	1
465	49	10210		0		Άνδρος	1
466	50	10210		0		Θήρα	1
467	51	10210		0		Κάλυμνος	1
468	52	10210		0		Κάρπαθος	1
469	53	10210		0		Κέα-Κύθνος	1
470	54	10210		0		Κω	1
471	55	10210		0		Μήλος	1
472	56	10210		0		Μύκονος	1
473	57	10210		0		Νάξος	1
474	58	10210		0		Πάρος	1
475	59	10210		0		Ρόδος	1
476	60	10210		0		Σύρος	1
477	61	10210		0		Τήνος	1
478	62	10204		0		Ηράκλειο	1
479	63	10204		0		Λασίθι	1
480	64	10204		0		Ρέθυμνο	1
481	65	10204		0		Χανιά	1
482	AT	11401		0	AT	Atlántida	1
483	CH	11401		0	CH	Choluteca	1
484	CL	11401		0	CL	Colón	1
485	CM	11401		0	CM	Comayagua	1
486	CO	11401		0	CO	Copán	1
487	CR	11401		0	CR	Cortés	1
488	EP	11401		0	EP	El Paraíso	1
489	FM	11401		0	FM	Francisco Morazán	1
490	GD	11401		0	GD	Gracias a Dios	1
491	IN	11401		0	IN	Intibucá	1
492	IB	11401		0	IB	Islas de la Bahía	1
493	LP	11401		0	LP	La Paz	1
494	LM	11401		0	LM	Lempira	1
495	OC	11401		0	OC	Ocotepeque	1
496	OL	11401		0	OL	Olancho	1
497	SB	11401		0	SB	Santa Bárbara	1
498	VL	11401		0	VL	Valle	1
499	YO	11401		0	YO	Yoro	1
500	DC	11401		0	DC	Distrito Central	1
501	HU-BU	180100	HU101	\N	\N	Budapest	1
502	HU-PE	180100	HU102	\N	\N	Pest	1
503	HU-FE	182100	HU211	\N	\N	Fejér	1
504	HU-KE	182100	HU212	\N	\N	Komárom-Esztergom	1
505	HU-VE	182100	HU213	\N	\N	Veszprém	1
506	HU-GS	182200	HU221	\N	\N	Győr-Moson-Sopron	1
507	HU-VA	182200	HU222	\N	\N	Vas	1
508	HU-ZA	182200	HU223	\N	\N	Zala	1
509	HU-BA	182300	HU231	\N	\N	Baranya	1
510	HU-SO	182300	HU232	\N	\N	Somogy	1
511	HU-TO	182300	HU233	\N	\N	Tolna	1
512	HU-BZ	183100	HU311	\N	\N	Borsod-Abaúj-Zemplén	1
513	HU-HE	183100	HU312	\N	\N	Heves	1
514	HU-NO	183100	HU313	\N	\N	Nógrád	1
515	HU-HB	183200	HU321	\N	\N	Hajdú-Bihar	1
516	HU-JN	183200	HU322	\N	\N	Jász-Nagykun-Szolnok	1
517	HU-SZ	183200	HU323	\N	\N	Szabolcs-Szatmár-Bereg	1
518	HU-BK	183300	HU331	\N	\N	Bács-Kiskun	1
519	HU-BE	183300	HU332	\N	\N	Békés	1
520	HU-CS	183300	HU333	\N	\N	Csongrád	1
521	AG	315	\N	\N	\N	AGRIGENTO	1
522	AL	312	\N	\N	\N	ALESSANDRIA	1
523	AN	310	\N	\N	\N	ANCONA	1
524	AO	319	\N	\N	\N	AOSTA	1
525	AR	316	\N	\N	\N	AREZZO	1
526	AP	310	\N	\N	\N	ASCOLI PICENO	1
527	AT	312	\N	\N	\N	ASTI	1
528	AV	304	\N	\N	\N	AVELLINO	1
529	BA	313	\N	\N	\N	BARI	1
530	BT	313	\N	\N	\N	BARLETTA-ANDRIA-TRANI	1
531	BL	320	\N	\N	\N	BELLUNO	1
532	BN	304	\N	\N	\N	BENEVENTO	1
533	BG	309	\N	\N	\N	BERGAMO	1
534	BI	312	\N	\N	\N	BIELLA	1
535	BO	305	\N	\N	\N	BOLOGNA	1
536	BZ	317	\N	\N	\N	BOLZANO	1
537	BS	309	\N	\N	\N	BRESCIA	1
538	BR	313	\N	\N	\N	BRINDISI	1
539	CA	314	\N	\N	\N	CAGLIARI	1
540	CL	315	\N	\N	\N	CALTANISSETTA	1
541	CB	311	\N	\N	\N	CAMPOBASSO	1
542	CI	314	\N	\N	\N	CARBONIA-IGLESIAS	1
543	CE	304	\N	\N	\N	CASERTA	1
544	CT	315	\N	\N	\N	CATANIA	1
545	CZ	303	\N	\N	\N	CATANZARO	1
546	CH	301	\N	\N	\N	CHIETI	1
547	CO	309	\N	\N	\N	COMO	1
548	CS	303	\N	\N	\N	COSENZA	1
549	CR	309	\N	\N	\N	CREMONA	1
550	KR	303	\N	\N	\N	CROTONE	1
551	CN	312	\N	\N	\N	CUNEO	1
552	EN	315	\N	\N	\N	ENNA	1
553	FM	310	\N	\N	\N	FERMO	1
554	FE	305	\N	\N	\N	FERRARA	1
555	FI	316	\N	\N	\N	FIRENZE	1
556	FG	313	\N	\N	\N	FOGGIA	1
557	FC	305	\N	\N	\N	FORLI-CESENA	1
558	FR	307	\N	\N	\N	FROSINONE	1
559	GE	308	\N	\N	\N	GENOVA	1
560	GO	306	\N	\N	\N	GORIZIA	1
561	GR	316	\N	\N	\N	GROSSETO	1
562	IM	308	\N	\N	\N	IMPERIA	1
563	IS	311	\N	\N	\N	ISERNIA	1
564	SP	308	\N	\N	\N	LA SPEZIA	1
565	AQ	301	\N	\N	\N	L AQUILA	1
566	LT	307	\N	\N	\N	LATINA	1
567	LE	313	\N	\N	\N	LECCE	1
568	LC	309	\N	\N	\N	LECCO	1
569	LI	316	\N	\N	\N	LIVORNO	1
570	LO	309	\N	\N	\N	LODI	1
571	LU	316	\N	\N	\N	LUCCA	1
572	MC	310	\N	\N	\N	MACERATA	1
573	MN	309	\N	\N	\N	MANTOVA	1
574	MS	316	\N	\N	\N	MASSA-CARRARA	1
575	MT	302	\N	\N	\N	MATERA	1
576	VS	314	\N	\N	\N	MEDIO CAMPIDANO	1
577	ME	315	\N	\N	\N	MESSINA	1
578	MI	309	\N	\N	\N	MILANO	1
579	MB	309	\N	\N	\N	MONZA e BRIANZA	1
580	MO	305	\N	\N	\N	MODENA	1
581	NA	304	\N	\N	\N	NAPOLI	1
582	NO	312	\N	\N	\N	NOVARA	1
583	NU	314	\N	\N	\N	NUORO	1
584	OG	314	\N	\N	\N	OGLIASTRA	1
585	OT	314	\N	\N	\N	OLBIA-TEMPIO	1
586	OR	314	\N	\N	\N	ORISTANO	1
587	PD	320	\N	\N	\N	PADOVA	1
588	PA	315	\N	\N	\N	PALERMO	1
589	PR	305	\N	\N	\N	PARMA	1
590	PV	309	\N	\N	\N	PAVIA	1
591	PG	318	\N	\N	\N	PERUGIA	1
592	PU	310	\N	\N	\N	PESARO e URBINO	1
593	PE	301	\N	\N	\N	PESCARA	1
594	PC	305	\N	\N	\N	PIACENZA	1
595	PI	316	\N	\N	\N	PISA	1
596	PT	316	\N	\N	\N	PISTOIA	1
597	PN	306	\N	\N	\N	PORDENONE	1
598	PZ	302	\N	\N	\N	POTENZA	1
599	PO	316	\N	\N	\N	PRATO	1
600	RG	315	\N	\N	\N	RAGUSA	1
601	RA	305	\N	\N	\N	RAVENNA	1
602	RC	303	\N	\N	\N	REGGIO CALABRIA	1
603	RE	305	\N	\N	\N	REGGIO NELL EMILIA	1
604	RI	307	\N	\N	\N	RIETI	1
605	RN	305	\N	\N	\N	RIMINI	1
606	RM	307	\N	\N	\N	ROMA	1
607	RO	320	\N	\N	\N	ROVIGO	1
608	SA	304	\N	\N	\N	SALERNO	1
609	SS	314	\N	\N	\N	SASSARI	1
610	SV	308	\N	\N	\N	SAVONA	1
611	SI	316	\N	\N	\N	SIENA	1
612	SR	315	\N	\N	\N	SIRACUSA	1
613	SO	309	\N	\N	\N	SONDRIO	1
614	TA	313	\N	\N	\N	TARANTO	1
615	TE	301	\N	\N	\N	TERAMO	1
616	TR	318	\N	\N	\N	TERNI	1
617	TO	312	\N	\N	\N	TORINO	1
618	TP	315	\N	\N	\N	TRAPANI	1
619	TN	317	\N	\N	\N	TRENTO	1
620	TV	320	\N	\N	\N	TREVISO	1
621	TS	306	\N	\N	\N	TRIESTE	1
622	UD	306	\N	\N	\N	UDINE	1
623	VA	309	\N	\N	\N	VARESE	1
624	VE	320	\N	\N	\N	VENEZIA	1
625	VB	312	\N	\N	\N	VERBANO-CUSIO-OSSOLA	1
626	VC	312	\N	\N	\N	VERCELLI	1
627	VR	320	\N	\N	\N	VERONA	1
628	VV	303	\N	\N	\N	VIBO VALENTIA	1
629	VI	320	\N	\N	\N	VICENZA	1
630	VT	307	\N	\N	\N	VITERBO	1
631	01	12301		0	北海	北海道	1
632	02	12301		0	青森	青森県	1
633	03	12301		0	岩手	岩手県	1
634	04	12301		0	宮城	宮城県	1
635	05	12301		0	秋田	秋田県	1
636	06	12301		0	山形	山形県	1
637	07	12301		0	福島	福島県	1
638	08	12301		0	茨城	茨城県	1
639	09	12301		0	栃木	栃木県	1
640	10	12301		0	群馬	群馬県	1
641	11	12301		0	埼玉	埼玉県	1
642	12	12301		0	千葉	千葉県	1
643	13	12301		0	東京	東京都	1
644	14	12301		0	神奈川	神奈川県	1
645	15	12301		0	新潟	新潟県	1
646	16	12301		0	富山	富山県	1
647	17	12301		0	石川	石川県	1
648	18	12301		0	福井	福井県	1
649	19	12301		0	山梨	山梨県	1
650	20	12301		0	長野	長野県	1
651	21	12301		0	岐阜	岐阜県	1
652	22	12301		0	静岡	静岡県	1
653	23	12301		0	愛知	愛知県	1
654	24	12301		0	三重	三重県	1
655	25	12301		0	滋賀	滋賀県	1
656	26	12301		0	京都	京都府	1
657	27	12301		0	大阪	大阪府	1
658	28	12301		0	兵庫	兵庫県	1
659	29	12301		0	奈良	奈良県	1
660	30	12301		0	和歌山	和歌山県	1
661	31	12301		0	鳥取	鳥取県	1
662	32	12301		0	島根	島根県	1
663	33	12301		0	岡山	岡山県	1
664	34	12301		0	広島	広島県	1
665	35	12301		0	山口	山口県	1
666	36	12301		0	徳島	徳島県	1
667	37	12301		0	香川	香川県	1
668	38	12301		0	愛媛	愛媛県	1
669	39	12301		0	高知	高知県	1
670	40	12301		0	福岡	福岡県	1
671	41	12301		0	佐賀	佐賀県	1
672	42	12301		0	長崎	長崎県	1
673	43	12301		0	熊本	熊本県	1
674	44	12301		0	大分	大分県	1
675	45	12301		0	宮崎	宮崎県	1
676	46	12301		0	鹿児島	鹿児島県	1
677	47	12301		0	沖縄	沖縄県	1
678	LU0001	14001		0		Clervaux	1
679	LU0002	14001		0		Diekirch	1
680	LU0003	14001		0		Redange	1
681	LU0004	14001		0		Vianden	1
682	LU0005	14001		0		Wiltz	1
683	LU0006	14002		0		Echternach	1
684	LU0007	14002		0		Grevenmacher	1
685	LU0008	14002		0		Remich	1
686	LU0009	14003		0		Capellen	1
687	LU0010	14003		0		Esch-sur-Alzette	1
688	LU0011	14003		0		Luxembourg	1
689	LU0012	14003		0		Mersch	1
690	MA	1209		0		Province de Benslimane	1
691	MA1	1209		0		Province de Berrechid	1
692	MA2	1209		0		Province de Khouribga	1
693	MA3	1209		0		Province de Settat	1
694	MA4	1210		0		Province d'El Jadida	1
695	MA5	1210		0		Province de Safi	1
696	MA6	1210		0		Province de Sidi Bennour	1
697	MA7	1210		0		Province de Youssoufia	1
698	MA6B	1205		0		Préfecture de Fès	1
699	MA7B	1205		0		Province de Boulemane	1
700	MA8	1205		0		Province de Moulay Yacoub	1
701	MA9	1205		0		Province de Sefrou	1
702	MA8A	1202		0		Province de Kénitra	1
703	MA9A	1202		0		Province de Sidi Kacem	1
704	MA10	1202		0		Province de Sidi Slimane	1
705	MA11	1208		0		Préfecture de Casablanca	1
706	MA12	1208		0		Préfecture de Mohammédia	1
707	MA13	1208		0		Province de Médiouna	1
708	MA14	1208		0		Province de Nouaceur	1
709	MA15	1214		0		Province d'Assa-Zag	1
710	MA16	1214		0		Province d'Es-Semara	1
711	MA17A	1214		0		Province de Guelmim	1
712	MA18	1214		0		Province de Tata	1
713	MA19	1214		0		Province de Tan-Tan	1
714	MA15	1215		0		Province de Boujdour	1
715	MA16	1215		0		Province de Lâayoune	1
716	MA17	1215		0		Province de Tarfaya	1
717	MA18	1211		0		Préfecture de Marrakech	1
718	MA19	1211		0		Province d'Al Haouz	1
719	MA20	1211		0		Province de Chichaoua	1
720	MA21	1211		0		Province d'El Kelâa des Sraghna	1
721	MA22	1211		0		Province d'Essaouira	1
722	MA23	1211		0		Province de Rehamna	1
723	MA24	1206		0		Préfecture de Meknès	1
724	MA25	1206		0		Province d’El Hajeb	1
725	MA26	1206		0		Province d'Errachidia	1
726	MA27	1206		0		Province d’Ifrane	1
727	MA28	1206		0		Province de Khénifra	1
728	MA29	1206		0		Province de Midelt	1
729	MA30	1204		0		Préfecture d'Oujda-Angad	1
730	MA31	1204		0		Province de Berkane	1
731	MA32	1204		0		Province de Driouch	1
732	MA33	1204		0		Province de Figuig	1
733	MA34	1204		0		Province de Jerada	1
734	MA35	1204		0		Province de Nador	1
735	MA36	1204		0		Province de Taourirt	1
736	MA37	1216		0		Province d'Aousserd	1
737	MA38	1216		0		Province d'Oued Ed-Dahab	1
738	MA39	1207		0		Préfecture de Rabat	1
739	MA40	1207		0		Préfecture de Skhirat-Témara	1
740	MA41	1207		0		Préfecture de Salé	1
741	MA42	1207		0		Province de Khémisset	1
742	MA43	1213		0		Préfecture d'Agadir Ida-Outanane	1
743	MA44	1213		0		Préfecture d'Inezgane-Aït Melloul	1
744	MA45	1213		0		Province de Chtouka-Aït Baha	1
745	MA46	1213		0		Province d'Ouarzazate	1
746	MA47	1213		0		Province de Sidi Ifni	1
747	MA48	1213		0		Province de Taroudant	1
748	MA49	1213		0		Province de Tinghir	1
749	MA50	1213		0		Province de Tiznit	1
750	MA51	1213		0		Province de Zagora	1
751	MA52	1212		0		Province d'Azilal	1
752	MA53	1212		0		Province de Beni Mellal	1
753	MA54	1212		0		Province de Fquih Ben Salah	1
754	MA55	1201		0		Préfecture de M'diq-Fnideq	1
755	MA56	1201		0		Préfecture de Tanger-Asilah	1
756	MA57	1201		0		Province de Chefchaouen	1
757	MA58	1201		0		Province de Fahs-Anjra	1
758	MA59	1201		0		Province de Larache	1
759	MA60	1201		0		Province d'Ouezzane	1
760	MA61	1201		0		Province de Tétouan	1
761	MA62	1203		0		Province de Guercif	1
762	MA63	1203		0		Province d'Al Hoceïma	1
763	MA64	1203		0		Province de Taounate	1
764	MA65	1203		0		Province de Taza	1
765	MA6A	1205		0		Préfecture de Fès	1
766	MA7A	1205		0		Province de Boulemane	1
767	MA15A	1214		0		Province d'Assa-Zag	1
768	MA16A	1214		0		Province d'Es-Semara	1
769	MA18A	1211		0		Préfecture de Marrakech	1
770	MA19A	1214		0		Province de Tan-Tan	1
771	MA19B	1214		0		Province de Tan-Tan	1
772	GR	1701	\N	\N	\N	Groningen	1
773	FR	1701	\N	\N	\N	Friesland	1
774	DR	1701	\N	\N	\N	Drenthe	1
775	OV	1701	\N	\N	\N	Overijssel	1
776	GD	1701	\N	\N	\N	Gelderland	1
777	FL	1701	\N	\N	\N	Flevoland	1
778	UT	1701	\N	\N	\N	Utrecht	1
779	NH	1701	\N	\N	\N	Noord-Holland	1
780	ZH	1701	\N	\N	\N	Zuid-Holland	1
781	ZL	1701	\N	\N	\N	Zeeland	1
782	NB	1701	\N	\N	\N	Noord-Brabant	1
783	LB	1701	\N	\N	\N	Limburg	1
784	PA-1	17801		0		Bocas del Toro	1
785	PA-2	17801		0		Coclé	1
786	PA-3	17801		0		Colón	1
787	PA-4	17801		0		Chiriquí	1
788	PA-5	17801		0		Darién	1
789	PA-6	17801		0		Herrera	1
790	PA-7	17801		0		Los Santos	1
791	PA-8	17801		0		Panamá	1
792	PA-9	17801		0		Veraguas	1
793	PA-13	17801		0		Panamá Oeste	1
794	0101	18101		0		Chachapoyas	1
795	0102	18101		0		Bagua	1
796	0103	18101		0		Bongará	1
797	0104	18101		0		Condorcanqui	1
798	0105	18101		0		Luya	1
799	0106	18101		0		Rodríguez de Mendoza	1
800	0107	18101		0		Utcubamba	1
801	0201	18102		0		Huaraz	1
802	0202	18102		0		Aija	1
803	0203	18102		0		Antonio Raymondi	1
804	0204	18102		0		Asunción	1
805	0205	18102		0		Bolognesi	1
806	0206	18102		0		Carhuaz	1
807	0207	18102		0		Carlos Fermín Fitzcarrald	1
808	0208	18102		0		Casma	1
809	0209	18102		0		Corongo	1
810	0210	18102		0		Huari	1
811	0211	18102		0		Huarmey	1
812	0212	18102		0		Huaylas	1
813	0213	18102		0		Mariscal Luzuriaga	1
814	0214	18102		0		Ocros	1
815	0215	18102		0		Pallasca	1
816	0216	18102		0		Pomabamba	1
817	0217	18102		0		Recuay	1
818	0218	18102		0		Papá	1
819	0219	18102		0		Sihuas	1
820	0220	18102		0		Yungay	1
821	0301	18103		0		Abancay	1
822	0302	18103		0		Andahuaylas	1
823	0303	18103		0		Antabamba	1
824	0304	18103		0		Aymaraes	1
825	0305	18103		0		Cotabambas	1
826	0306	18103		0		Chincheros	1
827	0307	18103		0		Grau	1
828	0401	18104		0		Arequipa	1
829	0402	18104		0		Camaná	1
830	0403	18104		0		Caravelí	1
831	0404	18104		0		Castilla	1
832	0405	18104		0		Caylloma	1
833	0406	18104		0		Condesuyos	1
834	0407	18104		0		Islay	1
835	0408	18104		0		La Unión	1
836	0501	18105		0		Huamanga	1
837	0502	18105		0		Cangallo	1
838	0503	18105		0		Huanca Sancos	1
839	0504	18105		0		Huanta	1
840	0505	18105		0		La Mar	1
841	0506	18105		0		Lucanas	1
842	0507	18105		0		Parinacochas	1
843	0508	18105		0		Páucar del Sara Sara	1
844	0509	18105		0		Sucre	1
845	0510	18105		0		Víctor Fajardo	1
846	0511	18105		0		Vilcas Huamán	1
847	0601	18106		0		Cajamarca	1
848	0602	18106		0		Cajabamba	1
849	0603	18106		0		Celendín	1
850	0604	18106		0		Chota	1
851	0605	18106		0		Contumazá	1
852	0606	18106		0		Cutervo	1
853	0607	18106		0		Hualgayoc	1
854	0608	18106		0		Jaén	1
855	0609	18106		0		San Ignacio	1
856	0610	18106		0		San Marcos	1
857	0611	18106		0		San Miguel	1
858	0612	18106		0		San Pablo	1
859	0613	18106		0		Santa Cruz	1
860	0701	18107		0		Callao	1
861	0801	18108		0		Cusco	1
862	0802	18108		0		Acomayo	1
863	0803	18108		0		Anta	1
864	0804	18108		0		Calca	1
865	0805	18108		0		Canas	1
866	0806	18108		0		Canchis	1
867	0807	18108		0		Chumbivilcas	1
868	0808	18108		0		Espinar	1
869	0809	18108		0		La Convención	1
870	0810	18108		0		Paruro	1
871	0811	18108		0		Paucartambo	1
872	0812	18108		0		Quispicanchi	1
873	0813	18108		0		Urubamba	1
874	0901	18109		0		Huancavelica	1
875	0902	18109		0		Acobamba	1
876	0903	18109		0		Angaraes	1
877	0904	18109		0		Castrovirreyna	1
878	0905	18109		0		Churcampa	1
879	0906	18109		0		Huaytará	1
880	0907	18109		0		Tayacaja	1
881	1001	18110		0		Huánuco	1
882	1002	18110		0		Ambón	1
883	1003	18110		0		Dos de Mayo	1
884	1004	18110		0		Huacaybamba	1
885	1005	18110		0		Huamalíes	1
886	1006	18110		0		Leoncio Prado	1
887	1007	18110		0		Marañón	1
888	1008	18110		0		Pachitea	1
889	1009	18110		0		Puerto Inca	1
890	1010	18110		0		Lauricocha	1
891	1011	18110		0		Yarowilca	1
892	1101	18111		0		Ica	1
893	1102	18111		0		Chincha	1
894	1103	18111		0		Nazca	1
895	1104	18111		0		Palpa	1
896	1105	18111		0		Pisco	1
897	1201	18112		0		Huancayo	1
898	1202	18112		0		Concepción	1
899	1203	18112		0		Chanchamayo	1
900	1204	18112		0		Jauja	1
901	1205	18112		0		Junín	1
902	1206	18112		0		Satipo	1
903	1207	18112		0		Tarma	1
904	1208	18112		0		Yauli	1
905	1209	18112		0		Chupaca	1
906	1301	18113		0		Trujillo	1
907	1302	18113		0		Ascope	1
908	1303	18113		0		Bolívar	1
909	1304	18113		0		Chepén	1
910	1305	18113		0		Julcán	1
911	1306	18113		0		Otuzco	1
912	1307	18113		0		Pacasmayo	1
913	1308	18113		0		Pataz	1
914	1309	18113		0		Sánchez Carrión	1
915	1310	18113		0		Santiago de Chuco	1
916	1311	18113		0		Gran Chimú	1
917	1312	18113		0		Virú	1
918	1401	18114		0		Chiclayo	1
919	1402	18114		0		Ferreñafe	1
920	1403	18114		0		Lambayeque	1
921	1501	18115		0		Lima	1
922	1502	18116		0		Huaura	1
923	1503	18116		0		Barranca	1
924	1504	18116		0		Cajatambo	1
925	1505	18116		0		Canta	1
926	1506	18116		0		Cañete	1
927	1507	18116		0		Huaral	1
928	1508	18116		0		Huarochirí	1
929	1509	18116		0		Oyón	1
930	1510	18116		0		Yauyos	1
931	1601	18117		0		Maynas	1
932	1602	18117		0		Alto Amazonas	1
933	1603	18117		0		Loreto	1
934	1604	18117		0		Mariscal Ramón Castilla	1
935	1605	18117		0		Requena	1
936	1606	18117		0		Ucayali	1
937	1607	18117		0		Datem del Marañón	1
938	1701	18118		0		Tambopata	1
939	1702	18118		0		Manú	1
940	1703	18118		0		Tahuamanu	1
941	1801	18119		0		Mariscal Nieto	1
942	1802	18119		0		General Sánchez Cerro	1
943	1803	18119		0		Ilo	1
944	1901	18120		0		Pasco	1
945	1902	18120		0		Daniel Alcides Carrión	1
946	1903	18120		0		Oxapampa	1
947	2001	18121		0		Piura	1
948	2002	18121		0		Ayabaca	1
949	2003	18121		0		Huancabamba	1
950	2004	18121		0		Morropón	1
951	2005	18121		0		Paita	1
952	2006	18121		0		Sullana	1
953	2007	18121		0		Talara	1
954	2008	18121		0		Sechura	1
955	2101	18122		0		Puno	1
956	2102	18122		0		Azángaro	1
957	2103	18122		0		Carabaya	1
958	2104	18122		0		Chucuito	1
959	2105	18122		0		El Collao	1
960	2106	18122		0		Huancané	1
961	2107	18122		0		Lampa	1
962	2108	18122		0		Melgar	1
963	2109	18122		0		Moho	1
964	2110	18122		0		San Antonio de Putina	1
965	2111	18122		0		San Román	1
966	2112	18122		0		Sandia	1
967	2113	18122		0		Yunguyo	1
968	2201	18123		0		Moyobamba	1
969	2202	18123		0		Bellavista	1
970	2203	18123		0		El Dorado	1
971	2204	18123		0		Huallaga	1
972	2205	18123		0		Lamas	1
973	2206	18123		0		Mariscal Cáceres	1
974	2207	18123		0		Picota	1
975	2208	18123		0		La Rioja	1
976	2209	18123		0		San Martín	1
977	2210	18123		0		Tocache	1
978	2301	18124		0		Tacna	1
979	2302	18124		0		Candarave	1
980	2303	18124		0		Jorge Basadre	1
981	2304	18124		0		Tarata	1
982	2401	18125		0		Tumbes	1
983	2402	18125		0		Contralmirante Villar	1
984	2403	18125		0		Zarumilla	1
985	2501	18126		0		Coronel Portillo	1
986	2502	18126		0		Atalaya	1
987	2503	18126		0		Padre Abad	1
988	2504	18126		0		Purús	1
989	PT-AV	15001	\N	\N	AVEIRO	Aveiro	1
990	PT-AC	15002	\N	\N	AZORES	Azores	1
991	PT-BE	15001	\N	\N	BEJA	Beja	1
992	PT-BR	15001	\N	\N	BRAGA	Braga	1
993	PT-BA	15001	\N	\N	BRAGANCA	Bragança	1
994	PT-CB	15001	\N	\N	CASTELO BRANCO	Castelo Branco	1
995	PT-CO	15001	\N	\N	COIMBRA	Coimbra	1
996	PT-EV	15001	\N	\N	EVORA	Évora	1
997	PT-FA	15001	\N	\N	FARO	Faro	1
998	PT-GU	15001	\N	\N	GUARDA	Guarda	1
999	PT-LE	15001	\N	\N	LEIRIA	Leiria	1
1000	PT-LI	15001	\N	\N	LISBON	Lisboa	1
1001	PT-AML	15001	\N	\N	AREA METROPOLITANA LISBOA	Área Metropolitana de Lisboa	1
1002	PT-MA	15002	\N	\N	MADEIRA	Madeira	1
1003	PT-PA	15001	\N	\N	PORTALEGRE	Portalegre	1
1004	PT-PO	15001	\N	\N	PORTO	Porto	1
1005	PT-SA	15001	\N	\N	SANTAREM	Santarém	1
1006	PT-SE	15001	\N	\N	SETUBAL	Setúbal	1
1007	PT-VC	15001	\N	\N	VIANA DO CASTELO	Viana Do Castelo	1
1008	PT-VR	15001	\N	\N	VILA REAL	Vila Real	1
1009	PT-VI	15001	\N	\N	VISEU	Viseu	1
1010	AB	18801		0		Alba	1
1011	AR	18801		0		Arad	1
1012	AG	18801		0		Argeș	1
1013	BC	18801		0		Bacău	1
1014	BH	18801		0		Bihor	1
1015	BN	18801		0		Bistrița-Năsăud	1
1016	BT	18801		0		Botoșani	1
1017	BV	18801		0		Brașov	1
1018	BR	18801		0		Brăila	1
1019	BU	18801		0		Bucuresti	1
1020	BZ	18801		0		Buzău	1
1021	CL	18801		0		Călărași	1
1022	CS	18801		0		Caraș-Severin	1
1023	CJ	18801		0		Cluj	1
1024	CT	18801		0		Constanța	1
1025	CV	18801		0		Covasna	1
1026	DB	18801		0		Dâmbovița	1
1027	DJ	18801		0		Dolj	1
1028	GL	18801		0		Galați	1
1029	GR	18801		0		Giurgiu	1
1030	GJ	18801		0		Gorj	1
1031	HR	18801		0		Harghita	1
1032	HD	18801		0		Hunedoara	1
1033	IL	18801		0		Ialomița	1
1034	IS	18801		0		Iași	1
1035	IF	18801		0		Ilfov	1
1036	MM	18801		0		Maramureș	1
1037	MH	18801		0		Mehedinți	1
1038	MS	18801		0		Mureș	1
1039	NT	18801		0		Neamț	1
1040	OT	18801		0		Olt	1
1041	PH	18801		0		Prahova	1
1042	SM	18801		0		Satu Mare	1
1043	SJ	18801		0		Sălaj	1
1044	SB	18801		0		Sibiu	1
1045	SV	18801		0		Suceava	1
1046	TR	18801		0		Teleorman	1
1047	TM	18801		0		Timiș	1
1048	TL	18801		0		Tulcea	1
1049	VS	18801		0		Vaslui	1
1050	VL	18801		0		Vâlcea	1
1051	VN	18801		0		Vrancea	1
1052	SS	8601		0		San Salvador	1
1053	LL	8601		0		La Libertad	1
1054	CH	8601		0		Chalatenango	1
1055	CA	8601		0		Cabañas	1
1056	LP	8601		0		La Paz	1
1057	SV	8601		0		San Vicente	1
1058	CU	8601		0		Cuscatlan	1
1059	US	8602		0		Usulutan	1
1060	SM	8602		0		San Miguel	1
1061	MO	8602		0		Morazan	1
1062	LU	8602		0		La Union	1
1063	AH	8603		0		Ahuachapan	1
1064	SA	8603		0		Santa Ana	1
1065	SO	8603		0		Sonsonate	1
1066	SI031	20203	\N	\N	MURA	Mura	1
1067	SI032	20203	\N	\N	DRAVA	Drava	1
1068	SI033	20203	\N	\N	CARINTHIA	Carinthia	1
1069	SI034	20203	\N	\N	SAVINJA	Savinja	1
1070	SI035	20203	\N	\N	CENTRAL SAVA	Central Sava	1
1071	SI036	20203	\N	\N	LOWER SAVA	Lower Sava	1
1072	SI037	20203	\N	\N	SOUTHEAST SLOVENIA	Southeast Slovenia	1
1073	SI038	20203	\N	\N	LITTORAL–INNER CARNIOLA	Littoral–Inner Carniola	1
1074	SI041	20204	\N	\N	CENTRAL SLOVENIA	Central Slovenia	1
1075	SI038	20204	\N	\N	UPPER CARNIOLA	Upper Carniola	1
1076	SI043	20204	\N	\N	GORIZIA	Gorizia	1
1077	SI044	20204	\N	\N	COASTAL–KARST	Coastal–Karst	1
1078	AG	601	\N	\N	ARGOVIE	Argovie	1
1079	AI	601	\N	\N	APPENZELL RHODES INTERIEURES	Appenzell Rhodes intérieures	1
1080	AR	601	\N	\N	APPENZELL RHODES EXTERIEURES	Appenzell Rhodes extérieures	1
1081	BE	601	\N	\N	BERNE	Berne	1
1082	BL	601	\N	\N	BALE CAMPAGNE	Bâle Campagne	1
1083	BS	601	\N	\N	BALE VILLE	Bâle Ville	1
1084	FR	601	\N	\N	FRIBOURG	Fribourg	1
1085	GE	601	\N	\N	GENEVE	Genève	1
1086	GL	601	\N	\N	GLARIS	Glaris	1
1087	GR	601	\N	\N	GRISONS	Grisons	1
1088	JU	601	\N	\N	JURA	Jura	1
1089	LU	601	\N	\N	LUCERNE	Lucerne	1
1090	NE	601	\N	\N	NEUCHATEL	Neuchâtel	1
1091	NW	601	\N	\N	NIDWALD	Nidwald	1
1092	OW	601	\N	\N	OBWALD	Obwald	1
1093	SG	601	\N	\N	SAINT-GALL	Saint-Gall	1
1094	SH	601	\N	\N	SCHAFFHOUSE	Schaffhouse	1
1095	SO	601	\N	\N	SOLEURE	Soleure	1
1096	SZ	601	\N	\N	SCHWYZ	Schwyz	1
1097	TG	601	\N	\N	THURGOVIE	Thurgovie	1
1098	TI	601	\N	\N	TESSIN	Tessin	1
1099	UR	601	\N	\N	URI	Uri	1
1100	VD	601	\N	\N	VAUD	Vaud	1
1101	VS	601	\N	\N	VALAIS	Valais	1
1102	ZG	601	\N	\N	ZUG	Zug	1
1103	ZH	601	\N	\N	ZURICH	Zürich	1
1104	TW-KLU	21301	KLU	\N	\N	基隆市	1
1105	TW-TPE	21301	TPE	\N	\N	臺北市	1
1106	TW-TPH	21301	TPH	\N	\N	新北市	1
1107	TW-TYC	21301	TYC	\N	\N	桃園市	1
1108	TW-HSH	21301	HSH	\N	\N	新竹縣	1
1109	TW-HSC	21301	HSC	\N	\N	新竹市	1
1110	TW-MAL	21301	MAL	\N	\N	苗栗縣	1
1111	TW-MAC	21301	MAC	\N	\N	苗栗市	1
1112	TW-TXG	21301	TXG	\N	\N	臺中市	1
1113	TW-CWH	21301	CWH	\N	\N	彰化縣	1
1114	TW-CWS	21301	CWS	\N	\N	彰化市	1
1115	TW-NTC	21301	NTC	\N	\N	南投市	1
1116	TW-NTO	21301	NTO	\N	\N	南投縣	1
1117	TW-YLH	21301	YLH	\N	\N	雲林縣	1
1118	TW-CHY	21301	CHY	\N	\N	嘉義縣	1
1119	TW-CYI	21301	CYI	\N	\N	嘉義市	1
1120	TW-TNN	21301	TNN	\N	\N	臺南市	1
1121	TW-KHH	21301	KHH	\N	\N	高雄市	1
1122	TW-IUH	21301	IUH	\N	\N	屏東縣	1
1123	TW-PTS	21301	PTS	\N	\N	屏東市	1
1124	TW-ILN	21301	ILN	\N	\N	宜蘭縣	1
1125	TW-ILC	21301	ILC	\N	\N	宜蘭市	1
1126	TW-HWA	21301	HWA	\N	\N	花蓮縣	1
1127	TW-HWC	21301	HWC	\N	\N	花蓮市	1
1128	TW-TTC	21301	TTC	\N	\N	臺東市	1
1129	TW-TTT	21301	TTT	\N	\N	臺東縣	1
1130	TW-PEH	21301	PEH	\N	\N	澎湖縣	1
1131	TW-GNI	21301	GNI	\N	\N	綠島	1
1132	TW-KYD	21301	KYD	\N	\N	蘭嶼	1
1133	TW-KMN	21301	KMN	\N	\N	金門縣	1
1134	TW-LNN	21301	LNN	\N	\N	連江縣	1
1135	TN01	1001		0		Ariana	1
1136	TN02	1001		0		Béja	1
1137	TN03	1001		0		Ben Arous	1
1138	TN04	1001		0		Bizerte	1
1139	TN05	1001		0		Gabès	1
1140	TN06	1001		0		Gafsa	1
1141	TN07	1001		0		Jendouba	1
1142	TN08	1001		0		Kairouan	1
1143	TN09	1001		0		Kasserine	1
1144	TN10	1001		0		Kébili	1
1145	TN11	1001		0		La Manouba	1
1146	TN12	1001		0		Le Kef	1
1147	TN13	1001		0		Mahdia	1
1148	TN14	1001		0		Médenine	1
1149	TN15	1001		0		Monastir	1
1150	TN16	1001		0		Nabeul	1
1151	TN17	1001		0		Sfax	1
1152	TN18	1001		0		Sidi Bouzid	1
1153	TN19	1001		0		Siliana	1
1154	TN20	1001		0		Sousse	1
1155	TN21	1001		0		Tataouine	1
1156	TN22	1001		0		Tozeur	1
1157	TN23	1001		0		Tunis	1
1158	TN24	1001		0		Zaghouan	1
1159	AL	1101		0	ALABAMA	Alabama	1
1160	AK	1101		0	ALASKA	Alaska	1
1161	AZ	1101		0	ARIZONA	Arizona	1
1162	AR	1101		0	ARKANSAS	Arkansas	1
1163	CA	1101		0	CALIFORNIA	California	1
1164	CO	1101		0	COLORADO	Colorado	1
1165	CT	1101		0	CONNECTICUT	Connecticut	1
1166	DE	1101		0	DELAWARE	Delaware	1
1167	FL	1101		0	FLORIDA	Florida	1
1168	GA	1101		0	GEORGIA	Georgia	1
1169	HI	1101		0	HAWAII	Hawaii	1
1170	ID	1101		0	IDAHO	Idaho	1
1171	IL	1101		0	ILLINOIS	Illinois	1
1172	IN	1101		0	INDIANA	Indiana	1
1173	IA	1101		0	IOWA	Iowa	1
1174	KS	1101		0	KANSAS	Kansas	1
1175	KY	1101		0	KENTUCKY	Kentucky	1
1176	LA	1101		0	LOUISIANA	Louisiana	1
1177	ME	1101		0	MAINE	Maine	1
1178	MD	1101		0	MARYLAND	Maryland	1
1179	MA	1101		0	MASSACHUSSETTS	Massachusetts	1
1180	MI	1101		0	MICHIGAN	Michigan	1
1181	MN	1101		0	MINNESOTA	Minnesota	1
1182	MS	1101		0	MISSISSIPPI	Mississippi	1
1183	MO	1101		0	MISSOURI	Missouri	1
1184	MT	1101		0	MONTANA	Montana	1
1185	NE	1101		0	NEBRASKA	Nebraska	1
1186	NV	1101		0	NEVADA	Nevada	1
1187	NH	1101		0	NEW HAMPSHIRE	New Hampshire	1
1188	NJ	1101		0	NEW JERSEY	New Jersey	1
1189	NM	1101		0	NEW MEXICO	New Mexico	1
1190	NY	1101		0	NEW YORK	New York	1
1191	NC	1101		0	NORTH CAROLINA	North Carolina	1
1192	ND	1101		0	NORTH DAKOTA	North Dakota	1
1193	OH	1101		0	OHIO	Ohio	1
1194	OK	1101		0	OKLAHOMA	Oklahoma	1
1195	OR	1101		0	OREGON	Oregon	1
1196	PA	1101		0	PENNSYLVANIA	Pennsylvania	1
1197	RI	1101		0	RHODE ISLAND	Rhode Island	1
1198	SC	1101		0	SOUTH CAROLINA	South Carolina	1
1199	SD	1101		0	SOUTH DAKOTA	South Dakota	1
1200	TN	1101		0	TENNESSEE	Tennessee	1
1201	TX	1101		0	TEXAS	Texas	1
1202	UT	1101		0	UTAH	Utah	1
1203	VT	1101		0	VERMONT	Vermont	1
1204	VA	1101		0	VIRGINIA	Virginia	1
1205	WA	1101		0	WASHINGTON	Washington	1
1206	WV	1101		0	WEST VIRGINIA	West Virginia	1
1207	WI	1101		0	WISCONSIN	Wisconsin	1
1208	WY	1101		0	WYOMING	Wyoming	1
1209	001	5201		0		Belisario Boeto	1
1210	002	5201		0		Hernando Siles	1
1211	003	5201		0		Jaime Zudáñez	1
1212	004	5201		0		Juana Azurduy de Padilla	1
1213	005	5201		0		Luis Calvo	1
1214	006	5201		0		Nor Cinti	1
1215	007	5201		0		Oropeza	1
1216	008	5201		0		Sud Cinti	1
1217	009	5201		0		Tomina	1
1218	010	5201		0		Yamparáez	1
1219	011	5202		0		Abel Iturralde	1
1220	012	5202		0		Aroma	1
1221	013	5202		0		Bautista Saavedra	1
1222	014	5202		0		Caranavi	1
1223	015	5202		0		Eliodoro Camacho	1
1224	016	5202		0		Franz Tamayo	1
1225	017	5202		0		Gualberto Villarroel	1
1226	018	5202		0		Ingaví	1
1227	019	5202		0		Inquisivi	1
1228	020	5202		0		José Ramón Loayza	1
1229	021	5202		0		Larecaja	1
1230	022	5202		0		Los Andes (Bolivia)	1
1231	023	5202		0		Manco Kapac	1
1232	024	5202		0		Muñecas	1
1233	025	5202		0		Nor Yungas	1
1234	026	5202		0		Omasuyos	1
1235	027	5202		0		Pacajes	1
1236	028	5202		0		Pedro Domingo Murillo	1
1237	029	5202		0		Sud Yungas	1
1238	030	5202		0		General José Manuel Pando	1
1239	031	5203		0		Arani	1
1240	032	5203		0		Arque	1
1241	033	5203		0		Ayopaya	1
1242	034	5203		0		Bolívar (Bolivia)	1
1243	035	5203		0		Campero	1
1244	036	5203		0		Capinota	1
1245	037	5203		0		Cercado (Cochabamba)	1
1246	038	5203		0		Esteban Arze	1
1247	039	5203		0		Germán Jordán	1
1248	040	5203		0		José Carrasco	1
1249	041	5203		0		Mizque	1
1250	042	5203		0		Punata	1
1251	043	5203		0		Quillacollo	1
1252	044	5203		0		Tapacarí	1
1253	045	5203		0		Tiraque	1
1254	046	5203		0		Chapare	1
1255	047	5204		0		Carangas	1
1256	048	5204		0		Cercado (Oruro)	1
1257	049	5204		0		Eduardo Avaroa	1
1258	050	5204		0		Ladislao Cabrera	1
1259	051	5204		0		Litoral de Atacama	1
1260	052	5204		0		Mejillones	1
1261	053	5204		0		Nor Carangas	1
1262	054	5204		0		Pantaleón Dalence	1
1263	055	5204		0		Poopó	1
1264	056	5204		0		Sabaya	1
1265	057	5204		0		Sajama	1
1266	058	5204		0		San Pedro de Totora	1
1267	059	5204		0		Saucarí	1
1268	060	5204		0		Sebastián Pagador	1
1269	061	5204		0		Sud Carangas	1
1270	062	5204		0		Tomás Barrón	1
1271	063	5205		0		Alonso de Ibáñez	1
1272	064	5205		0		Antonio Quijarro	1
1273	065	5205		0		Bernardino Bilbao	1
1274	066	5205		0		Charcas (Potosí)	1
1275	067	5205		0		Chayanta	1
1276	068	5205		0		Cornelio Saavedra	1
1277	069	5205		0		Daniel Campos	1
1278	070	5205		0		Enrique Baldivieso	1
1279	071	5205		0		José María Linares	1
1280	072	5205		0		Modesto Omiste	1
1281	073	5205		0		Nor Chichas	1
1282	074	5205		0		Nor Lípez	1
1283	075	5205		0		Rafael Bustillo	1
1284	076	5205		0		Sud Chichas	1
1285	077	5205		0		Sud Lípez	1
1286	078	5205		0		Tomás Frías	1
1287	079	5206		0		Aniceto Arce	1
1288	080	5206		0		Burdet O'Connor	1
1289	081	5206		0		Cercado (Tarija)	1
1290	082	5206		0		Eustaquio Méndez	1
1291	083	5206		0		José María Avilés	1
1292	084	5206		0		Gran Chaco	1
1293	085	5207		0		Andrés Ibáñez	1
1294	086	5207		0		Caballero	1
1295	087	5207		0		Chiquitos	1
1296	088	5207		0		Cordillera (Bolivia)	1
1297	089	5207		0		Florida	1
1298	090	5207		0		Germán Busch	1
1299	091	5207		0		Guarayos	1
1300	092	5207		0		Ichilo	1
1301	093	5207		0		Obispo Santistevan	1
1302	094	5207		0		Sara	1
1303	095	5207		0		Vallegrande	1
1304	096	5207		0		Velasco	1
1305	097	5207		0		Warnes	1
1306	098	5207		0		Ángel Sandóval	1
1307	099	5207		0		Ñuflo de Chaves	1
1308	100	5208		0		Cercado (Beni)	1
1309	101	5208		0		Iténez	1
1310	102	5208		0		Mamoré	1
1311	103	5208		0		Marbán	1
1312	104	5208		0		Moxos	1
1313	105	5208		0		Vaca Díez	1
1314	106	5208		0		Yacuma	1
1315	107	5208		0		General José Ballivián Segurola	1
1316	108	5209		0		Abuná	1
1317	109	5209		0		Madre de Dios	1
1318	110	5209		0		Manuripi	1
1319	111	5209		0		Nicolás Suárez	1
1320	112	5209		0		General Federico Román	1
1321	VI	419	01	19	ALAVA	Álava	1
1322	AB	404	02	4	ALBACETE	Albacete	1
1323	A	411	03	11	ALICANTE	Alicante	1
1324	AL	401	04	1	ALMERIA	Almería	1
1325	O	418	33	18	ASTURIAS	Asturias	1
1326	AV	403	05	3	AVILA	Ávila	1
1327	BA	412	06	12	BADAJOZ	Badajoz	1
1328	B	406	08	6	BARCELONA	Barcelona	1
1329	BU	403	09	8	BURGOS	Burgos	1
1330	CC	412	10	12	CACERES	Cáceres	1
1331	CA	401	11	1	CADIZ	Cádiz	1
1332	S	410	39	10	CANTABRIA	Cantabria	1
1333	CS	411	12	11	CASTELLON	Castellón	1
1334	CE	407	51	7	CEUTA	Ceuta	1
1335	CR	404	13	4	CIUDAD REAL	Ciudad Real	1
1336	CO	401	14	1	CORDOBA	Córdoba	1
1337	CU	404	16	4	CUENCA	Cuenca	1
1338	GI	406	17	6	GERONA	Gerona	1
1339	GR	401	18	1	GRANADA	Granada	1
1340	GU	404	19	4	GUADALAJARA	Guadalajara	1
1341	SS	419	20	19	GUIPUZCOA	Guipúzcoa	1
1342	H	401	21	1	HUELVA	Huelva	1
1343	HU	402	22	2	HUESCA	Huesca	1
1344	PM	414	07	14	ISLAS BALEARES	Islas Baleares	1
1345	J	401	23	1	JAEN	Jaén	1
1346	C	413	15	13	LA CORUÑA	La Coruña	1
1347	LO	415	26	15	LA RIOJA	La Rioja	1
1348	GC	405	35	5	LAS PALMAS	Las Palmas	1
1349	LE	403	24	3	LEON	León	1
1350	L	406	25	6	LERIDA	Lérida	1
1351	LU	413	27	13	LUGO	Lugo	1
1352	M	416	28	16	MADRID	Madrid	1
1353	MA	401	29	1	MALAGA	Málaga	1
1354	ML	409	52	9	MELILLA	Melilla	1
1355	MU	417	30	17	MURCIA	Murcia	1
1356	NA	408	31	8	NAVARRA	Navarra	1
1357	OR	413	32	13	ORENSE	Orense	1
1358	P	403	34	3	PALENCIA	Palencia	1
1359	PO	413	36	13	PONTEVEDRA	Pontevedra	1
1360	SA	403	37	3	SALAMANCA	Salamanca	1
1361	TF	405	38	5	STA. CRUZ DE TENERIFE	Santa Cruz de Tenerife	1
1362	SG	403	40	3	SEGOVIA	Segovia	1
1363	SE	401	41	1	SEVILLA	Sevilla	1
1364	SO	403	42	3	SORIA	Soria	1
1365	T	406	43	6	TARRAGONA	Tarragona	1
1366	TE	402	44	2	TERUEL	Teruel	1
1367	TO	404	45	5	TOLEDO	Toledo	1
1368	V	411	46	11	VALENCIA	Valencia	1
1369	VA	403	47	3	VALLADOLID	Valladolid	1
1370	BI	419	48	19	VIZCAYA	Vizcaya	1
1371	ZA	403	49	3	ZAMORA	Zamora	1
1372	Z	402	50	1	ZARAGOZA	Zaragoza	1
1373	701	701	\N	0	\N	Bedfordshire	1
1374	702	701	\N	0	\N	Berkshire	1
1375	703	701	\N	0	\N	Bristol, City of	1
1376	704	701	\N	0	\N	Buckinghamshire	1
1377	705	701	\N	0	\N	Cambridgeshire	1
1378	706	701	\N	0	\N	Cheshire	1
1379	707	701	\N	0	\N	Cleveland	1
1380	708	701	\N	0	\N	Cornwall	1
1381	709	701	\N	0	\N	Cumberland	1
1382	710	701	\N	0	\N	Cumbria	1
1383	711	701	\N	0	\N	Derbyshire	1
1384	712	701	\N	0	\N	Devon	1
1385	713	701	\N	0	\N	Dorset	1
1386	714	701	\N	0	\N	Co. Durham	1
1387	715	701	\N	0	\N	East Riding of Yorkshire	1
1388	716	701	\N	0	\N	East Sussex	1
1389	717	701	\N	0	\N	Essex	1
1390	718	701	\N	0	\N	Gloucestershire	1
1391	719	701	\N	0	\N	Greater Manchester	1
1392	720	701	\N	0	\N	Hampshire	1
1393	721	701	\N	0	\N	Hertfordshire	1
1394	722	701	\N	0	\N	Hereford and Worcester	1
1395	723	701	\N	0	\N	Herefordshire	1
1396	724	701	\N	0	\N	Huntingdonshire	1
1397	725	701	\N	0	\N	Isle of Man	1
1398	726	701	\N	0	\N	Isle of Wight	1
1399	727	701	\N	0	\N	Jersey	1
1400	728	701	\N	0	\N	Kent	1
1401	729	701	\N	0	\N	Lancashire	1
1402	730	701	\N	0	\N	Leicestershire	1
1403	731	701	\N	0	\N	Lincolnshire	1
1404	732	701	\N	0	\N	London - City of London	1
1405	733	701	\N	0	\N	Merseyside	1
1406	734	701	\N	0	\N	Middlesex	1
1407	735	701	\N	0	\N	Norfolk	1
1408	736	701	\N	0	\N	North Yorkshire	1
1409	737	701	\N	0	\N	North Riding of Yorkshire	1
1410	738	701	\N	0	\N	Northamptonshire	1
1411	739	701	\N	0	\N	Northumberland	1
1412	740	701	\N	0	\N	Nottinghamshire	1
1413	741	701	\N	0	\N	Oxfordshire	1
1414	742	701	\N	0	\N	Rutland	1
1415	743	701	\N	0	\N	Shropshire	1
1416	744	701	\N	0	\N	Somerset	1
1417	745	701	\N	0	\N	Staffordshire	1
1418	746	701	\N	0	\N	Suffolk	1
1419	747	701	\N	0	\N	Surrey	1
1420	748	701	\N	0	\N	Sussex	1
1421	749	701	\N	0	\N	Tyne and Wear	1
1422	750	701	\N	0	\N	Warwickshire	1
1423	751	701	\N	0	\N	West Midlands	1
1424	752	701	\N	0	\N	West Sussex	1
1425	753	701	\N	0	\N	West Yorkshire	1
1426	754	701	\N	0	\N	West Riding of Yorkshire	1
1427	755	701	\N	0	\N	Wiltshire	1
1428	756	701	\N	0	\N	Worcestershire	1
1429	757	701	\N	0	\N	Yorkshire	1
1430	758	702	\N	0	\N	Anglesey	1
1431	759	702	\N	0	\N	Breconshire	1
1432	760	702	\N	0	\N	Caernarvonshire	1
1433	761	702	\N	0	\N	Cardiganshire	1
1434	762	702	\N	0	\N	Carmarthenshire	1
1435	763	702	\N	0	\N	Ceredigion	1
1436	764	702	\N	0	\N	Denbighshire	1
1437	765	702	\N	0	\N	Flintshire	1
1438	766	702	\N	0	\N	Glamorgan	1
1439	767	702	\N	0	\N	Gwent	1
1440	768	702	\N	0	\N	Gwynedd	1
1441	769	702	\N	0	\N	Merionethshire	1
1442	770	702	\N	0	\N	Monmouthshire	1
1443	771	702	\N	0	\N	Mid Glamorgan	1
1444	772	702	\N	0	\N	Montgomeryshire	1
1445	773	702	\N	0	\N	Pembrokeshire	1
1446	774	702	\N	0	\N	Powys	1
1447	775	702	\N	0	\N	Radnorshire	1
1448	776	702	\N	0	\N	South Glamorgan	1
1449	777	703	\N	0	\N	Aberdeen, City of	1
1450	778	703	\N	0	\N	Angus	1
1451	779	703	\N	0	\N	Argyll	1
1452	780	703	\N	0	\N	Ayrshire	1
1453	781	703	\N	0	\N	Banffshire	1
1454	782	703	\N	0	\N	Berwickshire	1
1455	783	703	\N	0	\N	Bute	1
1456	784	703	\N	0	\N	Caithness	1
1457	785	703	\N	0	\N	Clackmannanshire	1
1458	786	703	\N	0	\N	Dumfriesshire	1
1459	787	703	\N	0	\N	Dumbartonshire	1
1460	788	703	\N	0	\N	Dundee, City of	1
1461	789	703	\N	0	\N	East Lothian	1
1462	790	703	\N	0	\N	Fife	1
1463	791	703	\N	0	\N	Inverness	1
1464	792	703	\N	0	\N	Kincardineshire	1
1465	793	703	\N	0	\N	Kinross-shire	1
1466	794	703	\N	0	\N	Kirkcudbrightshire	1
1467	795	703	\N	0	\N	Lanarkshire	1
1468	796	703	\N	0	\N	Midlothian	1
1469	797	703	\N	0	\N	Morayshire	1
1470	798	703	\N	0	\N	Nairnshire	1
1471	799	703	\N	0	\N	Orkney	1
1472	800	703	\N	0	\N	Peebleshire	1
1473	801	703	\N	0	\N	Perthshire	1
1474	802	703	\N	0	\N	Renfrewshire	1
1475	803	703	\N	0	\N	Ross & Cromarty	1
1476	804	703	\N	0	\N	Roxburghshire	1
1477	805	703	\N	0	\N	Selkirkshire	1
1478	806	703	\N	0	\N	Shetland	1
1479	807	703	\N	0	\N	Stirlingshire	1
1480	808	703	\N	0	\N	Sutherland	1
1481	809	703	\N	0	\N	West Lothian	1
1482	810	703	\N	0	\N	Wigtownshire	1
1483	811	704	\N	0	\N	Antrim	1
1484	812	704	\N	0	\N	Armagh	1
1485	813	704	\N	0	\N	Co. Down	1
1486	814	704	\N	0	\N	Co. Fermanagh	1
1487	815	704	\N	0	\N	Co. Londonderry	1
1488	AN	11701	\N	0	AN	Andaman & Nicobar	1
1489	AP	11701	\N	0	AP	Andhra Pradesh	1
1490	AR	11701	\N	0	AR	Arunachal Pradesh	1
1491	AS	11701	\N	0	AS	Assam	1
1492	BR	11701	\N	0	BR	Bihar	1
1493	CG	11701	\N	0	CG	Chattisgarh	1
1494	CH	11701	\N	0	CH	Chandigarh	1
1495	DD	11701	\N	0	DD	Daman & Diu	1
1496	DL	11701	\N	0	DL	Delhi	1
1497	DN	11701	\N	0	DN	Dadra and Nagar Haveli	1
1498	GA	11701	\N	0	GA	Goa	1
1499	GJ	11701	\N	0	GJ	Gujarat	1
1500	HP	11701	\N	0	HP	Himachal Pradesh	1
1501	HR	11701	\N	0	HR	Haryana	1
1502	JH	11701	\N	0	JH	Jharkhand	1
1503	JK	11701	\N	0	JK	Jammu & Kashmir	1
1504	KA	11701	\N	0	KA	Karnataka	1
1505	KL	11701	\N	0	KL	Kerala	1
1506	LD	11701	\N	0	LD	Lakshadweep	1
1507	MH	11701	\N	0	MH	Maharashtra	1
1508	ML	11701	\N	0	ML	Meghalaya	1
1509	MN	11701	\N	0	MN	Manipur	1
1510	MP	11701	\N	0	MP	Madhya Pradesh	1
1511	MZ	11701	\N	0	MZ	Mizoram	1
1512	NL	11701	\N	0	NL	Nagaland	1
1513	OR	11701	\N	0	OR	Orissa	1
1514	PB	11701	\N	0	PB	Punjab	1
1515	PY	11701	\N	0	PY	Puducherry	1
1516	RJ	11701	\N	0	RJ	Rajasthan	1
1517	SK	11701	\N	0	SK	Sikkim	1
1518	TE	11701	\N	0	TE	Telangana	1
1519	TN	11701	\N	0	TN	Tamil Nadu	1
1520	TR	11701	\N	0	TR	Tripura	1
1521	UL	11701	\N	0	UL	Uttarakhand	1
1522	UP	11701	\N	0	UP	Uttar Pradesh	1
1523	WB	11701	\N	0	WB	West Bengal	1
1524	BA	11801	\N	0	BA	Bali	1
1525	BB	11801	\N	0	BB	Bangka Belitung	1
1526	BT	11801	\N	0	BT	Banten	1
1527	BE	11801	\N	0	BA	Bengkulu	1
1528	YO	11801	\N	0	YO	DI Yogyakarta	1
1529	JK	11801	\N	0	JK	DKI Jakarta	1
1530	GO	11801	\N	0	GO	Gorontalo	1
1531	JA	11801	\N	0	JA	Jambi	1
1532	JB	11801	\N	0	JB	Jawa Barat	1
1533	JT	11801	\N	0	JT	Jawa Tengah	1
1534	JI	11801	\N	0	JI	Jawa Timur	1
1535	KB	11801	\N	0	KB	Kalimantan Barat	1
1536	KS	11801	\N	0	KS	Kalimantan Selatan	1
1537	KT	11801	\N	0	KT	Kalimantan Tengah	1
1538	KI	11801	\N	0	KI	Kalimantan Timur	1
1539	KU	11801	\N	0	KU	Kalimantan Utara	1
1540	KR	11801	\N	0	KR	Kepulauan Riau	1
1541	LA	11801	\N	0	LA	Lampung	1
1542	MA	11801	\N	0	MA	Maluku	1
1543	MU	11801	\N	0	MU	Maluku Utara	1
1544	AC	11801	\N	0	AC	Nanggroe Aceh Darussalam	1
1545	NB	11801	\N	0	NB	Nusa Tenggara Barat	1
1546	NT	11801	\N	0	NT	Nusa Tenggara Timur	1
1547	PA	11801	\N	0	PA	Papua	1
1548	PB	11801	\N	0	PB	Papua Barat	1
1549	RI	11801	\N	0	RI	Riau	1
1550	SR	11801	\N	0	SR	Sulawesi Barat	1
1551	SN	11801	\N	0	SN	Sulawesi Selatan	1
1552	ST	11801	\N	0	ST	Sulawesi Tengah	1
1553	SG	11801	\N	0	SG	Sulawesi Tenggara	1
1554	SA	11801	\N	0	SA	Sulawesi Utara	1
1555	SB	11801	\N	0	SB	Sumatera Barat	1
1556	SS	11801	\N	0	SS	Sumatera Selatan	1
1557	SU	11801	\N	0	SU	Sumatera Utara\t	1
1558	CMX	15401		0	CMX	Ciudad de México	1
1559	AGS	15401		0	AGS	Aguascalientes	1
1560	BCN	15401		0	BCN	Baja California Norte	1
1561	BCS	15401		0	BCS	Baja California Sur	1
1562	CAM	15401		0	CAM	Campeche	1
1563	CHP	15401		0	CHP	Chiapas	1
1564	CHI	15401		0	CHI	Chihuahua	1
1565	COA	15401		0	COA	Coahuila	1
1566	COL	15401		0	COL	Colima	1
1567	DUR	15401		0	DUR	Durango	1
1568	GTO	15401		0	GTO	Guanajuato	1
1569	GRO	15401		0	GRO	Guerrero	1
1570	HGO	15401		0	HGO	Hidalgo	1
1571	JAL	15401		0	JAL	Jalisco	1
1572	MEX	15401		0	MEX	México	1
1573	MIC	15401		0	MIC	Michoacán de Ocampo	1
1574	MOR	15401		0	MOR	Morelos	1
1575	NAY	15401		0	NAY	Nayarit	1
1576	NLE	15401		0	NLE	Nuevo León	1
1577	OAX	15401		0	OAX	Oaxaca	1
1578	PUE	15401		0	PUE	Puebla	1
1579	QRO	15401		0	QRO	Querétaro	1
1580	ROO	15401		0	ROO	Quintana Roo	1
1581	SLP	15401		0	SLP	San Luis Potosí	1
1582	SIN	15401		0	SIN	Sinaloa	1
1583	SON	15401		0	SON	Sonora	1
1584	TAB	15401		0	TAB	Tabasco	1
1585	TAM	15401		0	TAM	Tamaulipas	1
1586	TLX	15401		0	TLX	Tlaxcala	1
1587	VER	15401		0	VER	Veracruz	1
1588	YUC	15401		0	YUC	Yucatán	1
1589	ZAC	15401		0	ZAC	Zacatecas	1
1590	VE-L	23201		0	VE-L	Mérida	1
1591	VE-T	23201		0	VE-T	Trujillo	1
1592	VE-E	23201		0	VE-E	Barinas	1
1593	VE-M	23202		0	VE-M	Miranda	1
1594	VE-W	23202		0	VE-W	Vargas	1
1595	VE-A	23202		0	VE-A	Distrito Capital	1
1596	VE-D	23203		0	VE-D	Aragua	1
1597	VE-G	23203		0	VE-G	Carabobo	1
1598	VE-I	23204		0	VE-I	Falcón	1
1599	VE-K	23204		0	VE-K	Lara	1
1600	VE-U	23204		0	VE-U	Yaracuy	1
1601	VE-F	23205		0	VE-F	Bolívar	1
1602	VE-X	23205		0	VE-X	Amazonas	1
1603	VE-Y	23205		0	VE-Y	Delta Amacuro	1
1604	VE-O	23206		0	VE-O	Nueva Esparta	1
1605	VE-Z	23206		0	VE-Z	Dependencias Federales	1
1606	VE-C	23207		0	VE-C	Apure	1
1607	VE-J	23207		0	VE-J	Guárico	1
1608	VE-H	23207		0	VE-H	Cojedes	1
1609	VE-P	23207		0	VE-P	Portuguesa	1
1610	VE-B	23208		0	VE-B	Anzoátegui	1
1611	VE-N	23208		0	VE-N	Monagas	1
1612	VE-R	23208		0	VE-R	Sucre	1
1613	VE-V	23209		0	VE-V	Zulia	1
1614	VE-S	23209		0	VE-S	Táchira	1
1615	BI0001	6101		0		Bubanza	1
1616	BI0002	6101		0		Gihanga	1
1617	BI0003	6101		0		Musigati	1
1618	BI0004	6101		0		Mpanda	1
1619	BI0005	6101		0		Rugazi	1
1620	BI0006	6102		0		Muha	1
1621	BI0007	6102		0		Mukaza	1
1622	BI0008	6102		0		Ntahangwa	1
1623	BI0009	6103		0		Isale	1
1624	BI0010	6103		0		Kabezi	1
1625	BI0011	6103		0		Kanyosha	1
1626	BI0012	6103		0		Mubimbi	1
1627	BI0013	6103		0		Mugongomanga	1
1628	BI0014	6103		0		Mukike	1
1629	BI0015	6103		0		Mutambu	1
1630	BI0016	6103		0		Mutimbuzi	1
1631	BI0017	6103		0		Nyabiraba	1
1632	BI0018	6104		0		Bururi	1
1633	BI0019	6104		0		Matana	1
1634	BI0020	6104		0		Mugamba	1
1635	BI0021	6104		0		Rutovu	1
1636	BI0022	6104		0		Songa	1
1637	BI0023	6104		0		Vyanda	1
1638	BI0024	6105		0		Cankuzo	1
1639	BI0025	6105		0		Cendajuru	1
1640	BI0026	6105		0		Gisagara	1
1641	BI0027	6105		0		Kigamba	1
1642	BI0028	6105		0		Mishiha	1
1643	BI0029	6106		0		Buganda	1
1644	BI0030	6106		0		Bukinanyana	1
1645	BI0031	6106		0		Mabayi	1
1646	BI0032	6106		0		Mugina	1
1647	BI0033	6106		0		Murwi	1
1648	BI0034	6106		0		Rugombo	1
1649	BI0035	6107		0		Bugendana	1
1650	BI0036	6107		0		Bukirasazi	1
1651	BI0037	6107		0		Buraza	1
1652	BI0038	6107		0		Giheta	1
1653	BI0039	6107		0		Gishubi	1
1654	BI0040	6107		0		Gitega	1
1655	BI0041	6107		0		Itaba	1
1656	BI0042	6107		0		Makebuko	1
1657	BI0043	6107		0		Mutaho	1
1658	BI0044	6107		0		Nyanrusange	1
1659	BI0045	6107		0		Ryansoro	1
1660	BI0046	6108		0		Bugenyuzi	1
1661	BI0047	6108		0		Buhiga	1
1662	BI0048	6108		0		Gihogazi	1
1663	BI0049	6108		0		Gitaramuka	1
1664	BI0050	6108		0		Mutumba	1
1665	BI0051	6108		0		Nyabikere	1
1666	BI0052	6108		0		Shombo	1
1667	BI0053	6109		0		Butaganzwa	1
1668	BI0054	6109		0		Gahombo	1
1669	BI0055	6109		0		Gatara	1
1670	BI0056	6109		0		Kabarore	1
1671	BI0057	6109		0		Kayanza	1
1672	BI0058	6109		0		Matongo	1
1673	BI0059	6109		0		Muhanga	1
1674	BI0060	6109		0		Muruta	1
1675	BI0061	6109		0		Rango	1
1676	BI0062	6110		0		Bugabira	1
1677	BI0063	6110		0		Busoni	1
1678	BI0064	6110		0		Bwambarangwe	1
1679	BI0065	6110		0		Gitobe	1
1680	BI0066	6110		0		Kirundo	1
1681	BI0067	6110		0		Ntega	1
1682	BI0068	6110		0		Vumbi	1
1683	BI0069	6111		0		Kayogoro	1
1684	BI0070	6111		0		Kibago	1
1685	BI0071	6111		0		Mabanda	1
1686	BI0072	6111		0		Makamba	1
1687	BI0073	6111		0		Nyanza-Lac	1
1688	BI0074	6111		0		Vugizo	1
1689	BI0075	6112		0		Bukeye	1
1690	BI0076	6112		0		Kiganda	1
1691	BI0077	6112		0		Mbuye	1
1692	BI0078	6112		0		Muramvya	1
1693	BI0079	6112		0		Rutegama	1
1694	BI0080	6113		0		Buhinyuza	1
1695	BI0081	6113		0		Butihinda	1
1696	BI0082	6113		0		Gashoho	1
1697	BI0083	6113		0		Gasorwe	1
1698	BI0084	6113		0		Giteranyi	1
1699	BI0085	6113		0		Muyinga	1
1700	BI0086	6113		0		Mwakiro	1
1701	BI0087	6114		0		Bisoro	1
1702	BI0088	6114		0		Gisozi	1
1703	BI0089	6114		0		Kayokwe	1
1704	BI0090	6114		0		Ndava	1
1705	BI0091	6114		0		Nyabihanga	1
1706	BI0092	6114		0		Rusaka	1
1707	BI0093	6115		0		Busiga	1
1708	BI0094	6115		0		Gashikanwa	1
1709	BI0095	6115		0		Kiremba	1
1710	BI0096	6115		0		Marangara	1
1711	BI0097	6115		0		Mwumba	1
1712	BI0098	6115		0		Ngozi	1
1713	BI0099	6115		0		Nyamurenza	1
1714	BI0100	6115		0		Ruhororo	1
1715	BI0101	6115		0		Tangara	1
1716	BI0102	6116		0		Bugarama	1
1717	BI0103	6116		0		Burambi	1
1718	BI0104	6116		0		Buyengero	1
1719	BI0105	6116		0		Muhuta	1
1720	BI0106	6116		0		Rumonge	1
1721	BI0107	6117		0		Bukemba	1
1722	BI0108	6117		0		Giharo	1
1723	BI0109	6117		0		Gitanga	1
1724	BI0110	6117		0		Mpinga-Kayove	1
1725	BI0111	6117		0		Musongati	1
1726	BI0112	6117		0		Rutana	1
1727	BI0113	6118		0		Butaganzwa	1
1728	BI0114	6118		0		Butezi	1
1729	BI0115	6118		0		Bweru	1
1730	BI0116	6118		0		Gisuru	1
1731	BI0117	6118		0		Kinyinya	1
1732	BI0118	6118		0		Nyabitsinda	1
1733	BI0119	6118		0		Ruyigi	1
1734	AE-1	22701		0		Abu Dhabi	1
1735	AE-2	22701		0		Dubai	1
1736	AE-3	22701		0		Ajman	1
1737	AE-4	22701		0		Fujairah	1
1738	AE-5	22701		0		Ras al-Khaimah	1
1739	AE-6	22701		0		Sharjah	1
1740	AE-7	22701		0		Umm al-Quwain	1
1741	TR-01	22104	\N	\N	\N	Adana	1
1742	TR-02	22107	\N	\N	\N	Adıyaman	1
1743	TR-03	22103	\N	\N	\N	Afyon	1
1744	TR-04	22107	\N	\N	\N	Ağrı	1
1745	TR-05	22106	\N	\N	\N	Amasya	1
1746	TR-06	22102	\N	\N	\N	Ankara	1
1747	TR-07	22104	\N	\N	\N	Antalya	1
1748	TR-08	22106	\N	\N	\N	Artvin	1
1749	TR-09	22103	\N	\N	\N	Aydın	1
1750	TR-10	22101	\N	\N	\N	Balıkesir	1
1751	TR-11	22101	\N	\N	\N	Bilecik	1
1752	TR-12	22107	\N	\N	\N	Bingöl	1
1753	TR-13	22107	\N	\N	\N	Bitlis	1
1754	TR-14	22106	\N	\N	\N	Bolu	1
1755	TR-15	22104	\N	\N	\N	Burdur	1
1756	TR-16	22101	\N	\N	\N	Bursa	1
1757	TR-17	22101	\N	\N	\N	Çanakkale	1
1758	TR-18	22102	\N	\N	\N	Çankırı	1
1759	TR-19	22106	\N	\N	\N	Çorum	1
1760	TR-20	22104	\N	\N	\N	Denizli	1
1761	TR-21	22105	\N	\N	\N	Diyarbakır	1
1762	TR-22	22101	\N	\N	\N	Edirne	1
1763	TR-23	22107	\N	\N	\N	Elazığ	1
1764	TR-24	22107	\N	\N	\N	Erzincan	1
1765	TR-25	22107	\N	\N	\N	Erzurum	1
1766	TR-26	22102	\N	\N	\N	Eskişehir	1
1767	TR-27	22105	\N	\N	\N	Gaziantep	1
1768	TR-28	22106	\N	\N	\N	Giresun	1
1769	TR-29	22106	\N	\N	\N	Gümüşhane	1
1770	TR-30	22107	\N	\N	\N	Hakkari	1
1771	TR-31	22104	\N	\N	\N	Hatay	1
1772	TR-32	22104	\N	\N	\N	Isparta	1
1773	TR-33	22104	\N	\N	\N	İçel	1
1774	TR-34	22101	\N	\N	\N	İstanbul	1
1775	TR-35	22103	\N	\N	\N	İzmir	1
1776	TR-36	22107	\N	\N	\N	Kars	1
1777	TR-37	22106	\N	\N	\N	Kastamonu	1
1778	TR-38	22102	\N	\N	\N	Kayseri	1
1779	TR-39	22101	\N	\N	\N	Kırklareli	1
1780	TR-40	22102	\N	\N	\N	Kırşehir	1
1781	TR-41	22101	\N	\N	\N	Kocaeli	1
1782	TR-42	22102	\N	\N	\N	Konya	1
1783	TR-43	22103	\N	\N	\N	Kütahya	1
1784	TR-44	22107	\N	\N	\N	Malatya	1
1785	TR-45	22103	\N	\N	\N	Manisa	1
1786	TR-46	22104	\N	\N	\N	Kahramanmaraş	1
1787	TR-47	22105	\N	\N	\N	Mardin	1
1788	TR-48	22103	\N	\N	\N	Muğla	1
1789	TR-49	22107	\N	\N	\N	Muş	1
1790	TR-50	22102	\N	\N	\N	Nevşehir	1
1791	TR-51	22102	\N	\N	\N	Niğde	1
1792	TR-52	22106	\N	\N	\N	Ordu	1
1793	TR-53	22106	\N	\N	\N	Rize	1
1794	TR-54	22101	\N	\N	\N	Sakarya	1
1795	TR-55	22106	\N	\N	\N	Samsun	1
1796	TR-56	22105	\N	\N	\N	Siirt	1
1797	TR-57	22106	\N	\N	\N	Sinop	1
1798	TR-58	22102	\N	\N	\N	Sivas	1
1799	TR-59	22101	\N	\N	\N	Tekirdağ	1
1800	TR-60	22106	\N	\N	\N	Tokat	1
1801	TR-61	22106	\N	\N	\N	Trabzon	1
1802	TR-62	22107	\N	\N	\N	Tunceli	1
1803	TR-63	22105	\N	\N	\N	Şanlıurfa	1
1804	TR-63	22103	\N	\N	\N	Uşak	1
1805	TR-65	22107	\N	\N	\N	Van	1
1806	TR-66	22102	\N	\N	\N	Yozgat	1
1807	TR-67	22106	\N	\N	\N	Zonguldak	1
1808	TR-68	22102	\N	\N	\N	Aksaray	1
1809	TR-69	22106	\N	\N	\N	Bayburt	1
1810	TR-70	22102	\N	\N	\N	Karaman	1
1811	TR-71	22102	\N	\N	\N	Kırıkkale	1
1812	TR-72	22105	\N	\N	\N	Batman	1
1813	TR-73	22105	\N	\N	\N	Şırnak	1
1814	TR-74	22106	\N	\N	\N	Bartın	1
1815	TR-75	22107	\N	\N	\N	Ardahan	1
1816	TR-76	22107	\N	\N	\N	Iğdır	1
1817	TR-77	22101	\N	\N	\N	Yalova	1
1818	TR-78	22106	\N	\N	\N	Karabük	1
1819	TR-79	22105	\N	\N	\N	Kilis	1
1820	TR-80	22104	\N	\N	\N	Osmaniye	1
1821	TR-81	22106	\N	\N	\N	Düzce	1
1822	CU-PRI	7701	\N	\N	\N	Pinar del Rio	1
1823	CU-ART	7701	\N	\N	\N	Artemisa	1
1824	CU-HAB	7701	\N	\N	\N	La Habana	1
1825	CU-MYB	7701	\N	\N	\N	Mayabeque	1
1826	CU-MTZ	7701	\N	\N	\N	Matanzas	1
1827	CU-IJV	7701	\N	\N	\N	Isla de la Juventud	1
1828	CU-VLC	7702	\N	\N	\N	Villa Calra	1
1829	CU-CFG	7702	\N	\N	\N	Cienfuegos	1
1830	CU-SSP	7702	\N	\N	\N	Sancti Spiritus	1
1831	CU-CAV	7702	\N	\N	\N	Ciego de Avila	1
1832	CU-CMG	7702	\N	\N	\N	Camagüey	1
1833	CU-LTU	7703	\N	\N	\N	Las Tunas	1
1834	CU-GRM	7703	\N	\N	\N	Granma	1
1835	CU-SCU	7703	\N	\N	\N	Santiago de Cuba	1
1836	CU-GTM	7703	\N	\N	\N	Guantanamo	1
1837	CU-HLG	7703	\N	\N	\N	Holguin	1
\.


--
-- Data for Name: llx_c_ecotaxe; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_ecotaxe (rowid, code, label, price, organization, fk_pays, active) FROM stdin;
1	25040	PETIT APPAREILS MENAGERS	0.25000000	Eco-systèmes	1	1
2	25050	TRES PETIT APPAREILS MENAGERS	0.08000000	Eco-systèmes	1	1
3	32070	ECRAN POIDS < 5 KG	2.08000000	Eco-systèmes	1	1
4	32080	ECRAN POIDS > 5 KG	1.25000000	Eco-systèmes	1	1
5	32051	ORDINATEUR PORTABLE	0.42000000	Eco-systèmes	1	1
6	32061	TABLETTE INFORMATIQUE	0.84000000	Eco-systèmes	1	1
7	36011	ORDINATEUR FIXE (UC)	1.15000000	Eco-systèmes	1	1
8	36021	IMPRIMANTES	0.83000000	Eco-systèmes	1	1
9	36030	IT (INFORMATIQUE ET TELECOMS)	0.83000000	Eco-systèmes	1	1
10	36040	PETIT IT (CLAVIERS / SOURIS)	0.08000000	Eco-systèmes	1	1
11	36050	TELEPHONIE MOBILE	0.02000000	Eco-systèmes	1	1
12	36060	CONNECTIQUE CABLES	0.02000000	Eco-systèmes	1	1
13	45010	GROS MATERIEL GRAND PUBLIC (TELEAGRANDISSEURS)	1.67000000	Eco-systèmes	1	1
14	45020	MOYEN MATERIEL GRAND PUBLIC (LOUPES ELECTRONIQUES)	0.42000000	Eco-systèmes	1	1
15	45030	PETIT MATERIEL GRAND PUBLIC (VIE QUOTIDIENNE)	0.08000000	Eco-systèmes	1	1
16	75030	JOUETS < 0,5 KG	0.08000000	Eco-systèmes	1	1
17	75040	JOUETS ENTRE 0,5 KG ET 10 KG	0.17000000	Eco-systèmes	1	1
18	74050	JOUETS > 10 KG	1.67000000	Eco-systèmes	1	1
19	85010	EQUIPEMENT MEDICAL < 0,5 KG	0.08000000	Eco-systèmes	1	1
\.


--
-- Data for Name: llx_c_effectif; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_effectif (id, code, libelle, active, module) FROM stdin;
0	EF0	-	1	\N
1	EF1-5	1 - 5	1	\N
2	EF6-10	6 - 10	1	\N
3	EF11-50	11 - 50	1	\N
4	EF51-100	51 - 100	1	\N
5	EF101-500	101 - 500	1	\N
6	EF500-	> 500	1	\N
\.


--
-- Data for Name: llx_c_email_senderprofile; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_email_senderprofile (rowid, entity, private, date_creation, tms, label, email, signature, "position", active) FROM stdin;
\.


--
-- Data for Name: llx_c_email_templates; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_email_templates (rowid, entity, module, type_template, lang, private, fk_user, datec, tms, label, "position", defaultfortype, enabled, active, email_from, email_to, email_tocc, email_tobcc, topic, joinfiles, content, content_lines) FROM stdin;
1	0	banque	thirdparty		0	\N	\N	2026-02-08 16:13:37.669144	(YourSEPAMandate)	1	0	isModEnabled("societe") && isModEnabled("banque") && isModEnabled("prelevement")	0	\N	\N	\N	\N	__(YourSEPAMandate)__	0	__(Hello)__,<br><br>\\n\\n__(FindYourSEPAMandate)__ :<br>\\n__MYCOMPANY_NAME__<br>\\n__MYCOMPANY_FULLADDRESS__<br><br>\\n__(Sincerely)__<br>\\__SENDEREMAIL_SIGNATURE__	\N
2	0	adherent	member		0	\N	\N	2026-02-08 16:13:37.669144	(SendingEmailOnAutoSubscription)	10	0	isModEnabled("adherent")	1	\N	\N	\N	\N	[__[MAIN_INFO_SOCIETE_NOM]__] __(YourMembershipRequestWasReceived)__	0	__(Hello)__ __MEMBER_FULLNAME__,<br><br>\\n\\n__(ThisIsContentOfYourMembershipRequestWasReceived)__<br>\\n<br>__ONLINE_PAYMENT_TEXT_AND_URL__<br>\\n<br><br>\\n__(Sincerely)__<br>__SENDEREMAIL_SIGNATURE__	\N
3	0	adherent	member		0	\N	\N	2026-02-08 16:13:37.669144	(SendingEmailOnMemberValidation)	20	0	isModEnabled("adherent")	1	\N	\N	\N	\N	[__[MAIN_INFO_SOCIETE_NOM]__] __(YourMembershipWasValidated)__	0	__(Hello)__ __MEMBER_FULLNAME__,<br><br>\\n\\n__(ThisIsContentOfYourMembershipWasValidated)__<br>__(FirstName)__ : __MEMBER_FIRSTNAME__<br>__(LastName)__ : __MEMBER_LASTNAME__<br>__(ID)__ : __MEMBER_ID__<br>\\n<br>__ONLINE_PAYMENT_TEXT_AND_URL__<br>\\n<br><br>\\n__(Sincerely)__<br>__SENDEREMAIL_SIGNATURE__	\N
4	0	adherent	member		0	\N	\N	2026-02-08 16:13:37.669144	(SendingEmailOnNewSubscription)	30	0	isModEnabled("adherent")	1	\N	\N	\N	\N	[__[MAIN_INFO_SOCIETE_NOM]__] __(YourSubscriptionWasRecorded)__	1	__(Hello)__ __MEMBER_FULLNAME__,<br><br>\\n\\n__(ThisIsContentOfYourSubscriptionWasRecorded)__<br>\\n\\n<br><br>\\n__(Sincerely)__<br>__SENDEREMAIL_SIGNATURE__	\N
5	0	adherent	member		0	\N	\N	2026-02-08 16:13:37.669144	(SendingReminderForExpiredSubscription)	40	0	isModEnabled("adherent")	1	\N	\N	\N	\N	[__[MAIN_INFO_SOCIETE_NOM]__] __(SubscriptionReminderEmail)__	0	__(Hello)__ __MEMBER_FULLNAME__,<br><br>\\n\\n__(ThisIsContentOfSubscriptionReminderEmail)__<br>\\n<br>__ONLINE_PAYMENT_TEXT_AND_URL__<br>\\n<br><br>\\n__(Sincerely)__<br>__SENDEREMAIL_SIGNATURE__	\N
6	0	adherent	member		0	\N	\N	2026-02-08 16:13:37.669144	(SendingEmailOnCancelation)	50	0	isModEnabled("adherent")	1	\N	\N	\N	\N	[__[MAIN_INFO_SOCIETE_NOM]__] __(YourMembershipWasCanceled)__	0	__(Hello)__ __MEMBER_FULLNAME__,<br><br>\\n\\n__(YourMembershipWasCanceled)__<br>\\n<br><br>\\n__(Sincerely)__<br>__SENDEREMAIL_SIGNATURE__	\N
7	0	adherent	member		0	\N	\N	2026-02-08 16:13:37.669144	(SendingAnEMailToMember)	60	0	isModEnabled("adherent")	1	\N	\N	\N	\N	[__[MAIN_INFO_SOCIETE_NOM]__] __(CardContent)__	0	__(Hello)__,<br><br>\\n\\n__(ThisIsContentOfYourCard)__<br>\\n__(ID)__ : __ID__<br>\\n__(Civility)__ : __MEMBER_CIVILITY__<br>\\n__(Firstname)__ : __MEMBER_FIRSTNAME__<br>\\n__(Lastname)__ : __MEMBER_LASTNAME__<br>\\n__(Fullname)__ : __MEMBER_FULLNAME__<br>\\n__(Company)__ : __MEMBER_COMPANY__<br>\\n__(Address)__ : __MEMBER_ADDRESS__<br>\\n__(Zip)__ : __MEMBER_ZIP__<br>\\n__(Town)__ : __MEMBER_TOWN__<br>\\n__(Country)__ : __MEMBER_COUNTRY__<br>\\n__(Email)__ : __MEMBER_EMAIL__<br>\\n__(Birthday)__ : __MEMBER_BIRTH__<br>\\n__(Photo)__ : __MEMBER_PHOTO__<br>\\n__(Login)__ : __MEMBER_LOGIN__<br>\\n__(Phone)__ : __MEMBER_PHONE__<br>\\n__(PhonePerso)__ : __MEMBER_PHONEPRO__<br>\\n__(PhoneMobile)__ : __MEMBER_PHONEMOBILE__<br><br>\\n__(Sincerely)__<br>__SENDEREMAIL_SIGNATURE__	\N
8	0	recruitment	recruitmentcandidature_send		0	\N	\N	2026-02-08 16:13:37.669144	(AnswerCandidature)	100	0	isModEnabled("recruitment")	1	\N	\N	\N	\N	[__[MAIN_INFO_SOCIETE_NOM]__] __(YourCandidature)__	0	__(Hello)__ __CANDIDATE_FULLNAME__,<br><br>\\n\\n__(YourCandidatureAnswerMessage)__<br>__ONLINE_INTERVIEW_SCHEDULER_TEXT_AND_URL__\\n<br><br>\\n__(Sincerely)__<br>__SENDEREMAIL_SIGNATURE__	\N
9	0		conferenceorbooth		0	\N	\N	2026-02-08 16:13:37.669144	(EventOrganizationEmailAskConf)	10	0	1	1	\N	\N	\N	\N	[__[MAIN_INFO_SOCIETE_NOM]__] __(EventOrganizationEmailAskConf)__	\N	__(Hello)__,<br /><br />__(OrganizationEventConfRequestWasReceived)__<br /><br /><br />__(Sincerely)__<br />__SENDEREMAIL_SIGNATURE__	\N
10	0		conferenceorbooth		0	\N	\N	2026-02-08 16:13:37.669144	(EventOrganizationEmailAskBooth)	20	0	1	1	\N	\N	\N	\N	[__[MAIN_INFO_SOCIETE_NOM]__] __(EventOrganizationEmailAskBooth)__	\N	__(Hello)__,<br /><br />__(OrganizationEventBoothRequestWasReceived)__<br /><br /><br />__(Sincerely)__<br />__SENDEREMAIL_SIGNATURE__	\N
11	0		conferenceorbooth		0	\N	\N	2026-02-08 16:13:37.669144	(EventOrganizationEmailBoothPayment)	30	0	1	1	\N	\N	\N	\N	[__[MAIN_INFO_SOCIETE_NOM]__] __(EventOrganizationEmailBoothPayment)__	\N	__(Hello)__,<br /><br />__(OrganizationEventPaymentOfBoothWasReceived)__<br /><br /><br />__(Sincerely)__<br />__SENDEREMAIL_SIGNATURE__	\N
12	0		conferenceorbooth		0	\N	\N	2026-02-08 16:13:37.669144	(EventOrganizationEmailRegistrationPayment)	40	0	1	1	\N	\N	\N	\N	[__[MAIN_INFO_SOCIETE_NOM]__] __(EventOrganizationEmailRegistrationPayment)__	\N	__(Hello)__,<br /><br />__(OrganizationEventPaymentOfRegistrationWasReceived)__<br /><br />__(Sincerely)__<br />__SENDEREMAIL_SIGNATURE__	\N
13	0		conferenceorbooth		0	\N	\N	2026-02-08 16:13:37.669144	(EventOrganizationMassEmailAttendees)	50	0	1	1	\N	\N	\N	\N	[__[MAIN_INFO_SOCIETE_NOM]__] __(EventOrganizationMassEmailAttendees)__	\N	__(Hello)__,<br /><br />__(OrganizationEventBulkMailToAttendees)__<br /><br />__(Sincerely)__<br />__SENDEREMAIL_SIGNATURE__	\N
14	0		conferenceorbooth		0	\N	\N	2026-02-08 16:13:37.669144	(EventOrganizationMassEmailSpeakers)	60	0	1	1	\N	\N	\N	\N	[__[MAIN_INFO_SOCIETE_NOM]__] __(EventOrganizationMassEmailSpeakers)__	\N	__(Hello)__,<br /><br />__(OrganizationEventBulkMailToSpeakers)__<br /><br />__(Sincerely)__<br />__SENDEREMAIL_SIGNATURE__	\N
15	0	partnership	partnership_send		0	\N	\N	2026-02-08 16:13:37.669144	(SendingEmailOnPartnershipWillSoonBeCanceled)	100	0	1	1	\N	\N	\N	\N	[__[MAIN_INFO_SOCIETE_NOM]__] - __(YourPartnershipWillSoonBeCanceledTopic)__	0	<body>\\n <p>__(Hello)__,<br><br>\\n__(YourPartnershipWillSoonBeCanceledContent)__</p>\\n<br />\\n\\n<br />\\n\\n            __(Sincerely)__ <br />\\n            __[MAIN_INFO_SOCIETE_NOM]__ <br />\\n </body>\\n	\N
16	0	partnership	partnership_send		0	\N	\N	2026-02-08 16:13:37.669144	(SendingEmailOnPartnershipCanceled)	100	0	1	1	\N	\N	\N	\N	[__[MAIN_INFO_SOCIETE_NOM]__] - __(YourPartnershipCanceledTopic)__	0	<body>\\n <p>__(Hello)__,<br><br>\\n__(YourPartnershipCanceledContent)__</p>\\n<br />\\n\\n<br />\\n\\n            __(Sincerely)__ <br />\\n            __[MAIN_INFO_SOCIETE_NOM]__ <br />\\n </body>\\n	\N
17	0	partnership	partnership_send		0	\N	\N	2026-02-08 16:13:37.669144	(SendingEmailOnPartnershipRefused)	100	0	1	1	\N	\N	\N	\N	[__[MAIN_INFO_SOCIETE_NOM]__] - __(YourPartnershipRefusedTopic)__	0	<body>\\n <p>__(Hello)__,<br><br>\\n__(YourPartnershipRefusedContent)__</p>\\n<br />\\n\\n<br />\\n\\n            __(Sincerely)__ <br />\\n            __[MAIN_INFO_SOCIETE_NOM]__ <br />\\n </body>\\n	\N
18	0	partnership	partnership_send		0	\N	\N	2026-02-08 16:13:37.669144	(SendingEmailOnPartnershipAccepted)	100	0	1	1	\N	\N	\N	\N	[__[MAIN_INFO_SOCIETE_NOM]__] - __(YourPartnershipAcceptedTopic)__	0	<body>\\n <p>__(Hello)__,<br><br>\\n__(YourPartnershipAcceptedContent)__</p>\\n<br />\\n\\n<br />\\n\\n            __(Sincerely)__ <br />\\n            __[MAIN_INFO_SOCIETE_NOM]__ <br />\\n </body>\\n	\N
19	0	supplier_invoice	invoice_supplier_send		0	\N	\N	2026-02-08 16:13:37.669144	(SendingReminderEmailOnUnpaidSupplierInvoice)	100	0	isModEnabled("supplier_invoice")	1	\N	\N	\N	\N	[__[MAIN_INFO_SOCIETE_NOM]__] - __(SupplierInvoice)__	0	__(Hello)__,<br /><br />__(SupplierInvoiceUnpaidContent)__<br />__URL_SUPPLIER_INVOICE__<br /><br />__(Sincerely)__<br />__SENDEREMAIL_SIGNATURE__	\N
\.


--
-- Data for Name: llx_c_field_list; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_field_list (rowid, tms, element, entity, name, alias, title, align, sort, search, visible, enabled, rang) FROM stdin;
\.


--
-- Data for Name: llx_c_format_cards; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_format_cards (rowid, code, name, paper_size, orientation, metric, leftmargin, topmargin, nx, ny, spacex, spacey, width, height, font_size, custom_x, custom_y, active) FROM stdin;
1	5160	Avery-5160, WL-875WX	letter	P	mm	5.58165000	12.70000000	3	10	3.55600000	0.00000000	65.87490000	25.40000000	7	0.00000000	0.00000000	1
2	5161	Avery-5161, WL-75WX	letter	P	mm	4.44500000	12.70000000	2	10	3.96800000	0.00000000	101.60000000	25.40000000	7	0.00000000	0.00000000	1
3	5162	Avery-5162, WL-100WX	letter	P	mm	3.87350000	22.35200000	2	7	4.95400000	0.00000000	101.60000000	33.78100000	8	0.00000000	0.00000000	1
4	5163	Avery-5163, WL-125WX	letter	P	mm	4.57200000	12.70000000	2	5	3.55600000	0.00000000	101.60000000	50.80000000	10	0.00000000	0.00000000	1
5	5164	Avery-5164 (inch)	letter	P	in	0.14800000	0.50000000	2	3	0.20310000	0.00000000	4.00000000	3.33000000	12	0.00000000	0.00000000	0
6	8600	Avery-8600	letter	P	mm	7.10000000	19.00000000	3	10	9.50000000	3.10000000	66.60000000	25.40000000	7	0.00000000	0.00000000	1
7	99012	DYMO 99012 89*36mm	custom	L	mm	1.00000000	1.00000000	1	1	0.00000000	0.00000000	36.00000000	89.00000000	10	36.00000000	89.00000000	1
8	99014	DYMO 99014 101*54mm	custom	L	mm	1.00000000	1.00000000	1	1	0.00000000	0.00000000	54.00000000	101.00000000	10	54.00000000	101.00000000	1
9	AVERYC32010	Avery-C32010	A4	P	mm	15.00000000	13.00000000	2	5	10.00000000	0.00000000	85.00000000	54.00000000	10	0.00000000	0.00000000	1
10	CARD	Dolibarr Business cards	A4	P	mm	15.00000000	15.00000000	2	5	0.00000000	0.00000000	85.00000000	54.00000000	10	0.00000000	0.00000000	1
11	L7163	Avery-L7163	A4	P	mm	5.00000000	15.00000000	2	7	2.50000000	0.00000000	99.10000000	38.10000000	8	0.00000000	0.00000000	1
\.


--
-- Data for Name: llx_c_forme_juridique; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_forme_juridique (rowid, code, fk_pays, libelle, isvatexempted, active, module, "position") FROM stdin;
1	0	0	-	0	1	\N	0
2	2301	23	Monotributista	0	1	\N	0
3	2302	23	Sociedad Civil	0	1	\N	0
4	2303	23	Sociedades Comerciales	0	1	\N	0
5	2304	23	Sociedades de Hecho	0	1	\N	0
6	2305	23	Sociedades Irregulares	0	1	\N	0
7	2306	23	Sociedad Colectiva	0	1	\N	0
8	2307	23	Sociedad en Comandita Simple	0	1	\N	0
9	2308	23	Sociedad de Capital e Industria	0	1	\N	0
10	2309	23	Sociedad Accidental o en participación	0	1	\N	0
11	2310	23	Sociedad de Responsabilidad Limitada	0	1	\N	0
12	2311	23	Sociedad Anónima	0	1	\N	0
13	2312	23	Sociedad Anónima con Participación Estatal Mayoritaria	0	1	\N	0
14	2313	23	Sociedad en Comandita por Acciones (arts. 315 a 324, LSC)	0	1	\N	0
15	4100	41	GmbH - Gesellschaft mit beschränkter Haftung	0	1	\N	0
16	4101	41	GesmbH - Gesellschaft mit beschränkter Haftung	0	1	\N	0
17	4102	41	AG - Aktiengesellschaft	0	1	\N	0
18	4103	41	EWIV - Europäische wirtschaftliche Interessenvereinigung	0	1	\N	0
19	4104	41	KEG - Kommanditerwerbsgesellschaft	0	1	\N	0
20	4105	41	OEG - Offene Erwerbsgesellschaft	0	1	\N	0
21	4106	41	OHG - Offene Handelsgesellschaft	0	1	\N	0
22	4107	41	AG & Co KG - Kommanditgesellschaft	0	1	\N	0
23	4108	41	GmbH & Co KG - Kommanditgesellschaft	0	1	\N	0
24	4109	41	KG - Kommanditgesellschaft	0	1	\N	0
25	4110	41	OG - Offene Gesellschaft	0	1	\N	0
26	4111	41	GbR - Gesellschaft nach bürgerlichem Recht	0	1	\N	0
27	4112	41	GesbR - Gesellschaft nach bürgerlichem Recht	0	1	\N	0
28	4113	41	GesnbR - Gesellschaft nach bürgerlichem Recht	0	1	\N	0
29	4114	41	e.U. - eingetragener Einzelunternehmer	0	1	\N	0
30	4115	41	FlexKapG - Flexible Kapitalgesellschaft	0	1	\N	0
31	200	2	Indépendant	0	1	\N	0
32	201	2	SRL - Société à responsabilité limitée	0	1	\N	0
33	202	2	SA   - Société Anonyme	0	1	\N	0
34	203	2	SCRL - Société coopérative à responsabilité limitée	0	1	\N	0
35	204	2	ASBL - Association sans but Lucratif	0	1	\N	0
36	205	2	SCRI - Société coopérative à responsabilité illimitée	0	1	\N	0
37	206	2	SCS  - Société en commandite simple	0	1	\N	0
38	207	2	SCA  - Société en commandite par action	0	1	\N	0
39	208	2	SNC  - Société en nom collectif	0	1	\N	0
40	209	2	GIE  - Groupement d intérêt économique	0	1	\N	0
41	210	2	GEIE - Groupement européen d intérêt économique	0	1	\N	0
42	220	2	Eenmanszaak	0	1	\N	0
43	221	2	BVBA - Besloten vennootschap met beperkte aansprakelijkheid	0	1	\N	0
44	222	2	NV   - Naamloze Vennootschap	0	1	\N	0
45	223	2	CVBA - Coöperatieve vennootschap met beperkte aansprakelijkheid	0	1	\N	0
46	224	2	VZW  - Vereniging zonder winstoogmerk	0	1	\N	0
47	225	2	CVOA - Coöperatieve vennootschap met onbeperkte aansprakelijkheid 	0	1	\N	0
48	226	2	GCV  - Gewone commanditaire vennootschap	0	1	\N	0
49	227	2	Comm.VA - Commanditaire vennootschap op aandelen	0	1	\N	0
50	228	2	VOF  - Vennootschap onder firma	0	1	\N	0
51	229	2	VS0  - Vennootschap met sociaal oogmerk	0	1	\N	0
52	9	1	Organisme de placement collectif en valeurs mobilières sans personnalité morale	0	1	\N	0
53	10	1	Entrepreneur individuel	0	1	\N	0
54	21	1	Indivision	0	1	\N	0
55	22	1	Société créée de fait	0	1	\N	0
56	23	1	Société en participation	0	1	\N	0
57	24	1	Fiducie	0	1	\N	0
58	27	1	Paroisse hors zone concordataire	0	1	\N	0
59	28	1	Assujetti unique à la TVA	0	1	\N	0
60	29	1	Autre groupement de droit privé non doté de la personnalité morale	0	1	\N	0
61	31	1	Personne morale de droit étranger, immatriculée au RCS	0	1	\N	0
62	32	1	Personne morale de droit étranger, non immatriculée au RCS	0	1	\N	0
63	41	1	Etablissement public ou régie à caractère industriel ou commercial	0	1	\N	0
64	51	1	Société coopérative commerciale particulière	0	1	\N	0
65	52	1	Société en nom collectif	0	1	\N	0
66	53	1	Société en commandite	0	1	\N	0
67	54	1	Société à responsabilité limitée (SARL)	0	1	\N	0
68	55	1	Société anonyme à conseil d'administration	0	1	\N	0
69	56	1	Société anonyme à directoire	0	1	\N	0
70	57	1	Société par actions simplifiée (SAS)	0	1	\N	0
71	58	1	Société européenne	0	1	\N	0
72	61	1	Caisse d'épargne et de prévoyance	0	1	\N	0
73	62	1	Groupement d'intérêt économique (GIE)	0	1	\N	0
74	63	1	Société coopérative agricole	0	1	\N	0
75	64	1	Société d'assurance mutuelle	0	1	\N	0
76	65	1	Société civile	0	1	\N	0
77	66	1	Société publiques locales	0	1	\N	0
78	69	1	Autre personne morale de droit privé inscrite au RCS	0	1	\N	0
79	71	1	Administration de l état	0	1	\N	0
80	72	1	Collectivité territoriale	0	1	\N	0
81	73	1	Etablissement public administratif	0	1	\N	0
82	74	1	Personne morale de droit public administratif	0	1	\N	0
83	81	1	Organisme gérant régime de protection social à adhésion obligatoire	0	1	\N	0
84	82	1	Organisme mutualiste	0	1	\N	0
85	83	1	Comité d entreprise	0	1	\N	0
86	84	1	Organisme professionnel	0	1	\N	0
87	85	1	Organisme de retraite à adhésion non obligatoire	0	1	\N	0
88	91	1	Syndicat de propriétaires	0	1	\N	0
89	92	1	Association loi 1901 ou assimilé	0	1	\N	0
90	93	1	Fondation	0	1	\N	0
91	99	1	Autre personne morale de droit privé	0	1	\N	0
92	500	5	GmbH - Gesellschaft mit beschränkter Haftung	0	1	\N	0
93	501	5	AG - Aktiengesellschaft 	0	1	\N	0
94	502	5	GmbH&Co. KG - Gesellschaft mit beschränkter Haftung & Compagnie Kommanditgesellschaft	0	1	\N	0
95	503	5	Gewerbe - Personengesellschaft	0	1	\N	0
96	504	5	UG - Unternehmergesellschaft -haftungsbeschränkt-	0	1	\N	0
97	505	5	GbR - Gesellschaft des bürgerlichen Rechts	0	1	\N	0
98	506	5	KG - Kommanditgesellschaft	0	1	\N	0
99	507	5	Ltd. - Limited Company	0	1	\N	0
100	508	5	OHG - Offene Handelsgesellschaft	0	1	\N	0
101	509	5	eG - eingetragene Genossenschaft	0	1	\N	0
102	510	5	e.V. - eingetragener Verein	0	1	\N	0
103	8001	80	Aktieselvskab A/S	0	1	\N	0
104	8002	80	Anparts Selvskab ApS	0	1	\N	0
105	8003	80	Personlig ejet selvskab	0	1	\N	0
106	8004	80	Iværksætterselvskab IVS	0	1	\N	0
107	8005	80	Interessentskab I/S	0	1	\N	0
108	8006	80	Holdingselskab	0	1	\N	0
109	8007	80	Selskab Med Begrænset Hæftelse SMBA	0	1	\N	0
110	8008	80	Kommanditselskab K/S	0	1	\N	0
111	8009	80	SPE-selskab	0	1	\N	0
112	8010	80	Forening med begrænset ansvar (f.m.b.a.)	0	1	\N	0
113	8011	80	Frivillig forening	0	1	\N	0
114	8012	80	Almindelig forening	0	1	\N	0
115	8013	80	Andelsboligforening	0	1	\N	0
116	8014	80	Særlig forening	0	1	\N	0
117	10201	102	Ατομική επιχείρηση	0	1	\N	0
118	10202	102	Εταιρική  επιχείρηση	0	1	\N	0
119	10203	102	Ομόρρυθμη Εταιρεία Ο.Ε	0	1	\N	0
120	10204	102	Ετερόρρυθμη Εταιρεία Ε.Ε	0	1	\N	0
121	10205	102	Εταιρεία Περιορισμένης Ευθύνης Ε.Π.Ε	0	1	\N	0
122	10206	102	Ανώνυμη Εταιρεία Α.Ε	0	1	\N	0
123	10207	102	Ανώνυμη ναυτιλιακή εταιρεία Α.Ν.Ε	0	1	\N	0
124	10208	102	Συνεταιρισμός	0	1	\N	0
125	10209	102	Συμπλοιοκτησία	0	1	\N	0
126	301	3	Società semplice	0	1	\N	0
127	302	3	Società in nome collettivo s.n.c.	0	1	\N	0
128	303	3	Società in accomandita semplice s.a.s.	0	1	\N	0
129	304	3	Società per azioni s.p.a.	0	1	\N	0
130	305	3	Società a responsabilità limitata s.r.l.	0	1	\N	0
131	306	3	Società in accomandita per azioni s.a.p.a.	0	1	\N	0
132	307	3	Società cooperativa a r.l.	0	1	\N	0
133	308	3	Società consortile	0	1	\N	0
134	309	3	Società europea	0	1	\N	0
135	310	3	Società cooperativa europea	0	1	\N	0
136	311	3	Società unipersonale	0	1	\N	0
137	312	3	Società di professionisti	0	1	\N	0
138	313	3	Società di fatto	0	1	\N	0
139	315	3	Società apparente	0	1	\N	0
140	316	3	Impresa individuale 	0	1	\N	0
141	317	3	Impresa coniugale	0	1	\N	0
142	318	3	Impresa familiare	0	1	\N	0
143	319	3	Consorzio cooperativo	0	1	\N	0
144	320	3	Società cooperativa sociale	0	1	\N	0
145	321	3	Società cooperativa di consumo	0	1	\N	0
146	322	3	Società cooperativa agricola	0	1	\N	0
147	323	3	A.T.I. Associazione temporanea di imprese	0	1	\N	0
148	324	3	R.T.I. Raggruppamento temporaneo di imprese	0	1	\N	0
149	325	3	Studio associato	0	1	\N	0
150	600	6	Raison Individuelle	0	1	\N	0
151	601	6	Société Simple	0	1	\N	0
152	602	6	Société en nom collectif	0	1	\N	0
153	603	6	Société en commandite	0	1	\N	0
154	604	6	Société anonyme (SA)	0	1	\N	0
155	605	6	Société en commandite par actions	0	1	\N	0
156	606	6	Société à responsabilité limitée (SARL)	0	1	\N	0
157	607	6	Société coopérative	0	1	\N	0
158	608	6	Association	0	1	\N	0
159	609	6	Fondation	0	1	\N	0
160	700	7	Sole Trader	0	1	\N	0
161	701	7	Partnership	0	1	\N	0
162	702	7	Private Limited Company by shares (LTD)	0	1	\N	0
163	703	7	Public Limited Company	0	1	\N	0
164	704	7	Workers Cooperative	0	1	\N	0
165	705	7	Limited Liability Partnership	0	1	\N	0
166	706	7	Franchise	0	1	\N	0
167	1000	10	Société à responsabilité limitée (SARL)	0	1	\N	0
168	1001	10	Société en Nom Collectif (SNC)	0	1	\N	0
169	1002	10	Société en Commandite Simple (SCS)	0	1	\N	0
170	1003	10	société en participation	0	1	\N	0
171	1004	10	Société Anonyme (SA)	0	1	\N	0
172	1005	10	Société Unipersonnelle à Responsabilité Limitée (SUARL)	0	1	\N	0
173	1006	10	Groupement d'intérêt économique (GEI)	0	1	\N	0
174	1007	10	Groupe de sociétés	0	1	\N	0
175	1701	17	Eenmanszaak	0	1	\N	0
176	1702	17	Maatschap	0	1	\N	0
177	1703	17	Vennootschap onder firma	0	1	\N	0
178	1704	17	Commanditaire vennootschap	0	1	\N	0
179	1705	17	Besloten vennootschap (BV)	0	1	\N	0
180	1706	17	Naamloze Vennootschap (NV)	0	1	\N	0
181	1707	17	Vereniging	0	1	\N	0
182	1708	17	Stichting	0	1	\N	0
183	1709	17	Coöperatie met beperkte aansprakelijkheid (BA)	0	1	\N	0
184	1710	17	Coöperatie met uitgesloten aansprakelijkheid (UA)	0	1	\N	0
185	1711	17	Coöperatie met wettelijke aansprakelijkheid (WA)	0	1	\N	0
186	1712	17	Onderlinge waarborgmaatschappij	0	1	\N	0
187	401	4	Empresario Individual	0	1	\N	0
188	402	4	Comunidad de Bienes	0	1	\N	0
189	403	4	Sociedad Civil	0	1	\N	0
190	404	4	Sociedad Colectiva	0	1	\N	0
191	405	4	Sociedad Limitada	0	1	\N	0
192	406	4	Sociedad Anónima	0	1	\N	0
193	407	4	Sociedad Comanditaria por Acciones	0	1	\N	0
194	408	4	Sociedad Comanditaria Simple	0	1	\N	0
195	409	4	Sociedad Laboral	0	1	\N	0
196	410	4	Sociedad Cooperativa	0	1	\N	0
197	411	4	Sociedad de Garantía Recíproca	0	1	\N	0
198	412	4	Entidad de Capital-Riesgo	0	1	\N	0
199	413	4	Agrupación de Interés Económico	0	1	\N	0
200	414	4	Sociedad de Inversión Mobiliaria	0	1	\N	0
201	415	4	Agrupación sin Ánimo de Lucro	0	1	\N	0
202	15201	152	Mauritius Private Company Limited By Shares	0	1	\N	0
203	15202	152	Mauritius Company Limited By Guarantee	0	1	\N	0
204	15203	152	Mauritius Public Company Limited By Shares	0	1	\N	0
205	15204	152	Mauritius Foreign Company	0	1	\N	0
206	15205	152	Mauritius GBC1 (Offshore Company)	0	1	\N	0
207	15206	152	Mauritius GBC2 (International Company)	0	1	\N	0
208	15207	152	Mauritius General Partnership	0	1	\N	0
209	15208	152	Mauritius Limited Partnership	0	1	\N	0
210	15209	152	Mauritius Sole Proprietorship	0	1	\N	0
211	15210	152	Mauritius Trusts	0	1	\N	0
212	15401	154	601 - General de Ley Personas Morales	0	1	\N	0
213	15402	154	603 - Personas Morales con Fines no Lucrativos	0	1	\N	0
214	15403	154	605 - Sueldos y Salarios e Ingresos Asimilados a Salarios	0	1	\N	0
215	15404	154	606 - Arrendamiento	0	1	\N	0
216	15405	154	607 - Régimen de Enajenación o Adquisición de Bienes	0	1	\N	0
217	15406	154	608 - Demás ingresos	0	1	\N	0
218	15407	154	610 - Residentes en el Extranjero sin Establecimiento Permanente en México	0	1	\N	0
219	15408	154	611 - Ingresos por Dividendos (socios y accionistas)	0	1	\N	0
220	15409	154	612 - Personas Físicas con Actividades Empresariales y Profesionales	0	1	\N	0
221	15410	154	614 - Ingresos por intereses	0	1	\N	0
222	15411	154	615 - Régimen de los ingresos por obtención de premios	0	1	\N	0
223	15412	154	616 - Sin obligaciones fiscales	0	1	\N	0
224	15413	154	620 - Sociedades Cooperativas de Producción que optan por diferir sus ingresos	0	1	\N	0
225	15414	154	621 - Incorporación Fiscal	0	1	\N	0
226	15415	154	622 - Actividades Agrícolas, Ganaderas, Silvícolas y Pesqueras	0	1	\N	0
227	15416	154	623 - Opcional para Grupos de Sociedades	0	1	\N	0
228	15417	154	624 - Coordinados	0	1	\N	0
229	15418	154	625 - Régimen de las Actividades Empresariales con ingresos a través de Plataformas Tecnológicas	0	1	\N	0
230	15419	154	626 - Régimen Simplificado de Confianza	0	1	\N	0
231	14001	140	Entreprise individuelle	0	1	\N	0
232	14002	140	Société en nom collectif (SENC)	0	1	\N	0
233	14003	140	Société en commandite simple (SECS)	0	1	\N	0
234	14004	140	Société en commandite par actions (SECA)	0	1	\N	0
235	14005	140	Société à responsabilité limitée (SARL)	0	1	\N	0
236	14006	140	Société anonyme (SA)	0	1	\N	0
237	14007	140	Société coopérative (SC)	0	1	\N	0
238	14008	140	Société européenne (SE)	0	1	\N	0
239	14009	140	Société à responsabilité limitée simplifiée (SARL-S)	0	1	\N	0
240	18801	188	AFJ - Alte forme juridice	0	1	\N	0
241	18802	188	ASF - Asociatie familialã	0	1	\N	0
242	18803	188	CON - Concesiune	0	1	\N	0
243	18804	188	CRL - Soc civilã profesionala cu pers. juridica si rãspundere limitata (SPRL)	0	1	\N	0
244	18805	188	INC - Închiriere	0	1	\N	0
245	18806	188	LOC - Locaţie de gestiune	0	1	\N	0
246	18807	188	OC1 - Organizaţie cooperatistã meşteşugãreascã	0	1	\N	0
247	18808	188	OC2 - Organizaţie cooperatistã de consum	0	1	\N	0
248	18809	188	OC3 - Organizaţie cooperatistã de credit	0	1	\N	0
249	18810	188	PFA - Persoanã fizicã independentã	0	1	\N	0
250	18811	188	RA - Regie autonomã	0	1	\N	0
251	18812	188	SA - Societate comercialã pe acţiuni	0	1	\N	0
252	18813	188	SCS - Societate comercialã în comanditã simplã	0	1	\N	0
253	18814	188	SNC - Societate comercialã în nume colectiv	0	1	\N	0
254	18815	188	SPI - Societate profesionala practicieni in insolventa (SPPI)	0	1	\N	0
255	18816	188	SRL - Societate comercialã cu rãspundere limitatã	0	1	\N	0
256	18817	188	URL - Intreprindere profesionala unipersonala cu rãspundere limitata (IPURL)	0	1	\N	0
257	17801	178	Empresa individual	0	1	\N	0
258	17802	178	Asociación General	0	1	\N	0
259	17803	178	Sociedad de Responsabilidad Limitada	0	1	\N	0
260	17804	178	Sociedad Civil	0	1	\N	0
261	17805	178	Sociedad Anónima	0	1	\N	0
262	1300	13	Personne physique	0	1	\N	0
263	1301	13	Société à responsabilité limitée (SARL)	0	1	\N	0
264	1302	13	Entreprise unipersonnelle à responsabilité limitée (EURL)	0	1	\N	0
265	1303	13	Société en Nom Collectif (SNC)	0	1	\N	0
266	1304	13	société par actions (SPA)	0	1	\N	0
267	1305	13	Société en Commandite Simple (SCS)	0	1	\N	0
268	1306	13	Société en commandite par actions (SCA)	0	1	\N	0
269	1307	13	Société en participation	0	1	\N	0
270	1308	13	Groupe de sociétés	0	1	\N	0
271	2001	20	Aktiebolag	0	1	\N	0
272	2002	20	Publikt aktiebolag (AB publ)	0	1	\N	0
273	2003	20	Ekonomisk förening (ek. för.)	0	1	\N	0
274	2004	20	Bostadsrättsförening (BRF)	0	1	\N	0
275	2005	20	Hyresrättsförening (HRF)	0	1	\N	0
276	2006	20	Kooperativ	0	1	\N	0
277	2007	20	Enskild firma (EF)	0	1	\N	0
278	2008	20	Handelsbolag (HB)	0	1	\N	0
279	2009	20	Kommanditbolag (KB)	0	1	\N	0
280	2010	20	Enkelt bolag	0	1	\N	0
281	2011	20	Ideell förening	0	1	\N	0
282	2012	20	Stiftelse	0	1	\N	0
283	6100	61	Indépendant - Personne physique	0	1	\N	0
284	6101	61	Société Unipersonnelle	0	1	\N	0
285	6102	61	Société de personne à responsabilité limité (SPRL)	0	1	\N	0
286	6103	61	Société anonyme (SA)	0	1	\N	0
287	6104	61	Société coopérative	0	1	\N	0
288	7601	76	Društvo s ograničenom odgovornošću (d.o.o.)	0	1	\N	0
289	7602	76	Jednostavno društvo s ograničenom odgovornošću (j.d.o.o.)	0	1	\N	0
290	7603	76	Dioničko društvo (d.d.)	0	1	\N	0
291	7604	76	Obrt	0	1	\N	0
292	7605	76	Javno trgovačko društvo (j.t.d.)	0	1	\N	0
293	7606	76	Komanditno društvo (k.d.)	0	1	\N	0
294	7607	76	Gospodarsko interesno udruženje (GIU)	0	1	\N	0
295	7608	76	Predstavništvo	0	1	\N	0
296	7609	76	Državno tijelo	0	1	\N	0
297	7610	76	Kućna radinost	0	1	\N	0
298	7611	76	Sporedno zanimanje	0	1	\N	0
299	12301	123	株式会社	0	1	\N	0
300	12302	123	有限会社	0	1	\N	0
301	12303	123	合資会社	0	1	\N	0
302	12304	123	合名会社	0	1	\N	0
303	12305	123	相互会社	0	1	\N	0
304	12306	123	医療法人	0	1	\N	0
305	12307	123	財団法人	0	1	\N	0
306	12308	123	社団法人	0	1	\N	0
307	12309	123	社会福祉法人	0	1	\N	0
308	12310	123	学校法人	0	1	\N	0
309	12311	123	特定非営利活動法人	0	1	\N	0
310	12312	123	ＮＰＯ法人	0	1	\N	0
311	12313	123	商工組合	0	1	\N	0
312	12314	123	林業組合	0	1	\N	0
313	12315	123	同業組合	0	1	\N	0
314	12316	123	農業協同組合	0	1	\N	0
315	12317	123	漁業協同組合	0	1	\N	0
316	12318	123	農事組合法人	0	1	\N	0
317	12319	123	生活互助会	0	1	\N	0
318	12320	123	協業組合	0	1	\N	0
319	12321	123	協同組合	0	1	\N	0
320	12322	123	生活協同組合	0	1	\N	0
321	12323	123	連合会	0	1	\N	0
322	12324	123	組合連合会	0	1	\N	0
323	12325	123	協同組合連合会	0	1	\N	0
324	12329	123	一般社団法人	0	1	\N	0
325	12330	123	公益社団法人	0	1	\N	0
326	12331	123	一般財団法人	0	1	\N	0
327	12332	123	公益財団法人	0	1	\N	0
328	12333	123	合同会社	0	1	\N	0
329	12399	123	個人又はその他の法人	0	1	\N	0
\.


--
-- Data for Name: llx_c_holiday_types; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_holiday_types (rowid, entity, code, label, affect, delay, newbymonth, fk_country, block_if_negative, sortorder, active) FROM stdin;
1	1	LEAVE_SICK	Sick leave	0	0	0.00000	\N	0	1	1
2	1	LEAVE_OTHER	Other leave	0	0	0.00000	\N	0	2	1
3	1	LEAVE_PAID	Paid vacation	1	7	0.00000	\N	0	3	0
4	1	LEAVE_RTT_FR	RTT	1	7	0.83000	1	0	4	1
5	1	LEAVE_PAID_FR	Paid vacation	1	30	2.08334	1	0	5	1
6	1	5D1Y	Κανονική άδεια(Πενθήμερο 1ο έτος)	1	0	1.66700	102	0	6	1
7	1	5D2Y	Κανονική άδεια(Πενθήμερο 2ο έτος)	1	0	1.75000	102	0	7	1
8	1	5D3-10Y	Κανονική άδεια(Πενθήμερο 3ο έως 10ο έτος)	1	0	1.83300	102	0	8	1
9	1	5D10-25Y	Κανονική άδεια(Πενθήμερο 10ο έως 25ο έτος)	1	0	2.08300	102	0	9	1
10	1	5D25+Y	Κανονική άδεια(Πενθήμερο 25+ έτη)	1	0	2.16600	102	0	10	1
11	1	6D1Y	Κανονική άδεια(Εξαήμερο 1ο έτος)	1	0	2.00000	102	0	11	1
12	1	6D2Y	Κανονική άδεια(Εξαήμερο 2ο έτος)	1	0	2.08300	102	0	12	1
13	1	6D3-10Y	Κανονική άδεια(Εξαήμερο 3ο έως 10ο έτος)	1	0	2.16600	102	0	13	1
14	1	6D10-25Y	Κανονική άδεια(Εξαήμερο 10ο έως 25ο έτος)	1	0	2.08300	102	0	14	1
15	1	6D25+Y	Κανονική άδεια(Εξαήμερο 25+ έτη)	1	0	2.16600	102	0	15	1
16	1	5D-WED	Πενθήμερη άδεια γάμου(με αποδοχές)	0	0	0.00000	102	0	16	0
17	1	6D-WED	Εξαήμερη άδεια γάμου(με αποδοχές)	0	0	0.00000	102	0	17	0
18	1	7D-AR	Επταήμερη άδεια ιατρικώς υποβοηθούμενης αναπαραγωγής(με αποδοχές)	0	0	0.00000	102	0	18	0
19	1	1D-BC	Μονοήμερη άδεια προγεννητικών εξετάσεων(με αποδοχές)	0	0	0.00000	102	0	19	0
20	1	1D-GYN	Μονοήμερη άδεια γυναικολογικού ελέγχου(με αποδοχές)	0	0	0.00000	102	0	20	0
21	1	149D-ML	Άδεια Μητρότητας (Άδεια κύησης – λοχείας)56 ημέρες πριν-93 ημέρες μετα(με αποδοχές)	0	0	0.00000	102	0	21	0
22	1	14D-PL	14ήμερη Άδεια πατρότητας(με αποδοχές)	0	0	0.00000	102	0	22	0
23	1	1-2H-CC	Άδεια φροντίδας παιδιών (μειωμένο ωράριο  https://www.kepea.gr/aarticle.php?id=1984)	0	0	0.00000	102	0	23	0
24	1	9M-M	Ειδική άδεια προστασίας μητρότητας 9 μηνών(χωρίς αποδοχές)	0	0	0.00000	102	0	24	0
25	1	4M-M	Τετράμηνη γονική Άδεια Ανατροφής Τέκνων(χωρίς αποδοχές)	0	0	0.00000	102	0	25	0
26	1	6-8D-SP	Εξαήμερη ή Οκταήμερη Άδεια για μονογονεϊκές οικογένειες(με αποδοχές)	0	0	0.00000	102	0	26	0
27	1	6-8-14D-FC	Αναρρωτική άδεια (άνευ αποδοχών, 6 ημέρες/έτος για ένα παιδί - 8 ημέρες/έτος για δύο και 14 ημέρες/έτος για τρία ή περισσότερα)	0	0	0.00000	102	0	27	0
28	1	10D-CD	Δεκαήμερη Γονική Άδεια για παιδί με σοβαρά νοσήματα και λόγω νοσηλείας παιδιών(με αποδοχές)	0	0	0.00000	102	0	28	0
29	1	30D-CD	Άδεια λόγω νοσηλείας των παιδιών(έως 30 ημέρες/έτος χωρίς αποδοχές)	0	0	0.00000	102	0	29	0
30	1	5D-CG	Άδεια φροντιστή(έως 5 ημέρες/έτος χωρίς αποδοχές)	0	0	0.00000	102	0	30	0
31	1	2D-CG	Άδεια απουσίας από την εργασία για λόγους ανωτέρας βίας(έως 2 ημέρες/έτος με αποδοχές)	0	0	0.00000	102	0	31	0
32	1	2D-SC	Άδεια για παρακολούθηση σχολικής επίδοσης(έως 2 ημέρες/έτος με αποδοχές)	0	0	0.00000	102	0	32	0
33	1	1D-BD	Μονοήμερη άδεια αιμοδοσίας(με αποδοχές)	0	0	0.00000	102	0	33	0
34	1	22D-BT	Άδεια για μετάγγιση αίματος & αιμοκάθαρση(έως 22 ημέρες/έτος με αποδοχές)	0	0	0.00000	102	0	34	0
35	1	30D-HIV	Άδεια λόγω AIDS(έως ένα (1) μήνα/έτος με αποδοχές)	0	0	0.00000	102	0	35	0
36	1	20D-CD	Άδεια πενθούντων γονέων(20 ημέρες με αποδοχές)	0	0	0.00000	102	0	36	0
37	1	2D-FD	Άδεια λόγω θανάτου συγγενούς(2 ημέρες με αποδοχές)	0	0	0.00000	102	0	37	0
38	1	DIS	Άδειες αναπήρων(30 ημέρες με αποδοχές)	0	0	0.00000	102	0	38	0
39	1	SE	Άδεια εξετάσεων μαθητών, σπουδαστών, φοιτητών(30 ημέρες χωρίς αποδοχές)	0	0	0.00000	102	0	39	0
40	1	NOT PAID	Άδεια άνευ αποδοχών(έως ένα (1) έτος)	0	0	0.00000	102	0	40	0
\.


--
-- Data for Name: llx_c_hrm_department; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_hrm_department (rowid, pos, code, label, active) FROM stdin;
1	5	MANAGEMENT	Management	1
3	15	TRAINING	Training	1
4	20	IT	Inform. Technology (IT)	0
5	25	MARKETING	Marketing	0
6	30	SALES	Sales	1
7	35	LEGAL	Legal	0
8	40	FINANCIAL	Financial accounting	1
9	45	HUMANRES	Human resources	1
10	50	PURCHASING	Purchasing	1
12	60	CUSTOMSERV	Customer service	0
14	70	LOGISTIC	Logistics	1
15	75	CONSTRUCT	Engineering/design	0
16	80	PRODUCTION	Production	1
17	85	QUALITY	Quality assurance	0
\.


--
-- Data for Name: llx_c_hrm_function; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_hrm_function (rowid, pos, code, label, c_level, active) FROM stdin;
1	5	EXECBOARD	Executive board	0	1
2	10	MANAGDIR	Managing director	1	1
3	15	ACCOUNTMANAG	Account manager	0	1
4	20	ENGAGDIR	Engagement director	1	1
5	25	DIRECTOR	Director	1	1
6	30	PROJMANAG	Project manager	0	1
7	35	DEPHEAD	Department head	0	1
8	40	SECRETAR	Secretary	0	1
9	45	EMPLOYEE	Department employee	0	1
\.


--
-- Data for Name: llx_c_hrm_public_holiday; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_hrm_public_holiday (id, entity, fk_country, fk_departement, code, dayrule, day, month, year, active, import_key) FROM stdin;
1	1	0	\N	NEWYEARDAY1		1	1	0	1	\N
2	1	0	\N	LABORDAY1		1	5	0	1	\N
3	1	0	\N	ASSOMPTIONDAY1		15	8	0	1	\N
4	1	0	\N	CHRISTMASDAY1		25	12	0	1	\N
5	1	1	\N	FR-VICTORYDAY		8	5	0	1	\N
6	1	1	\N	FR-NATIONALDAY		14	7	0	1	\N
7	1	1	\N	FR-ASSOMPTION		15	8	0	1	\N
8	1	1	\N	FR-TOUSSAINT		1	11	0	1	\N
9	1	1	\N	FR-ARMISTICE		11	11	0	1	\N
10	1	1	\N	FR-EASTER	eastermonday	0	0	0	1	\N
11	1	1	\N	FR-ASCENSION	ascension	0	0	0	1	\N
12	1	1	\N	FR-PENTECOST	pentecost	0	0	0	1	\N
13	1	2	\N	BE-VICTORYDAY		8	5	0	1	\N
14	1	2	\N	BE-NATIONALDAY		21	7	0	1	\N
15	1	2	\N	BE-ASSOMPTION		15	8	0	1	\N
16	1	2	\N	BE-TOUSSAINT		1	11	0	1	\N
17	1	2	\N	BE-ARMISTICE		11	11	0	1	\N
18	1	2	\N	BE-EASTER	eastermonday	0	0	0	1	\N
19	1	2	\N	BE-ASCENSION	ascension	0	0	0	1	\N
20	1	2	\N	BE-PENTECOST	pentecost	0	0	0	1	\N
21	1	3	\N	IT-LIBEAZIONE		25	4	0	1	\N
22	1	3	\N	IT-EPIPHANY		1	6	0	1	\N
23	1	3	\N	IT-REPUBBLICA		2	6	0	1	\N
24	1	3	\N	IT-TUTTISANTIT		1	11	0	1	\N
25	1	3	\N	IT-IMMACULE		8	12	0	1	\N
26	1	3	\N	IT-SAINTSTEFAN		26	12	0	1	\N
27	1	4	\N	ES-EASTER	easter	0	0	0	1	\N
28	1	4	\N	ES-REYE		1	6	0	1	\N
29	1	4	\N	ES-HISPANIDAD		12	10	0	1	\N
30	1	4	\N	ES-TOUSSAINT		1	11	0	1	\N
31	1	4	\N	ES-CONSTITUIZION		6	12	0	1	\N
32	1	4	\N	ES-IMMACULE		8	12	0	1	\N
33	1	5	\N	DE-NEUJAHR		1	1	0	1	\N
34	1	5	\N	DE-HL3KOEN--TLW		6	1	0	0	\N
35	1	5	\N	DE-INTFRAUENTAG--TLW		8	3	0	0	\N
36	1	5	\N	DE-KARFREITAG	goodfriday	0	0	0	1	\N
37	1	5	\N	DE-OSTERMONTAG	eastermonday	0	0	0	1	\N
38	1	5	\N	DE-TAGDERARBEIT		1	5	0	1	\N
39	1	5	\N	DE-HIMMELFAHRT	ascension	0	0	0	1	\N
40	1	5	\N	DE-PFINGSTEN	pentecotemonday	0	0	0	1	\N
41	1	5	\N	DE-FRONLEICHNAM--TLW	fronleichnam	0	0	0	0	\N
42	1	5	\N	DE-MARIAEHIMMEL--TLW		15	8	0	0	\N
43	1	5	\N	DE-WELTKINDERTAG--TLW		20	9	0	0	\N
44	1	5	\N	DE-TAGDERDEUTEINHEIT		3	10	0	1	\N
45	1	5	\N	DE-REFORMATIONSTAG--TLW		31	10	0	0	\N
46	1	5	\N	DE-ALLERHEILIGEN--TLW		1	11	0	0	\N
47	1	5	\N	DE-WEIHNACHTSTAG1		25	12	0	1	\N
48	1	5	\N	DE-WEIHNACHTSTAG2		26	12	0	1	\N
49	1	41	\N	AT-EASTER	eastermonday	0	0	0	1	\N
50	1	41	\N	AT-ASCENSION	ascension	0	0	0	1	\N
51	1	41	\N	AT-PENTECOST	pentecost	0	0	0	1	\N
52	1	41	\N	AT-FRONLEICHNAM	fronleichnam	0	0	0	1	\N
53	1	41	\N	AT-KONEGIE		1	6	0	1	\N
54	1	41	\N	AT-26OKT		26	10	0	1	\N
55	1	41	\N	AT-TOUSSAINT		1	11	0	1	\N
56	1	41	\N	AT-IMMACULE		8	12	0	1	\N
57	1	41	\N	AT-24DEC		24	12	0	1	\N
58	1	41	\N	AT-SAINTSTEFAN		26	12	0	1	\N
59	1	41	\N	AT-Silvester		31	12	0	1	\N
60	1	102	\N	GR-ΠΡΩΤΟΧΡΟΝΙΑ		1	1	0	1	\N
61	1	102	\N	GR-ΘΕΟΦΑΝΕΙΑ		6	1	0	1	\N
62	1	102	\N	GR-25Η ΜΑΡΤΙΟΥ		25	3	0	1	\N
63	1	102	\N	GR-ΠΡΩΤΟΜΑΓΙΑ		1	5	0	1	\N
64	1	102	\N	GR-ΚΑΘΑΡΑ ΔΕΥΤΕΡΑ	ΚΑΘΑΡΑ_ΔΕΥΤΕΡΑ	0	0	0	1	\N
65	1	102	\N	GR-ΜΕΓΑΛΗ ΠΑΡΑΣΚΕΥΗ	ΜΕΓΑΛΗ_ΠΑΡΑΣΚΕΥΗ	0	0	0	1	\N
66	1	102	\N	GR-ΔΕΥΤΕΡΑ ΤΟΥ ΠΑΣΧΑ	ΔΕΥΤΕΡΑ_ΤΟΥ_ΠΑΣΧΑ	0	0	0	1	\N
67	1	102	\N	GR-ΤΟΥ ΑΓΙΟΥ ΠΝΕΥΜΑΤΟΣ	ΤΟΥ_ΑΓΙΟΥ_ΠΝΕΥΜΑΤΟΣ	0	0	0	1	\N
68	1	102	\N	GR-ΚΟΙΜΗΣΗ ΤΗΣ ΘΕΟΤΟΚΟΥ		15	8	0	1	\N
69	1	102	\N	GR-28Η ΟΚΤΩΒΡΙΟΥ		28	10	0	1	\N
70	1	102	\N	GR-ΧΡΙΣΤΟΥΓΕΝΝΑ		25	12	0	1	\N
71	1	102	\N	GR-ΣΥΝΑΞΗ ΘΕΟΤΟΚΟΥ		26	12	0	1	\N
72	1	117	\N	IN-REPUBLICDAY		26	1	0	1	\N
73	1	117	\N	IN-GANDI		2	10	0	1	\N
\.


--
-- Data for Name: llx_c_incoterms; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_incoterms (rowid, code, label, libelle, active) FROM stdin;
1	EXW	Ex Works	Ex Works, au départ non chargé, non dédouané sortie d'usine (uniquement adapté aux flux domestiques, nationaux)	1
2	FCA	Free Carrier	Free Carrier, marchandises dédouanées et chargées dans le pays de départ, chez le vendeur ou chez le commissionnaire de transport de l'acheteur	1
3	FAS	Free Alongside Ship	Free Alongside Ship, sur le quai du port de départ	1
4	FOB	Free On Board	Free On Board, chargé sur le bateau, les frais de chargement dans celui-ci étant fonction du liner term indiqué par la compagnie maritime (à la charge du vendeur)	1
5	CFR	Cost and Freight	Cost and Freight, chargé dans le bateau, livraison au port de départ, frais payés jusqu'au port d'arrivée, sans assurance pour le transport, non déchargé du navire à destination (les frais de déchargement sont inclus ou non au port d'arrivée)	1
6	CIF	Cost, Insurance, Freight	Cost, Insurance and Freight, chargé sur le bateau, frais jusqu'au port d'arrivée, avec l'assurance marchandise transportée souscrite par le vendeur pour le compte de l'acheteur	1
7	CPT	Carriage Paid To	Carriage Paid To, livraison au premier transporteur, frais jusqu'au déchargement du mode de transport, sans assurance pour le transport	1
8	CIP	Carriage Insurance Paid	Carriage and Insurance Paid to, idem CPT, avec assurance marchandise transportée souscrite par le vendeur pour le compte de l'acheteur	1
9	DAT	Delivered At Terminal	Delivered At Terminal, marchandises (déchargées) livrées sur quai, dans un terminal maritime, fluvial, aérien, routier ou ferroviaire désigné (dédouanement import, et post-acheminement payés par l'acheteur)	1
10	DAP	Delivered At Place	Delivered At Place, marchandises (non déchargées) mises à disposition de l'acheteur dans le pays d'importation au lieu précisé dans le contrat (déchargement, dédouanement import payé par l'acheteur)	1
11	DDP	Delivered Duty Paid	Delivered Duty Paid, marchandises (non déchargées) livrées à destination finale, dédouanement import et taxes à la charge du vendeur ; l'acheteur prend en charge uniquement le déchargement (si exclusion des taxes type TVA, le préciser clairement)	1
12	DPU	Delivered at Place Unloaded	Delivered at Place unloaded	1
\.


--
-- Data for Name: llx_c_input_method; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_input_method (rowid, code, libelle, active, module) FROM stdin;
1	OrderByMail	Courrier	1	\N
2	OrderByFax	Fax	1	\N
3	OrderByEMail	EMail	1	\N
4	OrderByPhone	Téléphone	1	\N
5	OrderByWWW	En ligne	1	\N
\.


--
-- Data for Name: llx_c_input_reason; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_input_reason (rowid, code, label, active, module) FROM stdin;
1	SRC_INTE	Web site	1	\N
2	SRC_CAMP_MAIL	Mailing campaign	1	\N
3	SRC_CAMP_PHO	Phone campaign	1	\N
4	SRC_CAMP_FAX	Fax campaign	0	\N
5	SRC_COMM	Commercial contact	1	\N
6	SRC_SHOP	Shop contact	1	\N
7	SRC_CAMP_EMAIL	EMailing campaign	1	\N
8	SRC_WOM	Word of mouth	1	\N
9	SRC_PARTNER	Partner	1	\N
10	SRC_EMPLOYEE	Employee	1	\N
11	SRC_SPONSORING	Sponsorship	1	\N
12	SRC_CUSTOMER	Incoming contact of a customer	1	\N
\.


--
-- Data for Name: llx_c_invoice_subtype; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_invoice_subtype (rowid, entity, fk_country, code, label, active) FROM stdin;
1	1	102	1.1	Τιμολόγιο Πώλησης	1
2	1	102	1.2	Τιμολόγιο Πώλησης / Ενδοκοινοτικές Παραδόσεις	1
3	1	102	1.3	Τιμολόγιο Πώλησης / Παραδόσεις Τρίτων Χωρών	1
4	1	102	1.4	Τιμολόγιο Πώλησης / Πώληση για Λογαριασμό Τρίτων	0
5	1	102	1.5	Τιμολόγιο Πώλησης / Εκκαθάριση Πωλήσεων Τρίτων - Αμοιβή από Πωλήσεις Τρίτων	0
6	1	102	1.6	Τιμολόγιο Πώλησης / Συμπληρωματικό Παραστατικό	0
7	1	102	2.1	Τιμολόγιο Παροχής	1
8	1	102	2.2	Τιμολόγιο Παροχής / Ενδοκοινοτική Παροχή Υπηρεσιών	1
9	1	102	2.3	Τιμολόγιο Παροχής / Παροχή Υπηρεσιών σε λήπτη Τρίτης Χώρας	1
10	1	102	2.4	Τιμολόγιο Παροχής / Συμπληρωματικό Παραστατικό	0
11	1	102	3.1	Τίτλος Κτήσης (μη υπόχρεος Εκδότης)	0
12	1	102	3.2	Τίτλος Κτήσης (άρνηση έκδοσης από υπόχρεο Εκδότη)	0
13	1	102	6.1	Στοιχείο Αυτοπαράδοσης	0
14	1	102	6.2	Στοιχείο Ιδιοχρησιμοποίησης	0
15	1	102	7.1	Συμβόλαιο - Έσοδο	0
16	1	102	8.1	Ενοίκια - Έσοδο	0
17	1	102	8.2	Ειδικό Στοιχείο – Απόδειξης Είσπραξης Φόρου Διαμονής	0
18	1	102	11.1	ΑΛΠ	1
19	1	102	11.2	ΑΠΥ	1
20	1	102	11.3	Απλοποιημένο Τιμολόγιο	0
21	1	102	11.5	Απόδειξη Λιανικής Πώλησης για Λογ/σμό Τρίτων	0
22	1	102	5.1	Πιστωτικό Τιμολόγιο / Συσχετιζόμενο	0
23	1	102	5.2	Πιστωτικό Τιμολόγιο / Μη Συσχετιζόμενο	1
24	1	102	11.4	Πιστωτικό Στοιχείο Λιανικής	1
\.


--
-- Data for Name: llx_c_lead_status; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_lead_status (rowid, code, label, "position", percent, active) FROM stdin;
1	PROSP	Prospection	10	0.00	1
2	QUAL	Qualification	20	20.00	1
3	PROPO	Proposal	30	40.00	1
4	NEGO	Negotiation	40	60.00	1
5	PENDING	Pending	50	50.00	0
6	WON	Won	60	100.00	1
7	LOST	Lost	70	0.00	1
\.


--
-- Data for Name: llx_c_paiement; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_paiement (id, entity, code, libelle, type, active, accountancy_code, module, "position") FROM stdin;
1	1	TIP	TIP	2	0	\N	\N	0
2	1	VIR	Credit Transfer	2	1	\N	\N	0
3	1	PRE	Direct Debit	2	1	\N	\N	0
4	1	LIQ	Cash	2	1	\N	\N	0
6	1	CB	Credit card	2	1	\N	\N	0
7	1	CHQ	Cheque	2	1	\N	\N	0
50	1	VAD	Online payment	2	0	\N	\N	0
51	1	TRA	Traite	2	0	\N	\N	0
52	1	LCR	LCR	2	0	\N	\N	0
53	1	FAC	Factor	2	0	\N	\N	0
100	1	KLA	Klarna	1	0	\N	\N	0
101	1	SOF	Sofort	1	0	\N	\N	0
102	1	BANCON	Bancontact	1	0	\N	\N	0
103	1	IDE	iDeal	1	0	\N	\N	0
104	1	GIR	Giropay	1	0	\N	\N	0
105	1	PPL	PayPal	1	0	\N	\N	0
\.


--
-- Data for Name: llx_c_paper_format; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_paper_format (rowid, code, label, width, height, unit, active, module) FROM stdin;
1	EU4A0	Format 4A0	1682.00	2378.00	mm	1	\N
2	EU2A0	Format 2A0	1189.00	1682.00	mm	1	\N
3	EUA0	Format A0	840.00	1189.00	mm	1	\N
4	EUA1	Format A1	594.00	840.00	mm	1	\N
5	EUA2	Format A2	420.00	594.00	mm	1	\N
6	EUA3	Format A3	297.00	420.00	mm	1	\N
7	EUA4	Format A4	210.00	297.00	mm	1	\N
8	EUA5	Format A5	148.00	210.00	mm	1	\N
9	EUA6	Format A6	105.00	148.00	mm	1	\N
100	USLetter	Format Letter (A)	216.00	279.00	mm	1	\N
105	USLegal	Format Legal	216.00	356.00	mm	1	\N
110	USExecutive	Format Executive	190.00	254.00	mm	1	\N
115	USLedger	Format Ledger/Tabloid (B)	279.00	432.00	mm	1	\N
200	CAP1	Format Canadian P1	560.00	860.00	mm	1	\N
205	CAP2	Format Canadian P2	430.00	560.00	mm	1	\N
210	CAP3	Format Canadian P3	280.00	430.00	mm	1	\N
215	CAP4	Format Canadian P4	215.00	280.00	mm	1	\N
220	CAP5	Format Canadian P5	140.00	215.00	mm	1	\N
225	CAP6	Format Canadian P6	107.00	140.00	mm	1	\N
\.


--
-- Data for Name: llx_c_payment_term; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_payment_term (rowid, entity, code, sortorder, active, libelle, libelle_facture, type_cdr, nbjour, decalage, deposit_percent, module, "position") FROM stdin;
1	1	RECEP	1	1	Due upon receipt	Due upon receipt	0	1	\N	\N	\N	0
2	1	30D	2	1	30 days	Due in 30 days	0	30	\N	\N	\N	0
3	1	30DENDMONTH	3	1	30 days end of month	Due in 30 days, end of month	1	30	\N	\N	\N	0
4	1	60D	4	1	60 days	Due in 60 days, end of month	0	60	\N	\N	\N	0
5	1	60DENDMONTH	5	1	60 days end of month	Due in 60 days, end of month	1	60	\N	\N	\N	0
6	1	PT_ORDER	6	1	Due on order	Due on order	0	1	\N	\N	\N	0
7	1	PT_DELIVERY	7	1	Due on delivery	Due on delivery	0	1	\N	\N	\N	0
8	1	PT_5050	8	1	50 and 50	50% on order, 50% on delivery	0	1	\N	\N	\N	0
9	1	10D	9	1	10 days	Due in 10 days	0	10	\N	\N	\N	0
10	1	10DENDMONTH	10	1	10 days end of month	Due in 10 days, end of month	1	10	\N	\N	\N	0
11	1	14D	11	1	14 days	Due in 14 days	0	14	\N	\N	\N	0
12	1	14DENDMONTH	12	1	14 days end of month	Due in 14 days, end of month	1	14	\N	\N	\N	0
13	1	DEP30PCTDEL	13	0	__DEPOSIT_PERCENT__% deposit	__DEPOSIT_PERCENT__% deposit, remainder on delivery	0	1	\N	30	\N	0
\.


--
-- Data for Name: llx_c_product_nature; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_product_nature (rowid, code, label, active) FROM stdin;
1	0	RowMaterial	1
2	1	Finished	1
\.


--
-- Data for Name: llx_c_product_thirdparty_relation_type; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_product_thirdparty_relation_type (rowid, code, label, active) FROM stdin;
\.


--
-- Data for Name: llx_c_propalst; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_propalst (id, code, label, sortorder, active) FROM stdin;
0	PR_DRAFT	Brouillon	0	1
1	PR_OPEN	Ouverte	0	1
2	PR_SIGNED	Signée	0	1
3	PR_NOTSIGNED	Non Signée	0	1
4	PR_FAC	Facturée	0	1
\.


--
-- Data for Name: llx_c_prospectcontactlevel; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_prospectcontactlevel (code, label, sortorder, active, module) FROM stdin;
PL_NONE	None	1	1	\N
PL_LOW	Low	2	1	\N
PL_MEDIUM	Medium	3	1	\N
PL_HIGH	High	4	1	\N
\.


--
-- Data for Name: llx_c_prospectlevel; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_prospectlevel (code, label, sortorder, active, module) FROM stdin;
PL_NONE	None	1	1	\N
PL_LOW	Low	2	1	\N
PL_MEDIUM	Medium	3	1	\N
PL_HIGH	High	4	1	\N
\.


--
-- Data for Name: llx_c_regions; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_regions (rowid, code_region, fk_pays, cheflieu, tncc, nom, active) FROM stdin;
1	0	0	0	0	-	1
2	1301	13		0	Algerie	1
3	34000	34	AD	\N	Andorra	1
4	35001	35	AO	\N	Angola	1
5	2301	23		0	Norte	1
6	2302	23		0	Litoral	1
7	2303	23		0	Cuyana	1
8	2304	23		0	Central	1
9	2305	23		0	Patagonia	1
10	2801	28		0	Australia	1
11	4101	41		0	Österreich	1
12	4601	46		0	Barbados	1
13	201	2		1	Flandre	1
14	202	2		2	Wallonie	1
15	203	2		3	Bruxelles-Capitale	1
16	5201	52		0	Chuquisaca	1
17	5202	52		0	La Paz	1
18	5203	52		0	Cochabamba	1
19	5204	52		0	Oruro	1
20	5205	52		0	Potosí	1
21	5206	52		0	Tarija	1
22	5207	52		0	Santa Cruz	1
23	5208	52		0	El Beni	1
24	5209	52		0	Pando	1
25	5601	56		0	Brasil	1
26	6101	61		0	Bubanza	1
27	6102	61		0	Bujumbura Mairie	1
28	6103	61		0	Bujumbura Rural	1
29	6104	61		0	Bururi	1
30	6105	61		0	Cankuzo	1
31	6106	61		0	Cibitoke	1
32	6107	61		0	Gitega	1
33	6108	61		0	Karuzi	1
34	6109	61		0	Kayanza	1
35	6110	61		0	Kirundo	1
36	6111	61		0	Makamba	1
37	6112	61		0	Muramvya	1
38	6113	61		0	Muyinga	1
39	6114	61		0	Mwaro	1
40	6115	61		0	Ngozi	1
41	6116	61		0	Rumonge	1
42	6117	61		0	Rutana	1
43	6118	61		0	Ruyigi	1
44	1401	14		0	Canada	1
45	6701	67	\N	\N	Tarapacá	1
46	6702	67	\N	\N	Antofagasta	1
47	6703	67	\N	\N	Atacama	1
48	6704	67	\N	\N	Coquimbo	1
49	6705	67	\N	\N	Valparaíso	1
50	6706	67	\N	\N	General Bernardo O Higgins	1
51	6707	67	\N	\N	Maule	1
52	6708	67	\N	\N	Biobío	1
53	6709	67	\N	\N	Raucanía	1
54	6710	67	\N	\N	Los Lagos	1
55	6711	67	\N	\N	Aysén General Carlos Ibáñez del Campo	1
56	6712	67	\N	\N	Magallanes y Antártica Chilena	1
57	6713	67	\N	\N	Metropolitana de Santiago	1
58	6714	67	\N	\N	Los Ríos	1
59	6715	67	\N	\N	Arica y Parinacota	1
60	901	9	京	0	北京市	1
61	902	9	津	0	天津市	1
62	903	9	沪	0	上海市	1
63	904	9	渝	0	重庆市	1
64	905	9	冀	0	河北省	1
65	906	9	晋	0	山西省	1
66	907	9	辽	0	辽宁省	1
67	908	9	吉	0	吉林省	1
68	909	9	黑	0	黑龙江省	1
69	910	9	苏	0	江苏省	1
70	911	9	浙	0	浙江省	1
71	912	9	皖	0	安徽省	1
72	913	9	闽	0	福建省	1
73	914	9	赣	0	江西省	1
74	915	9	鲁	0	山东省	1
75	916	9	豫	0	河南省	1
76	917	9	鄂	0	湖北省	1
77	918	9	湘	0	湖南省	1
78	919	9	粤	0	广东省	1
79	920	9	琼	0	海南省	1
80	921	9	川	0	四川省	1
81	922	9	贵	0	贵州省	1
82	923	9	云	0	云南省	1
83	924	9	陕	0	陕西省	1
84	925	9	甘	0	甘肃省	1
85	926	9	青	0	青海省	1
86	927	9	台	0	台湾省	1
87	928	9	蒙	0	内蒙古自治区	1
88	929	9	桂	0	广西壮族自治区	1
89	930	9	藏	0	西藏自治区	1
90	931	9	宁	0	宁夏回族自治区	1
91	932	9	新	0	新疆维吾尔自治区	1
92	933	9	港	0	香港特别行政区	1
93	934	9	澳	0	澳门特别行政区	1
94	7001	70		0	Colombie	1
95	7601	76		0	Središnja	1
96	7602	76		0	Dalmacija	1
97	7603	76		0	Slavonija	1
98	7604	76		0	Istra	1
99	8001	80		0	Nordjylland	1
100	8002	80		0	Midtjylland	1
101	8003	80		0	Syddanmark	1
102	8004	80		0	Hovedstaden	1
103	8005	80		0	Sjælland	1
104	1	1	97105	3	Guadeloupe	1
105	2	1	97209	3	Martinique	1
106	3	1	97302	3	Guyane	1
107	4	1	97411	3	Réunion	1
108	6	1	97601	3	Mayotte	1
109	11	1	75056	1	Île-de-France	1
110	24	1	45234	2	Centre-Val de Loire	1
111	27	1	21231	0	Bourgogne-Franche-Comté	1
112	28	1	76540	0	Normandie	1
113	32	1	59350	4	Hauts-de-France	1
114	44	1	67482	2	Grand Est	1
115	52	1	44109	4	Pays de la Loire	1
116	53	1	35238	0	Bretagne	1
117	75	1	33063	0	Nouvelle-Aquitaine	1
118	76	1	31355	1	Occitanie	1
119	84	1	69123	1	Auvergne-Rhône-Alpes	1
120	93	1	13055	0	Provence-Alpes-Côte d'Azur	1
121	94	1	2A004	0	Corse	1
122	501	5		0	Deutschland	1
123	10201	102	\N	\N	Αττική	1
124	10202	102	\N	\N	Στερεά Ελλάδα	1
125	10203	102	\N	\N	Κεντρική Μακεδονία	1
126	10204	102	\N	\N	Κρήτη	1
127	10205	102	\N	\N	Ανατολική Μακεδονία και Θράκη	1
128	10206	102	\N	\N	Ήπειρος	1
129	10207	102	\N	\N	Ιόνια νησιά	1
130	10208	102	\N	\N	Βόρειο Αιγαίο	1
131	10209	102	\N	\N	Πελοπόννησος	1
132	10210	102	\N	\N	Νότιο Αιγαίο	1
133	10211	102	\N	\N	Δυτική Ελλάδα	1
134	10212	102	\N	\N	Θεσσαλία	1
135	10213	102	\N	\N	Δυτική Μακεδονία	1
136	11401	114		0	Honduras	1
137	180100	18	HU1	\N	Közép-Magyarország	1
138	182100	18	HU21	\N	Közép-Dunántúl	1
139	182200	18	HU22	\N	Nyugat-Dunántúl	1
140	182300	18	HU23	\N	Dél-Dunántúl	1
141	183100	18	HU31	\N	Észak-Magyarország	1
142	183200	18	HU32	\N	Észak-Alföld	1
143	183300	18	HU33	\N	Dél-Alföld	1
144	11701	117		0	India	1
145	11801	118		0	Indonesia	1
146	301	3	\N	1	Abruzzo	1
147	302	3	\N	1	Basilicata	1
148	303	3	\N	1	Calabria	1
149	304	3	\N	1	Campania	1
150	305	3	\N	1	Emilia-Romagna	1
151	306	3	\N	1	Friuli-Venezia Giulia	1
152	307	3	\N	1	Lazio	1
153	308	3	\N	1	Liguria	1
154	309	3	\N	1	Lombardia	1
155	310	3	\N	1	Marche	1
156	311	3	\N	1	Molise	1
157	312	3	\N	1	Piemonte	1
158	313	3	\N	1	Puglia	1
159	314	3	\N	1	Sardegna	1
160	315	3	\N	1	Sicilia	1
161	316	3	\N	1	Toscana	1
162	317	3	\N	1	Trentino-Alto Adige	1
163	318	3	\N	1	Umbria	1
164	319	3	\N	1	Valle d Aosta	1
165	320	3	\N	1	Veneto	1
166	12301	123		0	日本	1
167	14001	140		0	Diekirch	1
168	14002	140		0	Grevenmacher	1
169	14003	140		0	Luxembourg	1
170	15201	152		0	Rivière Noire	1
171	15202	152		0	Flacq	1
172	15203	152		0	Grand Port	1
173	15204	152		0	Moka	1
174	15205	152		0	Pamplemousses	1
175	15206	152		0	Plaines Wilhems	1
176	15207	152		0	Port-Louis	1
177	15208	152		0	Rivière du Rempart	1
178	15209	152		0	Savanne	1
179	15210	152		0	Rodrigues	1
180	15211	152		0	Les îles Agaléga	1
181	15212	152		0	Les écueils des Cargados Carajos	1
182	15401	154		0	Mexique	1
183	1201	12		0	Tanger-Tétouan	1
184	1202	12		0	Gharb-Chrarda-Beni Hssen	1
185	1203	12		0	Taza-Al Hoceima-Taounate	1
186	1204	12		0	L'Oriental	1
187	1205	12		0	Fès-Boulemane	1
188	1206	12		0	Meknès-Tafialet	1
189	1207	12		0	Rabat-Salé-Zemour-Zaër	1
190	1208	12		0	Grand Cassablanca	1
191	1209	12		0	Chaouia-Ouardigha	1
192	1210	12		0	Doukahla-Adba	1
193	1211	12		0	Marrakech-Tensift-Al Haouz	1
194	1212	12		0	Tadla-Azilal	1
195	1213	12		0	Sous-Massa-Drâa	1
196	1214	12		0	Guelmim-Es Smara	1
197	1215	12		0	Laâyoune-Boujdour-Sakia el Hamra	1
198	1216	12		0	Oued Ed-Dahab Lagouira	1
199	1701	17		0	Provincies van Nederland 	1
200	17801	178		0	Panama	1
201	18101	181		0	Amazonas	1
202	18102	181		0	Ancash	1
203	18103	181		0	Apurimac	1
204	18104	181		0	Arequipa	1
205	18105	181		0	Ayacucho	1
206	18106	181		0	Cajamarca	1
207	18107	181		0	Callao	1
208	18108	181		0	Cuzco	1
209	18109	181		0	Huancavelica	1
210	18110	181		0	Huanuco	1
211	18111	181		0	Ica	1
212	18112	181		0	Junin	1
213	18113	181		0	La Libertad	1
214	18114	181		0	Lambayeque	1
215	18115	181		0	Lima Metropolitana	1
216	18116	181		0	Lima	1
217	18117	181		0	Loreto	1
218	18118	181		0	Madre de Dios	1
219	18119	181		0	Moquegua	1
220	18120	181		0	Pasco	1
221	18121	181		0	Piura	1
222	18122	181		0	Puno	1
223	18123	181		0	San Martín	1
224	18124	181		0	Tacna	1
225	18125	181		0	Tumbes	1
226	18126	181		0	Ucayali	1
227	15001	25	PT	\N	Portugal	1
228	15002	25	PT9	\N	Azores-Madeira	1
229	18801	188		0	Romania	1
230	8601	86	\N	\N	Central	1
231	8602	86	\N	\N	Oriental	1
232	8603	86	\N	\N	Occidental	1
233	20101	201	SK01	\N	Bratislava Region	1
234	20102	201	SK02	\N	Western Slovakia	1
235	20103	201	SK03	\N	Central Slovakia	1
236	20104	201	SK04	\N	Eastern Slovakia	1
237	20203	202	SI03	\N	East Slovenia	1
238	20204	202	SI04	\N	West Slovenia	1
239	401	4		0	Andalucia	1
240	402	4		0	Aragón	1
241	403	4		0	Castilla y León	1
242	404	4		0	Castilla la Mancha	1
243	405	4		0	Canarias	1
244	406	4		0	Cataluña	1
245	407	4		0	Comunidad de Ceuta	1
246	408	4		0	Comunidad Foral de Navarra	1
247	409	4		0	Comunidad de Melilla	1
248	410	4		0	Cantabria	1
249	411	4		0	Comunidad Valenciana	1
250	412	4		0	Extemadura	1
251	413	4		0	Galicia	1
252	414	4		0	Islas Baleares	1
253	415	4		0	La Rioja	1
254	416	4		0	Comunidad de Madrid	1
255	417	4		0	Región de Murcia	1
256	418	4		0	Principado de Asturias	1
257	419	4		0	Pais Vasco	1
258	420	4		0	Otros	1
259	601	6		1	Cantons	1
260	21301	213	TW	\N	Taiwan	1
261	1001	10		0	Ariana	1
262	1002	10		0	Béja	1
263	1003	10		0	Ben Arous	1
264	1004	10		0	Bizerte	1
265	1005	10		0	Gabès	1
266	1006	10		0	Gafsa	1
267	1007	10		0	Jendouba	1
268	1008	10		0	Kairouan	1
269	1009	10		0	Kasserine	1
270	1010	10		0	Kébili	1
271	1011	10		0	La Manouba	1
272	1012	10		0	Le Kef	1
273	1013	10		0	Mahdia	1
274	1014	10		0	Médenine	1
275	1015	10		0	Monastir	1
276	1016	10		0	Nabeul	1
277	1017	10		0	Sfax	1
278	1018	10		0	Sidi Bouzid	1
279	1019	10		0	Siliana	1
280	1020	10		0	Sousse	1
281	1021	10		0	Tataouine	1
282	1022	10		0	Tozeur	1
283	1023	10		0	Tunis	1
284	1024	10		0	Zaghouan	1
285	22101	221		0	Marmara	1
286	22102	221		0	İç Anadolu	1
287	22103	221		0	Ege	1
288	22104	221		0	Akdeniz	1
289	22105	221		0	Güneydoğu	1
290	22106	221		0	Karadeniz	1
291	22107	221		0	Doğu Anadolu	1
292	22701	227		0	United Arab Emirates	1
293	701	7		0	England	1
294	702	7		0	Wales	1
295	703	7		0	Scotland	1
296	704	7		0	Northern Ireland	1
297	1101	11		0	United-States	1
298	23201	232		0	Los Andes	1
299	23202	232		0	Capital	1
300	23203	232		0	Central	1
301	23204	232		0	Cento Occidental	1
302	23205	232		0	Guayana	1
303	23206	232		0	Insular	1
304	23207	232		0	Los Llanos	1
305	23208	232		0	Nor-Oriental	1
306	23209	232		0	Zuliana	1
307	7700	77		0	Cuba	1
308	7701	77		0	Occidente	1
309	7702	77		0	Centro	1
310	7703	77		0	Occidente	1
\.


--
-- Data for Name: llx_c_revenuestamp; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_revenuestamp (rowid, fk_pays, taux, revenuestamp_type, note, active, accountancy_code_sell, accountancy_code_buy) FROM stdin;
101	10	0.4	fixed	Revenue stamp tunisia	1	\N	\N
1021	102	1.2	percent	Συντελεστής 1,2 %	1	\N	\N
1022	102	2.4	percent	Συντελεστής 2,4 %	1	\N	\N
1023	102	3.6	percent	Συντελεστής 3,6 %	1	\N	\N
1024	102	1.0	fixed	Λοιπές περιπτώσεις Χαρτοσήμου	1	\N	\N
1541	154	1.5	percent	Revenue stamp mexico	1	\N	\N
1542	154	3	percent	Revenue stamp mexico	1	\N	\N
22101	221	0.00948	percent	Mukavelenameler Damga Vergisi	1	\N	\N
22102	221	0.00189	percent	Kira mukavelenameleri Damga Vergisi	1	\N	\N
\.


--
-- Data for Name: llx_c_shipment_mode; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_shipment_mode (rowid, entity, tms, code, libelle, description, tracking, active, module) FROM stdin;
1	1	2026-02-08 16:13:37.767107	CATCH	In-Store Collection	In-store collection by the customer		1	\N
2	1	2026-02-08 16:13:37.767107	TRANS	Generic transport service	Generic transport service		1	\N
3	1	2026-02-08 16:13:37.767107	COLSUI	Colissimo Suivi	Colissimo Suivi	https://www.laposte.fr/outils/suivre-vos-envois?code={TRACKID}	0	\N
4	1	2026-02-08 16:13:37.767107	LETTREMAX	Lettre Max	Courrier Suivi et Lettre Max	https://www.laposte.fr/outils/suivre-vos-envois?code={TRACKID}	0	\N
5	1	2026-02-08 16:13:37.767107	UPS	UPS	United Parcel Service	http://wwwapps.ups.com/etracking/tracking.cgi?InquiryNumber2=&InquiryNumber3=&tracknums_displayed=3&loc=fr_FR&TypeOfInquiryNumber=T&HTMLVersion=4.0&InquiryNumber22=&InquiryNumber32=&track=Track&Suivi.x=64&Suivi.y=7&Suivi=Valider&InquiryNumber1={TRACKID}	1	\N
6	1	2026-02-08 16:13:37.767107	KIALA	KIALA	Relais Kiala	http://www.kiala.fr/tnt/delivery/{TRACKID}	0	\N
7	1	2026-02-08 16:13:37.767107	GLS	GLS	General Logistics Systems	https://gls-group.eu/FR/fr/suivi-colis?match={TRACKID}	0	\N
8	1	2026-02-08 16:13:37.767107	CHRONO	Chronopost	Chronopost	http://www.chronopost.fr/expedier/inputLTNumbersNoJahia.do?listeNumeros={TRACKID}	0	\N
9	1	2026-02-08 16:13:37.767107	INPERSON	In person at your site	\N	\N	0	\N
10	1	2026-02-08 16:13:37.767107	FEDEX	Fedex	\N	https://www.fedex.com/apps/fedextrack/index.html?tracknumbers={TRACKID}	0	\N
11	1	2026-02-08 16:13:37.767107	TNT	TNT	\N	https://www.tnt.com/express/fr_fr/site/outils-expedition/suivi.html?searchType=con&cons=={TRACKID}	0	\N
12	1	2026-02-08 16:13:37.767107	DHL	DHL	\N	https://www.dhl.com/fr-fr/home/tracking/tracking-global-forwarding.html?submit=1&tracking-id={TRACKID}	0	\N
13	1	2026-02-08 16:13:37.767107	DPD	DPD	\N	https://www.dpd.fr/trace/{TRACKID}	0	\N
14	1	2026-02-08 16:13:37.767107	MAINFREIGHT	Mainfreight	\N	https://www.mainfreight.com/track?{TRACKID}	0	\N
\.


--
-- Data for Name: llx_c_shipment_package_type; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_shipment_package_type (rowid, label, description, active, entity) FROM stdin;
\.


--
-- Data for Name: llx_c_socialnetworks; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_socialnetworks (rowid, entity, code, label, url, icon, active) FROM stdin;
1	1	500px	500px	{socialid}	fa-500px	0
2	1	dailymotion	Dailymotion	{socialid}		0
3	1	diaspora	Diaspora	{socialid}		0
4	1	discord	Discord	{socialid}	fa-discord	0
5	1	facebook	Facebook	https://www.facebook.com/{socialid}	fa-facebook	1
6	1	flickr	Flickr	{socialid}	fa-flickr	0
7	1	gifycat	Gificat	{socialid}		0
8	1	giphy	Giphy	{socialid}		0
9	1	github	GitHub	https://www.github.com/{socialid}		0
10	1	instagram	Instagram	https://www.instagram.com/{socialid}	fa-instagram	1
11	1	linkedin	LinkedIn	https://www.linkedin.com/in/{socialid}	fa-linkedin	1
12	1	mastodon	Mastodon	{socialid}	fa-mastodon	0
13	1	meetup	Meetup	{socialid}	fa-meetup	0
14	1	periscope	Periscope	{socialid}		0
15	1	pinterest	Pinterest	{socialid}	fa-pinterest	0
16	1	pixelfed	Pixelfed	{socialid}	fa-pixelfed	0
17	1	quora	Quora	{socialid}		0
18	1	reddit	Reddit	{socialid}	fa-reddit	0
19	1	slack	Slack	{socialid}	fa-slack	0
20	1	snapchat	Snapchat	{socialid}	fa-snapchat	1
21	1	skype	Skype	https://www.skype.com/{socialid}	fa-skype	1
22	1	tripadvisor	Tripadvisor	{socialid}		0
23	1	tumblr	Tumblr	https://www.tumblr.com/{socialid}	fa-tumblr	0
24	1	twitch	Twitch	{socialid}		0
25	1	twitter	X-Twitter	https://www.x.com/{socialid}	fa-twitter	1
26	1	vero	Vero	https://vero.co/{socialid}		0
27	1	viadeo	Viadeo	https://fr.viadeo.com/fr/{socialid}	fa-viadeo	0
28	1	viber	Viber	{socialid}		0
29	1	vimeo	Vimeo	{socialid}	fa-vimeo	0
30	1	whatsapp	Whatsapp	https://web.whatsapp.com/send?phone={socialid}	fa-whatsapp	1
31	1	wikipedia	Wikipedia	{socialid}	fa-wikipedia-w	0
32	1	xing	Xing	{socialid}	fa-xing	0
33	1	youtube	Youtube	https://www.youtube.com/{socialid}	fa-youtube	1
\.


--
-- Data for Name: llx_c_stcomm; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_stcomm (id, code, libelle, picto, sortorder, active) FROM stdin;
-1	ST_NO	Do not contact	\N	0	1
0	ST_NEVER	Never contacted	\N	0	1
1	ST_TODO	To contact	\N	0	1
2	ST_PEND	Contact in progress	\N	0	1
3	ST_DONE	Contacted	\N	0	1
\.


--
-- Data for Name: llx_c_stcommcontact; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_stcommcontact (id, code, libelle, picto, active) FROM stdin;
-1	ST_NO	Do not contact	\N	1
0	ST_NEVER	Never contacted	\N	1
1	ST_TODO	To contact	\N	1
2	ST_PEND	Contact in progress	\N	1
3	ST_DONE	Contacted	\N	1
\.


--
-- Data for Name: llx_c_transport_mode; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_transport_mode (rowid, entity, code, label, active) FROM stdin;
1	1	MAR	Transport maritime (y compris camions ou wagons sur bateau)	1
2	1	TRA	Transport par chemin de fer (y compris camions sur wagon)	1
3	1	ROU	Transport par route	1
4	1	AIR	Transport par air	1
5	1	POS	Envois postaux	1
6	1	OLE	Installations de transport fixe (oléoduc)	1
7	1	NAV	Transport par navigation intérieure	1
8	1	PRO	Propulsion propre	1
\.


--
-- Data for Name: llx_c_tva; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_tva (rowid, entity, fk_pays, fk_department_buyer, code, type_vat, taux, localtax1, localtax1_type, localtax2, localtax2_type, use_default, recuperableonly, note, active, accountancy_code_sell, accountancy_code_buy) FROM stdin;
1	1	13	\N		0	0	0	0	0	0	0	0	TVA 0%	1	\N	\N
2	1	13	\N		0	9	0	0	0	0	0	0	TVA 9%	1	\N	\N
3	1	13	\N		0	19	0	0	0	0	0	0	TVA 19%	1	\N	\N
4	1	35	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
5	1	35	\N		0	7	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
6	1	35	\N		0	14	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
7	1	23	\N		0	0	0	0	0	0	0	0	IVA Rate 0	1	\N	\N
8	1	23	\N		0	10.5	0	0	0	0	0	0	IVA reduced rate	1	\N	\N
9	1	23	\N		0	21	0	0	0	0	0	0	IVA standard rate	1	\N	\N
10	1	28	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
11	1	28	\N		0	10	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
12	1	41	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
13	1	41	\N		0	10	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
14	1	41	\N		0	20	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
15	1	56	\N		0	0	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
16	1	59	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
17	1	59	\N		0	7	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
18	1	59	\N		0	20	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
19	1	2	\N		0	0	0	0	0	0	0	0	VAT rate 0 ou non applicable	1	\N	\N
20	1	2	\N		0	6	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
21	1	2	\N		0	21	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
22	1	2	\N		0	12	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
23	1	14	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
24	1	14	\N		0	7	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
25	1	14	\N		0	5	9.975	1	0	0	0	0	GST/TPS and PST/TVQ rate for Province	1	\N	\N
26	1	24	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
27	1	24	\N		0	19.25	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
28	1	67	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
29	1	67	\N		0	19	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
30	1	9	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
31	1	9	\N		0	13	0	0	0	0	0	0	VAT rate - reduced 0	1	\N	\N
32	1	9	\N		0	3	0	0	0	0	0	0	VAT rate -  super-reduced 0	1	\N	\N
33	1	9	\N		0	17	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
34	1	72	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
35	1	72	\N		0	18	0.9	1	0	0	0	0	VAT rate 18+0.9	1	\N	\N
36	1	76	\N		0	25	0	0	0	0	0	0	PDV 25%	1	\N	\N
37	1	76	\N		0	13	0	0	0	0	0	0	PDV 13%	1	\N	\N
38	1	76	\N		0	5	0	0	0	0	0	0	PDV 5%	1	\N	\N
39	1	76	\N		0	0	0	0	0	0	0	0	PDV 0%	1	\N	\N
40	1	78	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
41	1	78	\N		0	9	0	0	0	0	0	0	VAT rate 9	1	\N	\N
42	1	78	\N		0	5	0	0	0	0	0	0	VAT rate 5	1	\N	\N
43	1	78	\N		0	19	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
44	1	80	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
45	1	80	\N		0	25	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
46	1	1	\N		0	0	0	0	0	0	0	0	VAT rate 0 ou non applicable	1	\N	\N
47	1	1	\N		0	20	0	0	0	0	0	0	VAT rate - standard (France hors DOM-TOM)	1	\N	\N
48	1	1	\N		0	10	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
49	1	1	\N		0	5.5	0	0	0	0	0	0	VAT rate - reduced (France hors DOM-TOM)	1	\N	\N
50	1	1	\N		0	2.1	0	0	0	0	0	0	VAT rate - super-reduced	1	\N	\N
51	1	1	\N	85	0	8.5	0	0	0	0	0	0	VAT rate - standard (DOM sauf Guyane et Saint-Martin)	0	\N	\N
52	1	1	\N	85NPR	0	8.5	0	0	0	0	0	1	VAT rate - standard (DOM sauf Guyane et Saint-Martin), non perçu par le vendeur mais récupérable par acheteur	0	\N	\N
53	1	1	\N	85NPROM	0	8.5	2	3	0	0	0	1	VAT rate - standard (DOM sauf Guyane et Saint-Martin), NPR, Octroi de Mer	0	\N	\N
54	1	1	\N	85NPROMOMR	0	8.5	2	3	2.5	3	0	1	VAT rate - standard (DOM sauf Guyane et Saint-Martin), NPR, Octroi de Mer et Octroi de Mer Regional	0	\N	\N
55	1	16	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
56	1	16	\N	TPS95	0	10	0	0	0	0	0	0	VAT 9.5	1	\N	\N
57	1	16	\N	TPS95C	0	10	1	1	0	0	0	0	VAT 9.5+CSS	1	\N	\N
58	1	16	\N	TPS10	0	10	0	0	0	0	0	0	VAT 10	1	\N	\N
59	1	16	\N	TPS10C	0	10	1	1	0	0	0	0	VAT 10+CSS	1	\N	\N
60	1	16	\N	TPS18	0	18	0	0	0	0	0	0	VAT 18	1	\N	\N
61	1	16	\N	TPS18C	0	18	1	1	0	0	0	0	VAT 18+CSS	1	\N	\N
62	1	5	\N		0	0	0	0	0	0	0	0	No VAT	1	\N	\N
63	1	5	\N		0	7.0	0	0	0	0	0	0	ermäßigte USt.	1	\N	\N
64	1	5	\N		0	5.5	0	0	0	0	0	0	USt. Forst	0	\N	\N
65	1	5	\N		0	10.7	0	0	0	0	0	0	USt. Landwirtschaft	0	\N	\N
66	1	5	\N		0	19.0	0	0	0	0	0	0	allgemeine Ust.	1	\N	\N
67	1	102	\N		0	0	0	0	0	0	0	0	Μηδενικό Φ.Π.Α.	1	\N	\N
68	1	102	\N		0	24	0	0	0	0	0	0	Κανονικός Φ.Π.Α.	1	\N	\N
69	1	102	\N		0	13	0	0	0	0	0	0	Μειωμένος Φ.Π.Α.	1	\N	\N
70	1	102	\N		0	6	0	0	0	0	0	0	Υπερμειωμένος Φ.Π.Α.	1	\N	\N
71	1	102	\N		0	3	0	0	0	0	0	0	Νήσων υπερμειωμένος Φ.Π.Α.	1	\N	\N
72	1	102	\N		0	9	0	0	0	0	0	0	Νήσων μειωμένος Φ.Π.Α.	1	\N	\N
73	1	102	\N		0	4	0	0	0	0	0	0	Νήσων υπερμειωμένος Φ.Π.Α.	1	\N	\N
74	1	102	\N		0	17	0	0	0	0	0	0	Νήσων υπερμειωμένος Φ.Π.Α.	1	\N	\N
75	1	116	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
76	1	116	\N		0	25.5	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
77	1	116	\N		0	7	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
78	1	117	\N		0	0	0	0	0	0	0	0	VAT rate 0	0	\N	\N
79	1	117	\N	C+S-5	0	0	2.5	1	2.5	1	0	0	CGST+SGST - Same state sales	1	\N	\N
80	1	117	\N	I-5	0	5	0	0	0	0	0	0	IGST	1	\N	\N
81	1	117	\N	C+S-12	0	0	6	1	6	1	0	0	CGST+SGST - Same state sales	1	\N	\N
82	1	117	\N	I-12	0	12	0	0	0	0	0	0	IGST	1	\N	\N
83	1	117	\N	C+S-18	0	0	9	1	9	1	0	0	CGST+SGST - Same state sales	1	\N	\N
84	1	117	\N	I-18	0	18	0	0	0	0	0	0	IGST	1	\N	\N
85	1	117	\N	C+S-28	0	0	14	1	14	1	0	0	CGST+SGST - Same state sales	1	\N	\N
86	1	117	\N	I-28	0	28	0	0	0	0	0	0	IGST	1	\N	\N
87	1	8	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
88	1	8	\N		0	23	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
89	1	8	\N		0	13.5	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
90	1	8	\N		0	9	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
91	1	8	\N		0	4.8	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
92	1	3	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
93	1	3	\N		0	10	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
94	1	3	\N		0	4	0	0	0	0	0	0	VAT rate - super-reduced	1	\N	\N
95	1	3	\N		0	22	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
96	1	21	\N		0	0	0	0	0	0	0	0	IVA Rate 0	1	\N	\N
97	1	21	\N		0	18	7.5	2	0	0	0	0	IVA standard rate	1	\N	\N
98	1	123	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
99	1	123	\N		0	5	0	0	0	0	0	0	VAT rate 5	1	\N	\N
100	1	140	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
101	1	140	\N		0	14	0	0	0	0	0	0	VAT rate - intermediary	1	\N	\N
102	1	140	\N		0	8	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
103	1	140	\N		0	3	0	0	0	0	0	0	VAT rate - super-reduced	1	\N	\N
104	1	140	\N		0	16	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
105	1	147	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
106	1	147	\N		0	18	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
107	1	27	\N		0	0	0	0	0	0	0	0	VAT rate 0 ou non applicable	1	\N	\N
108	1	27	\N		0	8.5	0	0	0	0	0	0	VAT rate - standard (DOM sauf Guyane et Saint-Martin)	0	\N	\N
109	1	27	\N		0	8.5	0	0	0	0	0	1	VAT rate - standard (DOM sauf Guyane et Saint-Martin), non perçu par le vendeur mais récupérable par acheteur	0	\N	\N
110	1	27	\N		0	5.5	0	0	0	0	0	0	VAT rate - reduced (France hors DOM-TOM)	0	\N	\N
111	1	27	\N		0	19.6	0	0	0	0	0	0	VAT rate - standard (France hors DOM-TOM)	1	\N	\N
112	1	27	\N		0	2.1	0	0	0	0	0	0	VAT rate - super-reduced	1	\N	\N
113	1	27	\N		0	7	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
114	1	12	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
115	1	12	\N		0	14	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
116	1	12	\N		0	10	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
117	1	12	\N		0	7	0	0	0	0	0	0	VAT rate - super-reduced	1	\N	\N
118	1	12	\N		0	20	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
119	1	148	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
120	1	148	\N		0	7	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
121	1	148	\N		0	5	0	0	0	0	0	0	VAT rate - super-reduced	1	\N	\N
122	1	148	\N		0	18	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
123	1	17	\N		0	0	0	0	0	0	0	0	0 BTW tarief	1	\N	\N
124	1	17	\N		0	6	0	0	0	0	0	0	Verlaagd BTW tarief	1	\N	\N
125	1	17	\N		0	19	0	0	0	0	0	0	Algemeen BTW tarief	1	\N	\N
126	1	17	\N		0	21	0	0	0	0	0	0	Algemeen BTW tarief (vanaf 1 oktober 2012)	0	\N	\N
127	1	165	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
128	1	165	\N		0	3	0	0	0	0	0	0	VAT standard 3	1	\N	\N
129	1	165	\N		0	6	0	0	0	0	0	0	VAT standard 6	1	\N	\N
130	1	165	\N		0	11	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
131	1	165	\N		0	22	0	0	0	0	0	0	VAT standard high	1	\N	\N
132	1	166	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
133	1	166	\N		0	15	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
134	1	169	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
135	1	169	\N		0	5	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
136	1	173	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
137	1	173	\N		0	14	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
138	1	173	\N		0	8	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
139	1	173	\N		0	25	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
140	1	178	\N		0	0	0	0	0	0	0	0	ITBMS Rate 0	1	\N	\N
141	1	178	\N		0	7	0	0	0	0	0	0	ITBMS standard rate	1	\N	\N
142	1	181	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
143	1	181	\N		0	18	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
144	1	184	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
145	1	184	\N		0	8	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
146	1	184	\N		0	3	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
147	1	184	\N		0	23	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
148	1	25	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
149	1	25	\N		0	13	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
150	1	25	\N		0	23	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
151	1	25	\N		0	6	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
152	1	188	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
153	1	188	\N		0	9	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
154	1	188	\N		0	19	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
155	1	188	\N		0	5	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
156	1	26	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
157	1	26	\N		0	5	0	0	0	0	0	0	VAT rate 5	1	\N	\N
158	1	86	\N		0	0	0	0	0	0	0	0	SIN IVA	1	\N	\N
159	1	86	\N		0	13	0	0	0	0	0	0	IVA 13	1	\N	\N
160	1	22	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
161	1	22	\N		0	10	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
162	1	22	\N		0	18	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
163	1	201	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
164	1	201	\N		0	10	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
165	1	201	\N		0	20	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
166	1	202	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
167	1	202	\N		0	9.5	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
168	1	202	\N		0	22	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
169	1	205	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
170	1	205	\N		0	15	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
171	1	4	\N		0	0	0	3	-19:-15:-9	5	0	0	VAT rate 0	1	\N	\N
172	1	4	\N		0	10	1.4	3	-19:-15:-9	5	0	0	VAT rate - reduced	1	\N	\N
173	1	4	\N		0	4	0.5	3	-19:-15:-9	5	0	0	VAT rate - super-reduced	1	\N	\N
174	1	4	\N		0	21	5.2	3	-19:-15:-9	5	0	0	VAT rate - standard	1	\N	\N
175	1	20	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
176	1	20	\N		0	12	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
177	1	20	\N		0	6	0	0	0	0	0	0	VAT rate - super-reduced	1	\N	\N
178	1	20	\N		0	25	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
179	1	6	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
180	1	6	\N		0	3.8	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
181	1	6	\N		0	2.6	0	0	0	0	0	0	VAT rate - super-reduced	1	\N	\N
182	1	6	\N		0	8.1	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
183	1	207	\N		0	0	0	0	0	0	0	0	VAT 0	1	\N	\N
184	1	207	\N		0	15	0	0	0	0	0	0	VAT 15%	1	\N	\N
185	1	213	\N		0	0	0	0	0	0	0	0	VAT 0	1	\N	\N
186	1	213	\N		0	5	0	0	0	0	0	0	VAT 5%	1	\N	\N
187	1	10	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
188	1	10	\N		0	12	0	0	0	0	0	0	VAT 12%	1	\N	\N
189	1	10	\N		0	18	0	0	0	0	0	0	VAT 18%	1	\N	\N
190	1	10	\N		0	7.5	0	0	0	0	0	0	VAT 6% Majoré à 25% (7.5%)	1	\N	\N
191	1	10	\N		0	15	0	0	0	0	0	0	VAT 12% Majoré à 25% (15%)	1	\N	\N
192	1	10	\N		0	22.5	0	0	0	0	0	0	VAT 18% Majoré à 25% (22.5%)	1	\N	\N
193	1	10	\N		0	6	0	0	0	0	0	0	VAT 6%	1	\N	\N
194	1	10	\N		0	18.18	1	4	0	0	0	0	VAT 18%+FODEC	1	\N	\N
195	1	226	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
196	1	226	\N		0	20	0	0	0	0	0	0	VAT standart rate	1	\N	\N
197	1	7	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
198	1	7	\N		0	17.5	0	0	0	0	0	0	VAT rate - standard before 2011	1	\N	\N
199	1	7	\N		0	5	0	0	0	0	0	0	VAT rate - reduced	1	\N	\N
200	1	7	\N		0	20	0	0	0	0	0	0	VAT rate - standard	1	\N	\N
201	1	11	\N		0	0	0	0	0	0	0	0	No Sales Tax	1	\N	\N
202	1	11	\N		0	4	0	0	0	0	0	0	Sales Tax 4%	1	\N	\N
203	1	11	\N		0	6	0	0	0	0	0	0	Sales Tax 6%	1	\N	\N
204	1	193	\N		0	0	0	0	0	0	0	0	No VAT in SPM	1	\N	\N
205	1	246	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
206	1	151	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
207	1	151	\N		0	14	0	0	0	0	0	0	VAT rate 14	1	\N	\N
208	1	152	\N		0	0	0	0	0	0	0	0	VAT rate 0	1	\N	\N
209	1	152	\N		0	15	0	0	0	0	0	0	VAT rate 15	1	\N	\N
210	1	114	\N		0	0	0	0	0	0	0	0	No ISV	1	\N	\N
211	1	114	\N		0	12	0	0	0	0	0	0	ISV 12%	1	\N	\N
212	1	154	\N		0	0	0	0	0	0	0	0	No VAT	1	\N	\N
213	1	154	\N		0	16	0	0	0	0	0	0	VAT 16%	1	\N	\N
214	1	154	\N		0	10	0	0	0	0	0	0	VAT Frontero	1	\N	\N
215	1	46	\N		0	0	0	0	0	0	0	0	No VAT	1	\N	\N
216	1	46	\N		0	15	0	0	0	0	0	0	VAT 15%	1	\N	\N
217	1	46	\N		0	7.5	0	0	0	0	0	0	VAT 7.5%	1	\N	\N
218	1	232	\N		0	0	0	0	0	0	0	0	No VAT	1	\N	\N
219	1	232	\N		0	12	0	0	0	0	0	0	VAT 12%	1	\N	\N
220	1	232	\N		0	8	0	0	0	0	0	0	VAT 8%	1	\N	\N
221	1	233	\N		0	0	0	0	0	0	0	0	Thuế GTGT đươc khấu trừ 0%	1	\N	\N
222	1	233	\N		0	5	0	0	0	0	0	0	Thuế GTGT đươc khấu trừ 5%	1	\N	\N
223	1	233	\N		0	8	0	0	0	0	0	0	Thuế GTGT đươc khấu trừ 8%	1	\N	\N
224	1	233	\N		0	10	0	0	0	0	0	0	Thuế GTGT đươc khấu trừ 10%	1	\N	\N
225	1	61	\N		0	0	0	0	0	0	0	0	No VAT	1	\N	\N
226	1	61	\N		0	10	0	0	0	0	0	0	VAT 10%	1	\N	\N
227	1	61	\N		0	18	0	0	0	0	0	0	VAT 18%	1	\N	\N
228	1	221	\N		0	0	0	0	0	0	0	0	No VAT	1	\N	\N
229	1	221	\N		0	1	0	0	0	0	0	0	VAT 1%	1	\N	\N
230	1	221	\N		0	8	0	0	0	0	0	0	VAT 8%	1	\N	\N
231	1	221	\N		0	18	0	0	0	0	0	0	VAT 18%	1	\N	\N
\.


--
-- Data for Name: llx_c_type_contact; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_type_contact (rowid, element, source, code, libelle, active, module, "position") FROM stdin;
1	contrat	internal	SALESREPSIGN	Commercial signataire du contrat	1	\N	0
2	contrat	internal	SALESREPFOLL	Commercial suivi du contrat	1	\N	0
3	contrat	external	BILLING	Contact client facturation contrat	1	\N	0
4	contrat	external	CUSTOMER	Contact client suivi contrat	1	\N	0
5	contrat	external	SALESREPSIGN	Contact client signataire contrat	1	\N	0
6	propal	internal	SALESREPFOLL	Commercial à l'origine de la propale	1	\N	0
7	propal	external	BILLING	Contact client facturation propale	1	\N	0
8	propal	external	CUSTOMER	Contact client suivi propale	1	\N	0
9	propal	external	SHIPPING	Contact client livraison propale	1	\N	0
10	facture	internal	SALESREPFOLL	Responsable suivi du paiement	1	\N	0
11	facture	external	BILLING	Contact client facturation	1	\N	0
12	facture	external	SHIPPING	Contact client livraison	1	\N	0
13	facture	external	SERVICE	Contact client prestation	1	\N	0
14	invoice_supplier	internal	SALESREPFOLL	Responsable suivi du paiement	1	\N	0
15	invoice_supplier	external	BILLING	Contact fournisseur facturation	1	\N	0
16	invoice_supplier	external	SHIPPING	Contact fournisseur livraison	1	\N	0
17	invoice_supplier	external	SERVICE	Contact fournisseur prestation	1	\N	0
18	agenda	internal	ACTOR	Responsable	1	\N	0
19	agenda	internal	GUEST	Guest	1	\N	0
20	agenda	external	ACTOR	Responsable	1	\N	0
21	agenda	external	GUEST	Guest	1	\N	0
22	commande	internal	SALESREPFOLL	Responsable suivi de la commande	1	\N	0
23	commande	external	BILLING	Contact client facturation commande	1	\N	0
24	commande	external	CUSTOMER	Contact client suivi commande	1	\N	0
25	commande	external	SHIPPING	Contact client livraison commande	1	\N	0
26	shipping	internal	SALESREPFOLL	Representative following-up shipping	1	\N	0
27	shipping	external	BILLING	Customer invoice contact	1	\N	0
28	shipping	external	CUSTOMER	Customer shipping contact	1	\N	0
29	shipping	external	SHIPPING	Loading facility	1	\N	0
30	shipping	external	DELIVERY	Delivery facility	1	\N	0
31	fichinter	internal	INTERREPFOLL	Responsable suivi de l'intervention	1	\N	0
32	fichinter	internal	INTERVENING	Intervenant	1	\N	0
33	fichinter	external	BILLING	Contact client facturation intervention	1	\N	0
34	fichinter	external	CUSTOMER	Contact client suivi de l'intervention	1	\N	0
35	order_supplier	internal	SALESREPFOLL	Responsable suivi de la commande	1	\N	0
36	order_supplier	internal	SHIPPING	Responsable réception de la commande	1	\N	0
37	order_supplier	external	BILLING	Contact fournisseur facturation commande	1	\N	0
38	order_supplier	external	CUSTOMER	Contact fournisseur suivi commande	1	\N	0
39	order_supplier	external	SHIPPING	Contact fournisseur livraison commande	1	\N	0
40	dolresource	internal	USERINCHARGE	In charge of resource	1	\N	0
41	dolresource	external	THIRDINCHARGE	In charge of resource	1	\N	0
42	ticket	internal	SUPPORTTEC	Utilisateur contact support	1	\N	0
43	ticket	internal	CONTRIBUTOR	Intervenant	1	\N	0
44	ticket	external	SUPPORTCLI	Contact client suivi incident	1	\N	0
45	ticket	external	CONTRIBUTOR	Intervenant	1	\N	0
46	project	internal	PROJECTLEADER	Chef de Projet	1	\N	0
47	project	internal	PROJECTCONTRIBUTOR	Intervenant	1	\N	0
48	project	external	PROJECTLEADER	Chef de Projet	1	\N	0
49	project	external	PROJECTCONTRIBUTOR	Intervenant	1	\N	0
50	project_task	internal	TASKEXECUTIVE	Responsable	1	\N	0
51	project_task	internal	TASKCONTRIBUTOR	Intervenant	1	\N	0
52	project_task	external	TASKEXECUTIVE	Responsable	1	\N	0
53	project_task	external	TASKCONTRIBUTOR	Intervenant	1	\N	0
54	supplier_proposal	internal	SALESREPFOLL	Responsable suivi de la demande	1	\N	0
55	supplier_proposal	external	BILLING	Contact fournisseur facturation	1	\N	0
56	supplier_proposal	external	SHIPPING	Contact fournisseur livraison	1	\N	0
57	supplier_proposal	external	SERVICE	Contact fournisseur prestation	1	\N	0
58	conferenceorbooth	internal	MANAGER	Conference or Booth manager	1	\N	0
59	conferenceorbooth	external	SPEAKER	Conference Speaker	1	\N	0
60	conferenceorbooth	external	RESPONSIBLE	Booth responsible	1	\N	0
61	societe	external	SALESREPTHIRD	Sales Representative	1	\N	0
\.


--
-- Data for Name: llx_c_type_fees; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_type_fees (id, code, label, type, accountancy_code, active, module, "position") FROM stdin;
1	TF_OTHER	Other	0	\N	1	\N	0
2	TF_TRIP	Transportation	0	\N	1	\N	0
3	TF_LUNCH	Lunch	0	\N	1	\N	0
4	EX_KME	ExpLabelKm	0	\N	1	\N	0
5	EX_FUE	ExpLabelFuelCV	0	\N	0	\N	0
6	EX_HOT	ExpLabelHotel	0	\N	0	\N	0
7	EX_PAR	ExpLabelParkingCV	0	\N	0	\N	0
8	EX_TOL	ExpLabelTollCV	0	\N	0	\N	0
9	EX_TAX	ExpLabelVariousTaxes	0	\N	0	\N	0
10	EX_IND	ExpLabelIndemnityTransSubscrip	0	\N	0	\N	0
11	EX_SUM	ExpLabelMaintenanceSupply	0	\N	0	\N	0
12	EX_SUO	ExpLabelOfficeSupplies	0	\N	0	\N	0
13	EX_CAR	ExpLabelCarRental	0	\N	0	\N	0
14	EX_DOC	ExpLabelDocumentation	0	\N	0	\N	0
15	EX_CUR	ExpLabelCustomersReceiving	0	\N	0	\N	0
16	EX_OTR	ExpLabelOtherReceiving	0	\N	0	\N	0
17	EX_POS	ExpLabelPostage	0	\N	0	\N	0
18	EX_CAM	ExpLabelMaintenanceRepairCV	0	\N	0	\N	0
19	EX_EMM	ExpLabelEmployeesMeal	0	\N	0	\N	0
20	EX_GUM	ExpLabelGuestsMeal	0	\N	0	\N	0
21	EX_BRE	ExpLabelBreakfast	0	\N	0	\N	0
22	EX_FUE_VP	ExpLabelFuelPV	0	\N	0	\N	0
23	EX_TOL_VP	ExpLabelTollPV	0	\N	0	\N	0
24	EX_PAR_VP	ExpLabelParkingPV	0	\N	0	\N	0
25	EX_CAM_VP	ExpLabelMaintenanceRepairPV	0	\N	0	\N	0
\.


--
-- Data for Name: llx_c_type_resource; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_type_resource (rowid, code, label, active) FROM stdin;
1	RES_ROOMS	Rooms	1
2	RES_CARS	Cars	1
\.


--
-- Data for Name: llx_c_typent; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_typent (id, code, libelle, fk_country, active, module, "position") FROM stdin;
1	TE_STARTUP	Start-up	\N	0	\N	0
2	TE_GROUP	Grand groupe	\N	1	\N	0
3	TE_MEDIUM	PME/PMI	\N	1	\N	0
4	TE_SMALL	TPE	\N	1	\N	0
5	TE_ADMIN	Administration	\N	1	\N	0
6	TE_WHOLE	Grossiste	\N	0	\N	0
7	TE_RETAIL	Revendeur	\N	0	\N	0
8	TE_PRIVATE	Particulier	\N	1	\N	0
100	TE_OTHER	Autres	\N	1	\N	0
231	TE_A_RI	Responsable Inscripto (typo A)	23	0	\N	0
232	TE_B_RNI	Responsable No Inscripto (typo B)	23	0	\N	0
233	TE_C_FE	Consumidor Final/Exento (typo C)	23	0	\N	0
\.


--
-- Data for Name: llx_c_units; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_units (rowid, code, sortorder, scale, label, short_label, unit_type, active) FROM stdin;
1	T	100	3	WeightUnitton	T	weight	1
2	KG	110	0	WeightUnitkg	kg	weight	1
3	G	120	-3	WeightUnitg	g	weight	1
4	MG	130	-6	WeightUnitmg	mg	weight	1
5	OZ	140	98	WeightUnitounce	Oz	weight	1
6	LB	150	99	WeightUnitpound	lb	weight	1
7	M	200	0	SizeUnitm	m	size	1
8	DM	210	-1	SizeUnitdm	dm	size	1
9	CM	220	-2	SizeUnitcm	cm	size	1
10	MM	230	-3	SizeUnitmm	mm	size	1
11	FT	240	98	SizeUnitfoot	ft	size	1
12	IN	250	99	SizeUnitinch	in	size	1
13	M2	300	0	SurfaceUnitm2	m2	surface	1
14	DM2	310	-2	SurfaceUnitdm2	dm2	surface	1
15	CM2	320	-4	SurfaceUnitcm2	cm2	surface	1
16	MM2	330	-6	SurfaceUnitmm2	mm2	surface	1
17	FT2	340	98	SurfaceUnitfoot2	ft2	surface	1
18	IN2	350	99	SurfaceUnitinch2	in2	surface	1
19	M3	400	0	VolumeUnitm3	m3	volume	1
20	DM3	410	-3	VolumeUnitdm3	dm3	volume	1
21	CM3	420	-6	VolumeUnitcm3	cm3	volume	1
22	MM3	430	-9	VolumeUnitmm3	mm3	volume	1
23	FT3	440	88	VolumeUnitfoot3	ft3	volume	1
24	IN3	450	89	VolumeUnitinch3	in3	volume	1
25	OZ3	460	97	VolumeUnitounce	Oz	volume	1
26	L	470	98	VolumeUnitlitre	L	volume	1
27	GAL	480	99	VolumeUnitgallon	gal	volume	1
28	P	500	0	Piece	p	qty	1
29	SET	510	0	Set	set	qty	1
30	S	600	1	second	s	time	1
31	MI	610	60	minute	mn	time	1
32	H	620	3600	hour	h	time	1
33	D	630	86400	day	d	time	1
34	W	640	604800	week	w	time	1
35	MO	650	2629800	month	m	time	1
36	Y	660	31557600	year	y	time	1
\.


--
-- Data for Name: llx_c_ziptown; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_c_ziptown (rowid, code, fk_county, fk_pays, zip, town, town_up, active) FROM stdin;
\.


--
-- Data for Name: llx_categorie; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_categorie (rowid, entity, fk_parent, label, ref_ext, type, description, color, "position", fk_soc, visible, date_creation, tms, fk_user_creat, fk_user_modif, import_key) FROM stdin;
\.


--
-- Data for Name: llx_categorie_account; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_categorie_account (fk_categorie, fk_account, import_key) FROM stdin;
\.


--
-- Data for Name: llx_categorie_actioncomm; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_categorie_actioncomm (fk_categorie, fk_actioncomm, import_key) FROM stdin;
\.


--
-- Data for Name: llx_categorie_contact; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_categorie_contact (fk_categorie, fk_socpeople, import_key) FROM stdin;
\.


--
-- Data for Name: llx_categorie_fournisseur; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_categorie_fournisseur (fk_categorie, fk_soc, import_key) FROM stdin;
\.


--
-- Data for Name: llx_categorie_lang; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_categorie_lang (rowid, fk_category, lang, label, description) FROM stdin;
\.


--
-- Data for Name: llx_categorie_member; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_categorie_member (fk_categorie, fk_member, import_key) FROM stdin;
\.


--
-- Data for Name: llx_categorie_product; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_categorie_product (fk_categorie, fk_product, import_key) FROM stdin;
\.


--
-- Data for Name: llx_categorie_project; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_categorie_project (fk_categorie, fk_project, import_key) FROM stdin;
\.


--
-- Data for Name: llx_categorie_societe; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_categorie_societe (fk_categorie, fk_soc, import_key) FROM stdin;
\.


--
-- Data for Name: llx_categorie_supplier_invoice; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_categorie_supplier_invoice (fk_categorie, fk_supplier_invoice, import_key) FROM stdin;
\.


--
-- Data for Name: llx_categorie_supplier_order; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_categorie_supplier_order (fk_categorie, fk_supplier_order, import_key) FROM stdin;
\.


--
-- Data for Name: llx_categorie_user; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_categorie_user (fk_categorie, fk_user, import_key) FROM stdin;
\.


--
-- Data for Name: llx_categories_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_categories_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_category_bankline; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_category_bankline (lineid, fk_categ, import_key) FROM stdin;
\.


--
-- Data for Name: llx_chargesociales; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_chargesociales (rowid, ref, date_ech, libelle, entity, tms, date_creation, date_valid, fk_user, fk_user_author, fk_user_modif, fk_user_valid, fk_type, fk_account, fk_mode_reglement, amount, paye, periode, fk_projet, note_private, note_public, import_key) FROM stdin;
\.


--
-- Data for Name: llx_commande; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_commande (rowid, ref, entity, ref_ext, ref_client, fk_soc, fk_projet, tms, date_creation, date_valid, date_cloture, date_commande, fk_user_author, fk_user_modif, fk_user_valid, fk_user_cloture, source, fk_statut, amount_ht, remise_percent, remise_absolue, remise, total_tva, localtax1, localtax2, revenuestamp, total_ht, total_ttc, signed_status, note_private, note_public, model_pdf, last_main_doc, module_source, pos_source, facture, fk_account, fk_currency, fk_cond_reglement, deposit_percent, fk_mode_reglement, date_livraison, fk_shipping_method, fk_warehouse, fk_availability, fk_input_reason, fk_delivery_address, fk_incoterms, location_incoterms, import_key, extraparams, fk_multicurrency, multicurrency_code, multicurrency_tx, multicurrency_total_ht, multicurrency_total_tva, multicurrency_total_ttc) FROM stdin;
\.


--
-- Data for Name: llx_commande_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_commande_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_commande_fournisseur; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_commande_fournisseur (rowid, ref, entity, ref_ext, ref_supplier, fk_soc, fk_projet, tms, date_creation, date_valid, date_approve, date_approve2, date_commande, fk_user_author, fk_user_modif, fk_user_valid, fk_user_approve, fk_user_approve2, source, fk_statut, billed, amount_ht, remise_percent, remise, total_tva, localtax1, localtax2, total_ht, total_ttc, note_private, note_public, model_pdf, last_main_doc, date_livraison, fk_account, fk_cond_reglement, fk_mode_reglement, fk_input_method, fk_incoterms, location_incoterms, import_key, extraparams, fk_multicurrency, multicurrency_code, multicurrency_tx, multicurrency_total_ht, multicurrency_total_tva, multicurrency_total_ttc) FROM stdin;
\.


--
-- Data for Name: llx_commande_fournisseur_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_commande_fournisseur_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_commande_fournisseur_log; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_commande_fournisseur_log (rowid, tms, datelog, fk_commande, fk_statut, fk_user, comment) FROM stdin;
\.


--
-- Data for Name: llx_commande_fournisseurdet; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_commande_fournisseurdet (rowid, fk_commande, fk_parent_line, fk_product, ref, label, description, vat_src_code, tva_tx, localtax1_tx, localtax1_type, localtax2_tx, localtax2_type, qty, remise_percent, remise, subprice, subprice_ttc, total_ht, total_tva, total_localtax1, total_localtax2, total_ttc, product_type, date_start, date_end, info_bits, special_code, rang, import_key, fk_unit, fk_multicurrency, multicurrency_code, multicurrency_subprice, multicurrency_subprice_ttc, multicurrency_total_ht, multicurrency_total_tva, multicurrency_total_ttc, extraparams) FROM stdin;
\.


--
-- Data for Name: llx_commande_fournisseurdet_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_commande_fournisseurdet_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_commandedet; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_commandedet (rowid, fk_commande, fk_parent_line, fk_product, label, description, vat_src_code, tva_tx, localtax1_tx, localtax1_type, localtax2_tx, localtax2_type, qty, remise_percent, remise, fk_remise_except, price, subprice, subprice_ttc, total_ht, total_tva, total_localtax1, total_localtax2, total_ttc, product_type, date_start, date_end, info_bits, buy_price_ht, fk_product_fournisseur_price, special_code, rang, fk_unit, import_key, ref_ext, fk_commandefourndet, fk_multicurrency, multicurrency_code, multicurrency_subprice, multicurrency_subprice_ttc, multicurrency_total_ht, multicurrency_total_tva, multicurrency_total_ttc, extraparams) FROM stdin;
\.


--
-- Data for Name: llx_commandedet_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_commandedet_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_comment; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_comment (rowid, datec, tms, description, fk_user_author, fk_user_modif, fk_element, element_type, entity, import_key) FROM stdin;
\.


--
-- Data for Name: llx_const; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_const (rowid, name, entity, value, type, visible, note, tms) FROM stdin;
2	MAIN_FEATURES_LEVEL	1	0	chaine	1	Level of features to show: -1=stable+deprecated, 0=stable only (default), 1=stable+experimental, 2=stable+experimental+development	2026-02-08 16:13:37.833311
3	SYSLOG_HANDLERS	0	["mod_syslog_file"]	chaine	0	Which logger to use	2026-02-08 16:13:37.833311
4	SYSLOG_FILE	0	DOL_DATA_ROOT/dolibarr.log	chaine	0	Directory where to write log file	2026-02-08 16:13:37.833311
5	SYSLOG_LEVEL	0	7	chaine	0	Level of debug info to show	2026-02-08 16:13:37.833311
6	MAILING_LIMIT_SENDBYWEB	0	25	chaine	0	Number of targets to defined packet size when sending mass email	2026-02-08 16:13:37.833311
7	MAIN_UPLOAD_DOC	1	2048	chaine	0	Max size for file upload (0 means no upload allowed)	2026-02-08 16:13:37.833311
8	MAIN_ENABLE_OVERWRITE_TRANSLATION	1	1	chaine	0	Enable translation overwrite	2026-02-08 16:13:37.833311
9	MAIN_ENABLE_DEFAULT_VALUES	1	1	chaine	0	Enable default value overwrite	2026-02-08 16:13:37.833311
10	MAIN_MONNAIE	1	EUR	chaine	0	Currency	2026-02-08 16:13:37.833311
11	MAIN_MAIL_SMTP_SERVER	1		chaine	0	Host or ip address for SMTP server	2026-02-08 16:13:37.833311
12	MAIN_MAIL_SMTP_PORT	1		chaine	0	Port for SMTP server	2026-02-08 16:13:37.833311
13	MAIN_MAIL_EMAIL_FROM	1	robot@domain.com	chaine	0	email emitter for Dolibarr automatic emails	2026-02-08 16:13:37.833311
14	MAIN_SIZE_LISTE_LIMIT	1	20	chaine	0	Maximum length of lists	2026-02-08 16:13:37.833311
15	MAIN_SIZE_SHORTLIST_LIMIT	1	3	chaine	0	Maximum length of short lists	2026-02-08 16:13:37.833311
16	MAIN_MENU_STANDARD	1	eldy_menu.php	chaine	0	Menu manager for internal users	2026-02-08 16:13:37.833311
17	MAIN_MENUFRONT_STANDARD	1	eldy_menu.php	chaine	0	Menu manager for external users	2026-02-08 16:13:37.833311
18	MAIN_MENU_SMARTPHONE	1	eldy_menu.php	chaine	0	Menu manager for internal users using smartphones	2026-02-08 16:13:37.833311
19	MAIN_MENUFRONT_SMARTPHONE	1	eldy_menu.php	chaine	0	Menu manager for external users using smartphones	2026-02-08 16:13:37.833311
20	THEME_ELDY_USEBORDERONTABLE	1	1	chaine	0	Enable the border in theme	2026-02-08 16:13:37.833311
21	MAIN_DELAY_ACTIONS_TODO	1	7	chaine	0	Tolérance de retard avant alerte (en jours) sur actions planifiées non réalisées	2026-02-08 16:13:37.833311
22	MAIN_DELAY_ORDERS_TO_PROCESS	1	2	chaine	0	Tolérance de retard avant alerte (en jours) sur commandes clients non traitées	2026-02-08 16:13:37.833311
23	MAIN_DELAY_SUPPLIER_ORDERS_TO_PROCESS	1	7	chaine	0	Tolérance de retard avant alerte (en jours) sur commandes fournisseurs non traitées	2026-02-08 16:13:37.833311
24	MAIN_DELAY_PROPALS_TO_CLOSE	1	31	chaine	0	Tolérance de retard avant alerte (en jours) sur propales à cloturer	2026-02-08 16:13:37.833311
25	MAIN_DELAY_PROPALS_TO_BILL	1	7	chaine	0	Tolérance de retard avant alerte (en jours) sur propales non facturées	2026-02-08 16:13:37.833311
26	MAIN_DELAY_CUSTOMER_BILLS_UNPAYED	1	31	chaine	0	Tolérance de retard avant alerte (en jours) sur factures client impayées	2026-02-08 16:13:37.833311
27	MAIN_DELAY_SUPPLIER_BILLS_TO_PAY	1	2	chaine	0	Tolérance de retard avant alerte (en jours) sur factures fournisseur impayées	2026-02-08 16:13:37.833311
28	MAIN_DELAY_NOT_ACTIVATED_SERVICES	1	0	chaine	0	Tolérance de retard avant alerte (en jours) sur services à activer	2026-02-08 16:13:37.833311
29	MAIN_DELAY_RUNNING_SERVICES	1	0	chaine	0	Tolérance de retard avant alerte (en jours) sur services expirés	2026-02-08 16:13:37.833311
30	MAIN_DELAY_MEMBERS	1	31	chaine	0	Tolérance de retard avant alerte (en jours) sur cotisations adhérent en retard	2026-02-08 16:13:37.833311
31	MAIN_DELAY_TRANSACTIONS_TO_CONCILIATE	1	62	chaine	0	Tolérance de retard avant alerte (en jours) sur rapprochements bancaires à faire	2026-02-08 16:13:37.833311
32	MAIN_DELAY_EXPENSEREPORTS_TO_PAY	1	31	chaine	0	Tolérance de retard avant alerte (en jours) sur les notes de frais impayées	2026-02-08 16:13:37.833311
33	MAILING_EMAIL_FROM	1	no-reply@mydomain.tld	chaine	0	EMail emmetteur pour les envois d emailings	2026-02-08 16:13:37.833311
34	PRODUCT_ADDON_PDF_ODT_PATH	1	DOL_DATA_ROOT/doctemplates/products	chaine	0	\N	2026-02-08 16:13:37.833311
35	CONTRACT_ADDON_PDF_ODT_PATH	1	DOL_DATA_ROOT/doctemplates/contracts	chaine	0	\N	2026-02-08 16:13:37.833311
36	USERGROUP_ADDON_PDF_ODT_PATH	1	DOL_DATA_ROOT/doctemplates/usergroups	chaine	0	\N	2026-02-08 16:13:37.833311
37	USER_ADDON_PDF_ODT_PATH	1	DOL_DATA_ROOT/doctemplates/users	chaine	0	\N	2026-02-08 16:13:37.833311
38	PRODUCT_PRICE_BASE_TYPE	1	HT	string	0	\N	2026-02-08 16:13:37.833311
39	ADHERENT_LOGIN_NOT_REQUIRED	1	1	string	0	\N	2026-02-08 16:13:37.833311
40	MAIN_MODULE_USER	0	1	string	0	{"authorid":0,"ip":"172.18.0.2","lastactivationversion":"dolibarr"}	2026-02-08 16:14:29.029274
41	DATABASE_PWD_ENCRYPTED	1	1	chaine	0		2026-02-08 16:14:29.053069
42	MAIN_SECURITY_SALT	0	20260208161429	chaine	0		2026-02-08 16:14:29.053554
43	MAIN_SECURITY_HASH_ALGO	0	password_hash	chaine	0		2026-02-08 16:14:29.053875
44	MAIN_VERSION_FIRST_INSTALL	0	22.0.3	chaine	0	Dolibarr version when first install	2026-02-08 16:14:29.122176
45	MAIN_VERSION_LAST_INSTALL	0	22.0.3	chaine	0	Dolibarr version when last install	2026-02-08 16:14:29.122577
46	MAIN_MODULE_EXPORT	1	1	string	0	{"authorid":0,"ip":"172.18.0.2","lastactivationversion":"dolibarr"}	2026-02-08 16:14:29.122577
47	MAIN_MODULE_AGENDA	1	1	string	0	{"authorid":0,"ip":"172.18.0.2","lastactivationversion":"dolibarr"}	2026-02-08 16:14:29.122577
48	MAIN_AGENDA_ACTIONAUTO_COMPANY_SENTBYMAIL	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
49	MAIN_AGENDA_ACTIONAUTO_COMPANY_DELETE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
50	MAIN_AGENDA_ACTIONAUTO_COMPANY_MODIFY	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
51	MAIN_AGENDA_ACTIONAUTO_COMPANY_RIB_CREATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
52	MAIN_AGENDA_ACTIONAUTO_COMPANY_CREATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
53	MAIN_AGENDA_ACTIONAUTO_COMPANY_RIB_MODIFY	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
54	MAIN_AGENDA_ACTIONAUTO_COMPANY_RIB_DELETE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
55	MAIN_AGENDA_ACTIONAUTO_PROPAL_VALIDATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
56	MAIN_AGENDA_ACTIONAUTO_PROPAL_MODIFY	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
57	MAIN_AGENDA_ACTIONAUTO_PROPAL_CLASSIFY_BILLED	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
58	MAIN_AGENDA_ACTIONAUTO_PROPAL_DELETE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
59	MAIN_AGENDA_ACTIONAUTO_PROPAL_CLOSE_SIGNED	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
60	MAIN_AGENDA_ACTIONAUTO_PROPAL_CLOSE_REFUSED	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
61	MAIN_AGENDA_ACTIONAUTO_PROPAL_SENTBYMAIL	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
62	MAIN_AGENDA_ACTIONAUTO_ORDER_VALIDATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
63	MAIN_AGENDA_ACTIONAUTO_ORDER_CLASSIFY_BILLED	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
64	MAIN_AGENDA_ACTIONAUTO_ORDER_CLOSE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
65	MAIN_AGENDA_ACTIONAUTO_ORDER_MODIFY	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
66	MAIN_AGENDA_ACTIONAUTO_ORDER_CANCEL	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
67	MAIN_AGENDA_ACTIONAUTO_ORDER_SENTBYMAIL	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
68	MAIN_AGENDA_ACTIONAUTO_ORDER_DELETE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
69	MAIN_AGENDA_ACTIONAUTO_BILL_VALIDATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
70	MAIN_AGENDA_ACTIONAUTO_BILL_MODIFY	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
71	MAIN_AGENDA_ACTIONAUTO_BILL_PAYED	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
72	MAIN_AGENDA_ACTIONAUTO_BILL_CANCEL	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
73	MAIN_AGENDA_ACTIONAUTO_BILL_SENTBYMAIL	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
74	MAIN_AGENDA_ACTIONAUTO_BILL_UNVALIDATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
75	MAIN_AGENDA_ACTIONAUTO_BILL_DELETE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
76	MAIN_AGENDA_ACTIONAUTO_PROPOSAL_SUPPLIER_VALIDATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
77	MAIN_AGENDA_ACTIONAUTO_PROPOSAL_SUPPLIER_MODIFY	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
78	MAIN_AGENDA_ACTIONAUTO_PROPOSAL_SUPPLIER_SENTBYMAIL	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
79	MAIN_AGENDA_ACTIONAUTO_PROPOSAL_SUPPLIER_CLOSE_SIGNED	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
80	MAIN_AGENDA_ACTIONAUTO_PROPOSAL_SUPPLIER_CLOSE_REFUSED	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
81	MAIN_AGENDA_ACTIONAUTO_PROPOSAL_SUPPLIER_DELETE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
82	MAIN_AGENDA_ACTIONAUTO_ORDER_SUPPLIER_VALIDATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
83	MAIN_AGENDA_ACTIONAUTO_ORDER_SUPPLIER_REFUSE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
84	MAIN_AGENDA_ACTIONAUTO_ORDER_SUPPLIER_APPROVE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
85	MAIN_AGENDA_ACTIONAUTO_ORDER_SUPPLIER_MODIFY	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
86	MAIN_AGENDA_ACTIONAUTO_ORDER_SUPPLIER_SUBMIT	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
87	MAIN_AGENDA_ACTIONAUTO_ORDER_SUPPLIER_RECEIVE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
88	MAIN_AGENDA_ACTIONAUTO_ORDER_SUPPLIER_CANCEL	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
89	MAIN_AGENDA_ACTIONAUTO_ORDER_SUPPLIER_SENTBYMAIL	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
90	MAIN_AGENDA_ACTIONAUTO_ORDER_SUPPLIER_CLASSIFY_BILLED	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
91	MAIN_AGENDA_ACTIONAUTO_ORDER_SUPPLIER_DELETE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
92	MAIN_AGENDA_ACTIONAUTO_BILL_SUPPLIER_VALIDATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
93	MAIN_AGENDA_ACTIONAUTO_BILL_SUPPLIER_MODIFY	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
94	MAIN_AGENDA_ACTIONAUTO_BILL_SUPPLIER_UNVALIDATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
95	MAIN_AGENDA_ACTIONAUTO_BILL_SUPPLIER_PAYED	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
96	MAIN_AGENDA_ACTIONAUTO_BILL_SUPPLIER_SENTBYMAIL	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
97	MAIN_AGENDA_ACTIONAUTO_BILL_SUPPLIER_CANCELED	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
98	MAIN_AGENDA_ACTIONAUTO_BILL_SUPPLIER_DELETE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
99	MAIN_AGENDA_ACTIONAUTO_CONTRACT_VALIDATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
100	MAIN_AGENDA_ACTIONAUTO_CONTRACT_MODIFY	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
101	MAIN_AGENDA_ACTIONAUTO_CONTRACT_SENTBYMAIL	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
102	MAIN_AGENDA_ACTIONAUTO_CONTRACT_DELETE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
103	MAIN_AGENDA_ACTIONAUTO_SHIPPING_VALIDATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
104	MAIN_AGENDA_ACTIONAUTO_SHIPPING_MODIFY	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
105	MAIN_AGENDA_ACTIONAUTO_SHIPPING_SENTBYMAIL	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
106	MAIN_AGENDA_ACTIONAUTO_SHIPPING_DELETE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
107	MAIN_AGENDA_ACTIONAUTO_RECEPTION_VALIDATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
108	MAIN_AGENDA_ACTIONAUTO_RECEPTION_SENTBYMAIL	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
109	MAIN_AGENDA_ACTIONAUTO_MEMBER_VALIDATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
110	MAIN_AGENDA_ACTIONAUTO_MEMBER_MODIFY	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
111	MAIN_AGENDA_ACTIONAUTO_MEMBER_SENTBYMAIL	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
112	MAIN_AGENDA_ACTIONAUTO_MEMBER_SUBSCRIPTION_CREATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
113	MAIN_AGENDA_ACTIONAUTO_MEMBER_SUBSCRIPTION_MODIFY	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
114	MAIN_AGENDA_ACTIONAUTO_MEMBER_SUBSCRIPTION_DELETE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
115	MAIN_AGENDA_ACTIONAUTO_MEMBER_RESILIATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
116	MAIN_AGENDA_ACTIONAUTO_MEMBER_DELETE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
117	MAIN_AGENDA_ACTIONAUTO_MEMBER_EXCLUDE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
118	MAIN_AGENDA_ACTIONAUTO_FICHINTER_VALIDATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
119	MAIN_AGENDA_ACTIONAUTO_FICHINTER_MODIFY	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
120	MAIN_AGENDA_ACTIONAUTO_FICHINTER_CLASSIFY_BILLED	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
121	MAIN_AGENDA_ACTIONAUTO_FICHINTER_CLASSIFY_UNBILLED	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
122	MAIN_AGENDA_ACTIONAUTO_FICHINTER_REOPEN	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
123	MAIN_AGENDA_ACTIONAUTO_FICHINTER_SENTBYMAIL	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
124	MAIN_AGENDA_ACTIONAUTO_FICHINTER_DELETE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
125	MAIN_AGENDA_ACTIONAUTO_FICHINTER_CLOSE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
126	MAIN_AGENDA_ACTIONAUTO_PRODUCT_CREATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
127	MAIN_AGENDA_ACTIONAUTO_PRODUCT_MODIFY	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
128	MAIN_AGENDA_ACTIONAUTO_PRODUCT_DELETE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
129	MAIN_AGENDA_ACTIONAUTO_CONTACT_CREATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
130	MAIN_AGENDA_ACTIONAUTO_CONTACT_MODIFY	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
131	MAIN_AGENDA_ACTIONAUTO_CONTACT_SENTBYMAIL	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
132	MAIN_AGENDA_ACTIONAUTO_CONTACT_DELETE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
133	MAIN_AGENDA_ACTIONAUTO_PROJECT_CREATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
134	MAIN_AGENDA_ACTIONAUTO_PROJECT_VALIDATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
135	MAIN_AGENDA_ACTIONAUTO_PROJECT_MODIFY	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
136	MAIN_AGENDA_ACTIONAUTO_PROJECT_DELETE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
137	MAIN_AGENDA_ACTIONAUTO_PROJECT_SENTBYMAIL	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
138	MAIN_AGENDA_ACTIONAUTO_PROJECT_CLOSE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
139	MAIN_AGENDA_ACTIONAUTO_TICKET_CREATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
140	MAIN_AGENDA_ACTIONAUTO_TICKET_MODIFY	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
141	MAIN_AGENDA_ACTIONAUTO_TICKET_ASSIGNED	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
142	MAIN_AGENDA_ACTIONAUTO_TICKET_CLOSE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
143	MAIN_AGENDA_ACTIONAUTO_TICKET_SENTBYMAIL	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
144	MAIN_AGENDA_ACTIONAUTO_TICKET_DELETE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
145	MAIN_AGENDA_ACTIONAUTO_EXPENSE_REPORT_CREATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
146	MAIN_AGENDA_ACTIONAUTO_EXPENSE_REPORT_VALIDATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
147	MAIN_AGENDA_ACTIONAUTO_EXPENSE_REPORT_MODIFY	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
148	MAIN_AGENDA_ACTIONAUTO_EXPENSE_REPORT_APPROVE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
149	MAIN_AGENDA_ACTIONAUTO_EXPENSE_REPORT_PAID	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
150	MAIN_AGENDA_ACTIONAUTO_EXPENSE_REPORT_DELETE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
151	MAIN_AGENDA_ACTIONAUTO_USER_SENTBYMAIL	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
152	MAIN_AGENDA_ACTIONAUTO_USER_CREATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
153	MAIN_AGENDA_ACTIONAUTO_USER_MODIFY	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
154	MAIN_AGENDA_ACTIONAUTO_USER_DELETE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
155	MAIN_AGENDA_ACTIONAUTO_USER_NEW_PASSWORD	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
156	MAIN_AGENDA_ACTIONAUTO_USER_ENABLEDISABLE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
157	MAIN_AGENDA_ACTIONAUTO_BOM_VALIDATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
158	MAIN_AGENDA_ACTIONAUTO_BOM_UNVALIDATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
159	MAIN_AGENDA_ACTIONAUTO_BOM_CLOSE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
160	MAIN_AGENDA_ACTIONAUTO_BOM_REOPEN	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
161	MAIN_AGENDA_ACTIONAUTO_BOM_DELETE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
162	MAIN_AGENDA_ACTIONAUTO_MRP_MO_VALIDATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
163	MAIN_AGENDA_ACTIONAUTO_MRP_MO_PRODUCED	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
164	MAIN_AGENDA_ACTIONAUTO_MRP_MO_DELETE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
165	MAIN_AGENDA_ACTIONAUTO_MRP_MO_CANCEL	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
166	MAIN_AGENDA_ACTIONAUTO_ACTION_CREATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
167	MAIN_AGENDA_ACTIONAUTO_HOLIDAY_CREATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
168	MAIN_AGENDA_ACTIONAUTO_HOLIDAY_MODIFY	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
169	MAIN_AGENDA_ACTIONAUTO_HOLIDAY_VALIDATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
170	MAIN_AGENDA_ACTIONAUTO_HOLIDAY_CANCEL	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
171	MAIN_AGENDA_ACTIONAUTO_HOLIDAY_APPROVE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
172	MAIN_AGENDA_ACTIONAUTO_HOLIDAY_DELETE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
173	MAIN_AGENDA_ACTIONAUTO_BILLREC_CREATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
174	MAIN_AGENDA_ACTIONAUTO_BILLREC_MODIFY	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
175	MAIN_AGENDA_ACTIONAUTO_BILLREC_DELETE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
176	MAIN_AGENDA_ACTIONAUTO_HRM_EVALUATION_CREATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
177	MAIN_AGENDA_ACTIONAUTO_HRM_EVALUATION_MODIFY	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
178	MAIN_AGENDA_ACTIONAUTO_HRM_EVALUATION_VALIDATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
179	MAIN_AGENDA_ACTIONAUTO_HRM_EVALUATION_UNVALIDATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
180	MAIN_AGENDA_ACTIONAUTO_HRM_EVALUATION_DELETE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
181	MAIN_AGENDA_ACTIONAUTO_RECRUITMENTJOBPOSITION_CREATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
182	MAIN_AGENDA_ACTIONAUTO_RECRUITMENTJOBPOSITION_MODIFY	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
183	MAIN_AGENDA_ACTIONAUTO_RECRUITMENTJOBPOSITION_SENTBYMAIL	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
184	MAIN_AGENDA_ACTIONAUTO_RECRUITMENTJOBPOSITION_DELETE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
185	MAIN_AGENDA_ACTIONAUTO_RECRUITMENTCANDIDATURE_CREATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
186	MAIN_AGENDA_ACTIONAUTO_RECRUITMENTCANDIDATURE_MODIFY	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
187	MAIN_AGENDA_ACTIONAUTO_RECRUITMENTCANDIDATURE_SENTBYMAIL	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
188	MAIN_AGENDA_ACTIONAUTO_RECRUITMENTCANDIDATURE_DELETE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
189	MAIN_AGENDA_ACTIONAUTO_KNOWLEDGERECORD_CREATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
190	MAIN_AGENDA_ACTIONAUTO_KNOWLEDGERECORD_MODIFY	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
191	MAIN_AGENDA_ACTIONAUTO_KNOWLEDGERECORD_UNVALIDATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
192	MAIN_AGENDA_ACTIONAUTO_KNOWLEDGERECORD_SENTBYMAIL	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
193	MAIN_AGENDA_ACTIONAUTO_KNOWLEDGERECORD_CANCEL	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
194	MAIN_AGENDA_ACTIONAUTO_KNOWLEDGERECORD_VALIDATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
195	MAIN_AGENDA_ACTIONAUTO_KNOWLEDGERECORD_REOPEN	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
196	MAIN_AGENDA_ACTIONAUTO_KNOWLEDGERECORD_DELETE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
197	MAIN_AGENDA_ACTIONAUTO_PARTNERSHIP_CREATE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
198	MAIN_AGENDA_ACTIONAUTO_PARTNERSHIP_MODIFY	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
199	MAIN_AGENDA_ACTIONAUTO_PARTNERSHIP_SENTBYMAIL	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
200	MAIN_AGENDA_ACTIONAUTO_PARTNERSHIP_DELETE	1	1	chaine	0	\N	2026-02-08 16:14:29.122577
201	MAIN_MODULE_FCKEDITOR	1	1	string	0	{"authorid":0,"ip":"172.18.0.2","lastactivationversion":"dolibarr"}	2026-02-08 16:14:29.122577
202	FCKEDITOR_ENABLE_SOCIETE	1	1	yesno	0	WYSIWYG for the fields descriptions of elements (except products/services)	2026-02-08 16:14:29.122577
203	FCKEDITOR_ENABLE_DETAILS	1	1	yesno	0	WYSIWYG for products details lines for all entities	2026-02-08 16:14:29.122577
204	FCKEDITOR_ENABLE_USERSIGN	1	1	yesno	0	WYSIWYG for user signature	2026-02-08 16:14:29.122577
205	FCKEDITOR_ENABLE_MAILING	1	1	yesno	0	WYSIWYG for mass emailings	2026-02-08 16:14:29.122577
206	FCKEDITOR_ENABLE_MAIL	1	1	yesno	0	WYSIWYG for products details lines for all entities	2026-02-08 16:14:29.122577
207	MAIN_MODULE_IMPORT	1	1	string	0	{"authorid":0,"ip":"172.18.0.2","lastactivationversion":"dolibarr"}	2026-02-08 16:14:29.122577
208	MAIN_LANG_DEFAULT	1	fr_FR	chaine	0	Default language	2026-02-08 16:14:29.122577
\.


--
-- Data for Name: llx_contrat; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_contrat (rowid, ref, ref_customer, ref_supplier, ref_ext, entity, tms, datec, date_contrat, statut, fin_validite, date_cloture, fk_soc, fk_projet, fk_commercial_signature, fk_commercial_suivi, fk_user_author, fk_user_modif, fk_user_cloture, total_tva, localtax1, localtax2, revenuestamp, total_ht, total_ttc, denormalized_lower_planned_end_date, signed_status, online_sign_ip, online_sign_name, note_private, note_public, model_pdf, last_main_doc, import_key, extraparams) FROM stdin;
\.


--
-- Data for Name: llx_contrat_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_contrat_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_contratdet; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_contratdet (rowid, tms, fk_contrat, fk_product, statut, label, description, fk_remise_except, date_commande, date_ouverture_prevue, date_ouverture, date_fin_validite, date_cloture, vat_src_code, tva_tx, localtax1_tx, localtax1_type, localtax2_tx, localtax2_type, qty, remise_percent, subprice, subprice_ttc, total_ht, total_tva, total_localtax1, total_localtax2, total_ttc, product_type, info_bits, rang, buy_price_ht, fk_product_fournisseur_price, fk_user_author, fk_user_ouverture, fk_user_cloture, commentaire, fk_unit, fk_multicurrency, multicurrency_code, multicurrency_subprice, multicurrency_subprice_ttc, multicurrency_total_ht, multicurrency_total_tva, multicurrency_total_ttc, extraparams) FROM stdin;
\.


--
-- Data for Name: llx_contratdet_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_contratdet_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_cronjob; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_cronjob (rowid, tms, datec, jobtype, label, command, classesname, objectname, methodename, params, md5params, module_name, priority, datelastrun, datenextrun, datestart, dateend, datelastresult, lastresult, lastoutput, unitfrequency, frequency, maxrun, nbrun, autodelete, status, processing, pid, test, fk_user_author, fk_user_mod, fk_mailing, note, libname, email_alert, entity) FROM stdin;
1	2026-02-08 16:14:29.122577	2026-02-08 16:14:29	method	SendEmailsReminders		comm/action/class/actioncomm.class.php	ActionComm	sendEmailsReminder			agenda	10	\N	2026-02-08 16:14:29	2026-02-08 16:14:29	\N	\N	\N	\N	60	5	0	0	0	1	0	\N	isModEnabled("agenda")	\N	\N	\N	SendEMailsReminder		\N	1
\.


--
-- Data for Name: llx_default_values; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_default_values (rowid, entity, type, user_id, page, param, value) FROM stdin;
\.


--
-- Data for Name: llx_delivery; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_delivery (rowid, tms, ref, entity, fk_soc, ref_ext, ref_customer, date_creation, fk_user_author, date_valid, fk_user_valid, date_delivery, fk_address, fk_statut, total_ht, note_private, note_public, model_pdf, last_main_doc, fk_incoterms, location_incoterms, import_key, extraparams) FROM stdin;
\.


--
-- Data for Name: llx_delivery_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_delivery_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_deliverydet; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_deliverydet (rowid, fk_delivery, fk_origin_line, fk_product, description, qty, subprice, subprice_ttc, total_ht, rang, extraparams) FROM stdin;
\.


--
-- Data for Name: llx_deliverydet_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_deliverydet_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_document_model; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_document_model (rowid, nom, entity, type, libelle, description) FROM stdin;
\.


--
-- Data for Name: llx_ecm_directories; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_ecm_directories (rowid, label, entity, fk_parent, description, cachenbofdoc, fullpath, extraparams, date_c, tms, fk_user_c, fk_user_m, note_private, note_public, acl) FROM stdin;
\.


--
-- Data for Name: llx_ecm_directories_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_ecm_directories_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_ecm_files; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_ecm_files (rowid, ref, label, share, share_pass, entity, filepath, filename, src_object_type, src_object_id, agenda_id, fullpath_orig, description, keywords, content, cover, "position", gen_or_uploaded, extraparams, date_c, tms, fk_user_c, fk_user_m, note_private, note_public, acl) FROM stdin;
\.


--
-- Data for Name: llx_ecm_files_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_ecm_files_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_element_categorie; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_element_categorie (rowid, fk_categorie, fk_element, import_key) FROM stdin;
\.


--
-- Data for Name: llx_element_contact; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_element_contact (rowid, datecreate, statut, element_id, fk_c_type_contact, fk_socpeople) FROM stdin;
\.


--
-- Data for Name: llx_element_element; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_element_element (rowid, fk_source, sourcetype, fk_target, targettype, relationtype) FROM stdin;
\.


--
-- Data for Name: llx_element_resources; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_element_resources (rowid, element_id, element_type, resource_id, resource_type, busy, mandatory, duree, fk_user_create, tms) FROM stdin;
\.


--
-- Data for Name: llx_element_time; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_element_time (rowid, ref_ext, fk_element, elementtype, element_date, element_datehour, element_date_withhour, element_duration, fk_product, fk_user, thm, invoice_id, invoice_line_id, intervention_id, intervention_line_id, import_key, datec, tms, note) FROM stdin;
\.


--
-- Data for Name: llx_emailcollector_emailcollector; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_emailcollector_emailcollector (rowid, entity, ref, label, description, host, port, hostcharset, imap_encryption, norsh, login, acces_type, oauth_service, password, source_directory, target_directory, maxemailpercollect, datelastresult, codelastresult, lastresult, datelastok, note_public, note_private, date_creation, tms, fk_user_creat, fk_user_modif, "position", import_key, status) FROM stdin;
\.


--
-- Data for Name: llx_emailcollector_emailcollectoraction; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_emailcollector_emailcollectoraction (rowid, fk_emailcollector, type, actionparam, date_creation, tms, fk_user_creat, fk_user_modif, "position", import_key, status) FROM stdin;
\.


--
-- Data for Name: llx_emailcollector_emailcollectorfilter; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_emailcollector_emailcollectorfilter (rowid, fk_emailcollector, type, rulevalue, date_creation, tms, fk_user_creat, fk_user_modif, import_key, status) FROM stdin;
\.


--
-- Data for Name: llx_entrepot; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_entrepot (rowid, ref, datec, tms, entity, fk_project, description, lieu, address, zip, town, fk_departement, fk_pays, phone, fax, barcode, fk_barcode_type, warehouse_usage, statut, fk_user_author, model_pdf, import_key, fk_parent) FROM stdin;
\.


--
-- Data for Name: llx_entrepot_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_entrepot_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_establishment; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_establishment (rowid, entity, ref, label, name, address, zip, town, fk_state, fk_country, profid1, profid2, profid3, phone, fk_user_author, fk_user_mod, datec, tms, status) FROM stdin;
\.


--
-- Data for Name: llx_event_element; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_event_element (rowid, fk_source, fk_target, targettype) FROM stdin;
\.


--
-- Data for Name: llx_eventorganization_conferenceorboothattendee; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_eventorganization_conferenceorboothattendee (rowid, ref, fk_soc, fk_actioncomm, fk_project, fk_invoice, email, email_company, firstname, lastname, date_subscription, amount, note_public, note_private, date_creation, tms, fk_user_creat, fk_user_modif, last_main_doc, ip, import_key, model_pdf, status) FROM stdin;
\.


--
-- Data for Name: llx_eventorganization_conferenceorboothattendee_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_eventorganization_conferenceorboothattendee_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_events; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_events (rowid, tms, type, entity, prefix_session, dateevent, fk_user, description, ip, user_agent, fk_object, authentication_method, fk_oauth_token) FROM stdin;
\.


--
-- Data for Name: llx_expedition; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_expedition (rowid, tms, ref, entity, fk_soc, fk_projet, ref_ext, ref_customer, date_creation, fk_user_author, fk_user_modif, date_valid, fk_user_valid, date_delivery, date_expedition, fk_address, fk_shipping_method, tracking_number, fk_statut, billed, height, width, size_units, size, weight_units, weight, signed_status, online_sign_ip, online_sign_name, note_private, note_public, model_pdf, last_main_doc, fk_incoterms, location_incoterms, import_key, extraparams) FROM stdin;
\.


--
-- Data for Name: llx_expedition_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_expedition_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_expedition_package; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_expedition_package (rowid, fk_expedition, description, value, fk_package_type, height, width, size, size_units, weight, weight_units, dangerous_goods, tail_lift, rang) FROM stdin;
\.


--
-- Data for Name: llx_expeditiondet; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_expeditiondet (rowid, fk_expedition, fk_element, fk_elementdet, element_type, fk_product, fk_parent, qty, fk_unit, fk_entrepot, description, rang, extraparams) FROM stdin;
\.


--
-- Data for Name: llx_expeditiondet_batch; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_expeditiondet_batch (rowid, fk_expeditiondet, eatby, sellby, batch, qty, fk_origin_stock, fk_warehouse) FROM stdin;
\.


--
-- Data for Name: llx_expeditiondet_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_expeditiondet_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_expensereport; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_expensereport (rowid, ref, entity, ref_number_int, ref_ext, total_ht, total_tva, localtax1, localtax2, total_ttc, date_debut, date_fin, date_create, date_valid, date_approve, date_refuse, date_cancel, tms, fk_user_author, fk_user_creat, fk_user_modif, fk_user_valid, fk_user_validator, fk_user_approve, fk_user_refuse, fk_user_cancel, fk_statut, fk_c_paiement, paid, note_public, note_private, detail_refuse, detail_cancel, integration_compta, fk_bank_account, model_pdf, last_main_doc, fk_multicurrency, multicurrency_code, multicurrency_tx, multicurrency_total_ht, multicurrency_total_tva, multicurrency_total_ttc, import_key, extraparams) FROM stdin;
\.


--
-- Data for Name: llx_expensereport_det; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_expensereport_det (rowid, fk_expensereport, docnumber, fk_c_type_fees, fk_c_exp_tax_cat, fk_projet, comments, product_type, qty, subprice, subprice_ttc, value_unit, remise_percent, vat_src_code, tva_tx, localtax1_tx, localtax1_type, localtax2_tx, localtax2_type, total_ht, total_tva, total_localtax1, total_localtax2, total_ttc, date, info_bits, special_code, fk_multicurrency, multicurrency_code, multicurrency_subprice, multicurrency_subprice_ttc, multicurrency_total_ht, multicurrency_total_tva, multicurrency_total_ttc, fk_facture, fk_ecm_files, fk_code_ventilation, rang, import_key, rule_warning_message) FROM stdin;
\.


--
-- Data for Name: llx_expensereport_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_expensereport_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_export_model; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_export_model (rowid, entity, fk_user, label, type, field, filter) FROM stdin;
\.


--
-- Data for Name: llx_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_extrafields (rowid, name, entity, elementtype, label, type, size, fieldcomputed, fielddefault, fieldunique, fieldrequired, perms, enabled, module, pos, alwayseditable, param, list, printable, totalizable, langs, help, aiprompt, css, cssview, csslist, fk_user_author, fk_user_modif, datec, tms) FROM stdin;
\.


--
-- Data for Name: llx_facture; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_facture (rowid, ref, entity, ref_ext, ref_client, type, subtype, fk_soc, datec, datef, date_pointoftax, date_valid, tms, date_closing, paye, remise_percent, remise_absolue, remise, close_code, close_missing_amount, close_note, total_tva, localtax1, localtax2, revenuestamp, total_ht, total_ttc, fk_statut, fk_user_author, fk_user_modif, fk_user_valid, fk_user_closing, module_source, pos_source, fk_fac_rec_source, fk_facture_source, fk_projet, increment, fk_account, fk_currency, fk_cond_reglement, fk_mode_reglement, date_lim_reglement, payment_reference, note_private, note_public, model_pdf, last_main_doc, fk_input_reason, fk_incoterms, location_incoterms, fk_transport_mode, prorata_discount, situation_cycle_ref, situation_counter, situation_final, retained_warranty, retained_warranty_date_limit, retained_warranty_fk_cond_reglement, import_key, extraparams, is_also_delivery_note, fk_multicurrency, multicurrency_code, multicurrency_tx, multicurrency_total_ht, multicurrency_total_tva, multicurrency_total_ttc) FROM stdin;
\.


--
-- Data for Name: llx_facture_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_facture_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_facture_fourn; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_facture_fourn (rowid, ref, ref_supplier, entity, ref_ext, type, subtype, fk_soc, datec, datef, date_pointoftax, date_valid, tms, date_closing, libelle, paye, amount, remise, close_code, close_missing_amount, close_note, vat_reverse_charge, tva, total_tva, localtax1, localtax2, revenuestamp, total_ht, total_ttc, fk_statut, fk_user_author, fk_user_modif, fk_user_valid, fk_user_closing, fk_fac_rec_source, fk_facture_source, fk_projet, fk_account, fk_cond_reglement, fk_mode_reglement, date_lim_reglement, note_private, note_public, fk_incoterms, location_incoterms, fk_transport_mode, model_pdf, last_main_doc, import_key, extraparams, fk_multicurrency, multicurrency_code, multicurrency_tx, multicurrency_total_ht, multicurrency_total_tva, multicurrency_total_ttc) FROM stdin;
\.


--
-- Data for Name: llx_facture_fourn_det; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_facture_fourn_det (rowid, fk_facture_fourn, fk_parent_line, fk_product, ref, label, description, pu_ht, pu_ttc, qty, remise_percent, fk_remise_except, vat_src_code, tva_tx, localtax1_tx, localtax1_type, localtax2_tx, localtax2_type, total_ht, tva, total_localtax1, total_localtax2, total_ttc, product_type, date_start, date_end, info_bits, fk_code_ventilation, special_code, rang, import_key, fk_unit, fk_multicurrency, multicurrency_code, multicurrency_subprice, multicurrency_subprice_ttc, multicurrency_total_ht, multicurrency_total_tva, multicurrency_total_ttc, extraparams) FROM stdin;
\.


--
-- Data for Name: llx_facture_fourn_det_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_facture_fourn_det_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_facture_fourn_det_rec; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_facture_fourn_det_rec (rowid, fk_facture_fourn, fk_parent_line, fk_product, ref, label, description, pu_ht, pu_ttc, qty, remise_percent, fk_remise_except, vat_src_code, tva_tx, localtax1_tx, localtax1_type, localtax2_tx, localtax2_type, total_ht, total_tva, total_localtax1, total_localtax2, total_ttc, product_type, date_start, date_end, info_bits, special_code, rang, fk_unit, import_key, fk_user_author, fk_user_modif, fk_multicurrency, multicurrency_code, multicurrency_subprice, multicurrency_subprice_ttc, multicurrency_total_ht, multicurrency_total_tva, multicurrency_total_ttc, extraparams) FROM stdin;
\.


--
-- Data for Name: llx_facture_fourn_det_rec_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_facture_fourn_det_rec_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_facture_fourn_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_facture_fourn_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_facture_fourn_rec; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_facture_fourn_rec (rowid, titre, ref_supplier, entity, subtype, fk_soc, datec, tms, suspended, libelle, amount, remise, vat_src_code, localtax1, localtax2, total_ht, total_tva, total_ttc, fk_user_author, fk_user_modif, fk_projet, fk_account, fk_cond_reglement, fk_mode_reglement, date_lim_reglement, note_private, note_public, modelpdf, fk_multicurrency, multicurrency_code, multicurrency_tx, multicurrency_total_ht, multicurrency_total_tva, multicurrency_total_ttc, usenewprice, usenewcurrencyrate, frequency, unit_frequency, date_when, date_last_gen, nb_gen_done, nb_gen_max, auto_validate, generate_pdf) FROM stdin;
\.


--
-- Data for Name: llx_facture_fourn_rec_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_facture_fourn_rec_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_facture_rec; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_facture_rec (rowid, titre, entity, subtype, fk_soc, datec, tms, suspended, amount, remise, remise_percent, remise_absolue, vat_src_code, total_tva, localtax1, localtax2, revenuestamp, total_ht, total_ttc, fk_user_author, fk_user_modif, fk_projet, fk_cond_reglement, fk_mode_reglement, date_lim_reglement, fk_account, fk_societe_rib, note_private, note_public, modelpdf, fk_multicurrency, multicurrency_code, multicurrency_tx, multicurrency_total_ht, multicurrency_total_tva, multicurrency_total_ttc, usenewprice, usenewcurrencyrate, frequency, unit_frequency, rule_for_lines_dates, date_when, date_last_gen, nb_gen_done, nb_gen_max, auto_validate, generate_pdf) FROM stdin;
\.


--
-- Data for Name: llx_facture_rec_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_facture_rec_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_facturedet; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_facturedet (rowid, fk_facture, fk_parent_line, fk_product, label, description, vat_src_code, tva_tx, localtax1_tx, localtax1_type, localtax2_tx, localtax2_type, qty, remise_percent, remise, fk_remise_except, subprice, subprice_ttc, price, total_ht, total_tva, total_localtax1, total_localtax2, total_ttc, product_type, date_start, date_end, info_bits, buy_price_ht, fk_product_fournisseur_price, batch, fk_warehouse, special_code, rang, fk_contract_line, fk_unit, import_key, fk_code_ventilation, situation_percent, fk_prev_id, fk_user_author, fk_user_modif, fk_multicurrency, multicurrency_code, multicurrency_subprice, multicurrency_subprice_ttc, multicurrency_total_ht, multicurrency_total_tva, multicurrency_total_ttc, ref_ext, extraparams) FROM stdin;
\.


--
-- Data for Name: llx_facturedet_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_facturedet_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_facturedet_rec; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_facturedet_rec (rowid, fk_facture, fk_parent_line, fk_product, product_type, label, description, vat_src_code, tva_tx, localtax1_tx, localtax1_type, localtax2_tx, localtax2_type, qty, remise_percent, remise, subprice, subprice_ttc, price, total_ht, total_tva, total_localtax1, total_localtax2, total_ttc, date_start_fill, date_end_fill, info_bits, buy_price_ht, fk_product_fournisseur_price, special_code, rang, fk_contract_line, fk_unit, import_key, fk_user_author, fk_user_modif, fk_multicurrency, multicurrency_code, multicurrency_subprice, multicurrency_subprice_ttc, multicurrency_total_ht, multicurrency_total_tva, multicurrency_total_ttc, extraparams) FROM stdin;
\.


--
-- Data for Name: llx_facturedet_rec_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_facturedet_rec_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_fichinter; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_fichinter (rowid, fk_soc, fk_projet, fk_contrat, ref, ref_ext, ref_client, entity, tms, datec, date_valid, datei, fk_user_author, fk_user_modif, fk_user_valid, fk_statut, dateo, datee, datet, duree, description, signed_status, online_sign_ip, online_sign_name, note_private, note_public, model_pdf, last_main_doc, import_key, extraparams) FROM stdin;
\.


--
-- Data for Name: llx_fichinter_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_fichinter_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_fichinter_rec; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_fichinter_rec (rowid, title, entity, fk_soc, datec, fk_contrat, fk_user_author, fk_projet, duree, description, modelpdf, note_private, note_public, frequency, unit_frequency, date_when, date_last_gen, nb_gen_done, nb_gen_max, auto_validate, status) FROM stdin;
\.


--
-- Data for Name: llx_fichinterdet; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_fichinterdet (rowid, fk_fichinter, fk_parent_line, date, description, duree, rang, extraparams) FROM stdin;
\.


--
-- Data for Name: llx_fichinterdet_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_fichinterdet_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_fichinterdet_rec; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_fichinterdet_rec (rowid, fk_fichinter, date, description, duree, rang, total_ht, subprice, subprice_ttc, fk_parent_line, fk_product, label, tva_tx, localtax1_tx, localtax1_type, localtax2_tx, localtax2_type, qty, remise_percent, fk_remise_except, price, total_tva, total_localtax1, total_localtax2, total_ttc, product_type, date_start, date_end, info_bits, buy_price_ht, fk_product_fournisseur_price, fk_code_ventilation, special_code, fk_unit, import_key, extraparams) FROM stdin;
\.


--
-- Data for Name: llx_holiday; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_holiday (rowid, ref, ref_ext, entity, fk_user, fk_user_create, fk_user_modif, fk_type, date_create, description, date_debut, date_fin, halfday, nb_open_day, statut, fk_validator, date_valid, fk_user_valid, date_approval, fk_user_approve, date_refuse, fk_user_refuse, date_cancel, fk_user_cancel, detail_refuse, note_private, note_public, tms, import_key, extraparams) FROM stdin;
\.


--
-- Data for Name: llx_holiday_config; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_holiday_config (rowid, entity, name, value) FROM stdin;
1	1	lastUpdate	\N
\.


--
-- Data for Name: llx_holiday_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_holiday_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_holiday_logs; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_holiday_logs (rowid, date_action, fk_user_action, fk_user_update, fk_type, type_action, prev_solde, new_solde) FROM stdin;
\.


--
-- Data for Name: llx_holiday_users; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_holiday_users (fk_user, fk_type, nb_holiday) FROM stdin;
\.


--
-- Data for Name: llx_import_model; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_import_model (rowid, entity, fk_user, label, type, field) FROM stdin;
\.


--
-- Data for Name: llx_links; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_links (rowid, entity, datea, url, label, objecttype, objectid, share, share_pass) FROM stdin;
\.


--
-- Data for Name: llx_localtax; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_localtax (rowid, entity, localtaxtype, tms, datep, datev, amount, label, note, fk_bank, fk_user_creat, fk_user_modif) FROM stdin;
\.


--
-- Data for Name: llx_mailing_unsubscribe; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_mailing_unsubscribe (rowid, entity, email, unsubscribegroup, ip, date_creat, tms) FROM stdin;
\.


--
-- Data for Name: llx_menu; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_menu (rowid, menu_handler, entity, module, type, mainmenu, leftmenu, fk_menu, fk_mainmenu, fk_leftmenu, "position", url, showtopmenuinframe, target, titre, prefix, langs, level, perms, enabled, usertype, tms) FROM stdin;
2	all	1	agenda	top	agenda	\N	0	\N	\N	86	/comm/action/index.php	0		TMenuAgenda	<span class="fas fa-calendar-alt infobox-action pictofixedwidth" style=""></span>	agenda	\N	$user->hasRight("agenda", "myactions", "read") || $user->hasRight("resource", "read")	isModEnabled("agenda") || isModEnabled("resource")	2	2026-02-08 16:14:29.122577
3	all	1	agenda	left	agenda	\N	2	\N	\N	100	/comm/action/index.php?mainmenu=agenda&amp;leftmenu=agenda	0		Actions	<span class="fas fa-calendar-alt infobox-action paddingright pictofixedwidth" style=""></span>	agenda	\N	$user->hasRight("agenda", "myactions", "read")	isModEnabled("agenda")	2	2026-02-08 16:14:29.122577
4	all	1	agenda	left	agenda	\N	3	\N	\N	101	/comm/action/card.php?mainmenu=agenda&amp;leftmenu=agenda&action=create	0		NewAction		commercial	\N	($user->hasRight("agenda", "myactions", "create") || $user->hasRight("agenda", "allactions", "create"))	isModEnabled("agenda")	2	2026-02-08 16:14:29.122577
5	all	1	agenda	left	agenda	\N	3	\N	\N	140	/comm/action/index.php?mainmenu=agenda&amp;leftmenu=agenda	0		Calendar		agenda	\N	$user->hasRight("agenda", "myactions", "read")	isModEnabled("agenda")	2	2026-02-08 16:14:29.122577
6	all	1	agenda	left	agenda	\N	5	\N	\N	141	/comm/action/index.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=todo&amp;filter=mine	0		MenuToDoMyActions		agenda	\N	$user->hasRight("agenda", "myactions", "read")	isModEnabled("agenda")	2	2026-02-08 16:14:29.122577
7	all	1	agenda	left	agenda	\N	5	\N	\N	142	/comm/action/index.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=done&amp;filter=mine	0		MenuDoneMyActions		agenda	\N	$user->hasRight("agenda", "myactions", "read")	isModEnabled("agenda")	2	2026-02-08 16:14:29.122577
8	all	1	agenda	left	agenda	\N	5	\N	\N	143	/comm/action/index.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=todo&amp;filtert=-1	0		MenuToDoActions		agenda	\N	$user->hasRight("agenda", "allactions", "read")	isModEnabled("agenda")	2	2026-02-08 16:14:29.122577
9	all	1	agenda	left	agenda	\N	5	\N	\N	144	/comm/action/index.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=done&amp;filtert=-1	0		MenuDoneActions		agenda	\N	$user->hasRight("agenda", "allactions", "read")	isModEnabled("agenda")	2	2026-02-08 16:14:29.122577
10	all	1	agenda	left	agenda	\N	3	\N	\N	110	/comm/action/list.php?mode=show_list&amp;mainmenu=agenda&amp;leftmenu=agenda	0		List		agenda	\N	$user->hasRight("agenda", "myactions", "read")	isModEnabled("agenda")	2	2026-02-08 16:14:29.122577
11	all	1	agenda	left	agenda	\N	10	\N	\N	111	/comm/action/list.php?mode=show_list&amp;mainmenu=agenda&amp;leftmenu=agenda&amp;status=todo&amp;filter=mine	0		MenuToDoMyActions		agenda	\N	$user->hasRight("agenda", "myactions", "read")	isModEnabled("agenda")	2	2026-02-08 16:14:29.122577
12	all	1	agenda	left	agenda	\N	10	\N	\N	112	/comm/action/list.php?mode=show_list&amp;mainmenu=agenda&amp;leftmenu=agenda&amp;status=done&amp;filter=mine	0		MenuDoneMyActions		agenda	\N	$user->hasRight("agenda", "myactions", "read")	isModEnabled("agenda")	2	2026-02-08 16:14:29.122577
13	all	1	agenda	left	agenda	\N	10	\N	\N	113	/comm/action/list.php?mode=show_list&amp;mainmenu=agenda&amp;leftmenu=agenda&amp;status=todo&amp;filtert=-1	0		MenuToDoActions		agenda	\N	$user->hasRight("agenda", "allactions", "read")	isModEnabled("agenda")	2	2026-02-08 16:14:29.122577
14	all	1	agenda	left	agenda	\N	10	\N	\N	114	/comm/action/list.php?mode=show_list&amp;mainmenu=agenda&amp;leftmenu=agenda&amp;status=done&amp;filtert=-1	0		MenuDoneActions		agenda	\N	$user->hasRight("agenda", "allactions", "read")	isModEnabled("agenda")	2	2026-02-08 16:14:29.122577
15	all	1	agenda	left	agenda	\N	3	\N	\N	160	/comm/action/rapport/index.php?mainmenu=agenda&amp;leftmenu=agenda	0		Reportings		agenda	\N	$user->hasRight("agenda", "allactions", "read")	isModEnabled("agenda")	2	2026-02-08 16:14:29.122577
16	all	1	agenda	left	agenda	\N	3	\N	\N	170	/categories/categorie_list.php?mainmenu=agenda&amp;leftmenu=agenda&type=10	0		Categories		agenda	\N	$user->hasRight("agenda", "allactions", "read")	isModEnabled("category") && getDolGlobalString("CATEGORY_EDIT_IN_MENU_NOT_IN_POPUP")	2	2026-02-08 16:14:29.122577
\.


--
-- Data for Name: llx_multicurrency; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_multicurrency (rowid, date_create, code, name, entity, fk_user, tms) FROM stdin;
\.


--
-- Data for Name: llx_multicurrency_rate; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_multicurrency_rate (rowid, date_sync, rate, rate_indirect, fk_multicurrency, entity, tms) FROM stdin;
\.


--
-- Data for Name: llx_notify; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_notify (rowid, tms, daten, fk_action, fk_soc, fk_contact, fk_user, type, type_target, objet_type, objet_id, email) FROM stdin;
\.


--
-- Data for Name: llx_notify_def; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_notify_def (rowid, entity, tms, datec, fk_action, fk_soc, fk_contact, fk_user, email, threshold, context, type) FROM stdin;
\.


--
-- Data for Name: llx_notify_def_object; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_notify_def_object (id, entity, objet_type, objet_id, type_notif, date_notif, user_id, moreparam) FROM stdin;
\.


--
-- Data for Name: llx_oauth_state; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_oauth_state (rowid, service, state, fk_user, fk_adherent, entity) FROM stdin;
\.


--
-- Data for Name: llx_oauth_token; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_oauth_token (rowid, service, token, tokenstring, state, fk_soc, fk_user, fk_adherent, restricted_ips, datec, tms, entity) FROM stdin;
\.


--
-- Data for Name: llx_object_lang; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_object_lang (rowid, fk_object, type_object, property, lang, value, import_key) FROM stdin;
\.


--
-- Data for Name: llx_onlinesignature; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_onlinesignature (rowid, entity, object_type, object_id, datec, tms, name, ip, pathoffile) FROM stdin;
\.


--
-- Data for Name: llx_overwrite_trans; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_overwrite_trans (rowid, entity, lang, transkey, transvalue) FROM stdin;
\.


--
-- Data for Name: llx_paiement; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_paiement (rowid, ref, ref_ext, entity, datec, tms, datep, amount, multicurrency_amount, fk_paiement, num_paiement, note, ext_payment_id, ext_payment_site, fk_bank, fk_user_creat, fk_user_modif, statut, fk_export_compta, pos_change) FROM stdin;
\.


--
-- Data for Name: llx_paiement_facture; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_paiement_facture (rowid, fk_paiement, fk_facture, amount, multicurrency_code, multicurrency_tx, multicurrency_amount) FROM stdin;
\.


--
-- Data for Name: llx_paiementcharge; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_paiementcharge (rowid, fk_charge, datec, tms, datep, amount, fk_typepaiement, num_paiement, note, fk_bank, fk_user_creat, fk_user_modif) FROM stdin;
\.


--
-- Data for Name: llx_paiementfourn; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_paiementfourn (rowid, ref, entity, tms, datec, datep, amount, multicurrency_amount, fk_user_author, fk_user_modif, fk_paiement, num_paiement, note, fk_bank, statut, model_pdf) FROM stdin;
\.


--
-- Data for Name: llx_paiementfourn_facturefourn; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_paiementfourn_facturefourn (rowid, fk_paiementfourn, fk_facturefourn, amount, multicurrency_code, multicurrency_tx, multicurrency_amount) FROM stdin;
\.


--
-- Data for Name: llx_payment_donation; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_payment_donation (rowid, fk_donation, datec, tms, datep, amount, fk_typepayment, num_payment, note, ext_payment_id, ext_payment_site, fk_bank, fk_user_creat, fk_user_modif) FROM stdin;
\.


--
-- Data for Name: llx_payment_expensereport; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_payment_expensereport (rowid, fk_expensereport, datec, tms, datep, amount, fk_typepayment, num_payment, note, fk_bank, fk_user_creat, fk_user_modif) FROM stdin;
\.


--
-- Data for Name: llx_payment_loan; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_payment_loan (rowid, fk_loan, datec, tms, datep, amount_capital, amount_insurance, amount_interest, fk_typepayment, num_payment, note_private, note_public, fk_bank, fk_user_creat, fk_user_modif) FROM stdin;
\.


--
-- Data for Name: llx_payment_salary; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_payment_salary (rowid, ref, tms, datec, fk_user, datep, datev, salary, amount, fk_projet, fk_typepayment, num_payment, label, datesp, dateep, entity, note, fk_bank, fk_user_author, fk_user_modif, fk_salary) FROM stdin;
\.


--
-- Data for Name: llx_payment_various; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_payment_various (rowid, ref, num_payment, label, tms, datec, datep, datev, sens, amount, fk_typepayment, accountancy_code, subledger_account, fk_projet, entity, note, fk_bank, fk_user_author, fk_user_modif) FROM stdin;
\.


--
-- Data for Name: llx_payment_vat; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_payment_vat (rowid, fk_tva, datec, tms, datep, amount, fk_typepaiement, num_paiement, note, fk_bank, fk_user_creat, fk_user_modif) FROM stdin;
\.


--
-- Data for Name: llx_paymentexpensereport_expensereport; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_paymentexpensereport_expensereport (rowid, fk_payment, fk_expensereport, amount, multicurrency_code, multicurrency_tx, multicurrency_amount) FROM stdin;
\.


--
-- Data for Name: llx_pos_cash_fence; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_pos_cash_fence (rowid, entity, ref, label, opening, cash, card, cheque, status, date_creation, date_valid, day_close, month_close, year_close, posmodule, posnumber, fk_user_creat, fk_user_valid, tms, import_key) FROM stdin;
\.


--
-- Data for Name: llx_pos_cash_fence_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_pos_cash_fence_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_prelevement; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_prelevement (rowid, fk_facture, fk_facture_fourn, fk_salary, fk_prelevement_lignes) FROM stdin;
\.


--
-- Data for Name: llx_prelevement_bons; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_prelevement_bons (rowid, type, ref, entity, datec, amount, statut, credite, note, date_trans, method_trans, fk_user_trans, date_credit, fk_user_credit, fk_bank_account) FROM stdin;
\.


--
-- Data for Name: llx_prelevement_demande; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_prelevement_demande (rowid, entity, fk_facture, fk_facture_fourn, fk_salary, sourcetype, amount, date_demande, traite, date_traite, fk_prelevement_bons, fk_user_demande, fk_societe_rib, code_banque, code_guichet, number, cle_rib, type, ext_payment_id, ext_payment_site) FROM stdin;
\.


--
-- Data for Name: llx_prelevement_lignes; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_prelevement_lignes (rowid, fk_prelevement_bons, fk_soc, fk_user, statut, client_nom, amount, code_banque, code_guichet, number, cle_rib, note, tms) FROM stdin;
\.


--
-- Data for Name: llx_prelevement_rejet; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_prelevement_rejet (rowid, fk_prelevement_lignes, date_rejet, motif, date_creation, fk_user_creation, note, afacturer, fk_facture) FROM stdin;
\.


--
-- Data for Name: llx_printing; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_printing (rowid, tms, datec, printer_name, printer_location, printer_id, copy, module, driver, userid) FROM stdin;
\.


--
-- Data for Name: llx_product; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_product (rowid, ref, entity, ref_ext, datec, tms, fk_parent, label, description, note_public, note, customcode, fk_country, fk_state, price, price_ttc, price_min, price_min_ttc, price_base_type, price_label, cost_price, default_vat_code, tva_tx, recuperableonly, localtax1_tx, localtax1_type, localtax2_tx, localtax2_type, fk_user_author, fk_user_modif, tosell, tobuy, tobatch, sell_or_eat_by_mandatory, batch_mask, fk_product_type, duration, seuil_stock_alerte, url, barcode, fk_barcode_type, accountancy_code_sell, accountancy_code_sell_intra, accountancy_code_sell_export, accountancy_code_buy, accountancy_code_buy_intra, accountancy_code_buy_export, partnumber, net_measure, net_measure_units, weight, weight_units, length, length_units, width, width_units, height, height_units, surface, surface_units, volume, volume_units, stockable_product, stock, pmp, fifo, lifo, fk_default_warehouse, fk_default_bom, fk_default_workstation, canvas, finished, lifetime, qc_frequency, hidden, import_key, model_pdf, fk_price_expression, desiredstock, fk_unit, price_autogen, fk_project, mandatory_period, last_main_doc, packaging) FROM stdin;
\.


--
-- Data for Name: llx_product_association; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_product_association (rowid, fk_product_pere, fk_product_fils, qty, incdec, rang, import_key) FROM stdin;
\.


--
-- Data for Name: llx_product_attribute; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_product_attribute (rowid, ref, ref_ext, label, "position", entity) FROM stdin;
\.


--
-- Data for Name: llx_product_attribute_value; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_product_attribute_value (rowid, fk_product_attribute, ref, value, entity, "position") FROM stdin;
\.


--
-- Data for Name: llx_product_batch; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_product_batch (rowid, tms, fk_product_stock, eatby, sellby, batch, qty, import_key) FROM stdin;
\.


--
-- Data for Name: llx_product_customer_price; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_product_customer_price (rowid, entity, datec, tms, fk_product, fk_soc, ref_customer, date_begin, date_end, price, price_ttc, price_min, price_min_ttc, price_base_type, default_vat_code, tva_tx, recuperableonly, localtax1_tx, localtax1_type, localtax2_tx, localtax2_type, discount_percent, fk_user, price_label, import_key) FROM stdin;
\.


--
-- Data for Name: llx_product_customer_price_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_product_customer_price_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_product_customer_price_log; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_product_customer_price_log (rowid, entity, datec, fk_product, fk_soc, ref_customer, date_begin, date_end, price, price_ttc, price_min, price_min_ttc, price_base_type, default_vat_code, tva_tx, recuperableonly, localtax1_tx, localtax1_type, localtax2_tx, localtax2_type, discount_percent, fk_user, price_label, import_key) FROM stdin;
\.


--
-- Data for Name: llx_product_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_product_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_product_fournisseur_price; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_product_fournisseur_price (rowid, entity, datec, tms, fk_product, fk_soc, ref_fourn, desc_fourn, fk_availability, price, quantity, remise_percent, remise, unitprice, charges, default_vat_code, barcode, fk_barcode_type, tva_tx, localtax1_tx, localtax1_type, localtax2_tx, localtax2_type, info_bits, fk_user, fk_supplier_price_expression, delivery_time_days, supplier_reputation, packaging, fk_multicurrency, multicurrency_code, multicurrency_tx, multicurrency_unitprice, multicurrency_price, import_key, status) FROM stdin;
\.


--
-- Data for Name: llx_product_fournisseur_price_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_product_fournisseur_price_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_product_fournisseur_price_log; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_product_fournisseur_price_log (rowid, datec, fk_product_fournisseur, price, quantity, fk_user, fk_multicurrency, multicurrency_code, multicurrency_tx, multicurrency_unitprice, multicurrency_price) FROM stdin;
\.


--
-- Data for Name: llx_product_lang; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_product_lang (rowid, fk_product, lang, label, description, note, import_key) FROM stdin;
\.


--
-- Data for Name: llx_product_lot; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_product_lot (rowid, entity, fk_product, batch, note_public, note_private, eatby, sellby, eol_date, manufacturing_date, scrapping_date, qc_frequency, lifetime, barcode, fk_barcode_type, model_pdf, last_main_doc, datec, tms, fk_user_creat, fk_user_modif, import_key) FROM stdin;
\.


--
-- Data for Name: llx_product_lot_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_product_lot_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_product_price; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_product_price (rowid, entity, tms, fk_product, date_price, price_level, price, price_ttc, price_min, price_min_ttc, price_base_type, default_vat_code, tva_tx, recuperableonly, localtax1_tx, localtax1_type, localtax2_tx, localtax2_type, fk_user_author, price_label, tosell, price_by_qty, fk_price_expression, import_key, fk_multicurrency, multicurrency_code, multicurrency_tx, multicurrency_price, multicurrency_price_ttc) FROM stdin;
\.


--
-- Data for Name: llx_product_price_by_qty; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_product_price_by_qty (rowid, fk_product_price, price, price_base_type, quantity, remise_percent, remise, unitprice, fk_user_creat, fk_user_modif, fk_multicurrency, multicurrency_code, multicurrency_tx, multicurrency_price, multicurrency_price_ttc, tms, import_key) FROM stdin;
\.


--
-- Data for Name: llx_product_price_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_product_price_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_product_pricerules; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_product_pricerules (rowid, level, fk_level, var_percent, var_min_percent) FROM stdin;
\.


--
-- Data for Name: llx_product_stock; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_product_stock (rowid, tms, fk_product, fk_entrepot, reel, import_key) FROM stdin;
\.


--
-- Data for Name: llx_product_thirdparty; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_product_thirdparty (rowid, fk_product, fk_soc, fk_product_thirdparty_relation_type, date_start, date_end, fk_project, description, note_public, note_private, date_creation, tms, fk_user_creat, fk_user_modif, last_main_doc, import_key, model_pdf, status) FROM stdin;
\.


--
-- Data for Name: llx_projet; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_projet (rowid, fk_project, fk_soc, datec, tms, dateo, datee, ref, ref_ext, entity, title, description, fk_user_creat, fk_user_modif, public, fk_statut, fk_opp_status, opp_percent, fk_opp_status_end, date_close, fk_user_close, note_private, note_public, email_msgid, email_date, opp_amount, budget_amount, usage_opportunity, usage_task, usage_bill_time, usage_organize_event, date_start_event, date_end_event, location, accept_conference_suggestions, accept_booth_suggestions, max_attendees, price_registration, price_booth, model_pdf, ip, last_main_doc, import_key, extraparams) FROM stdin;
\.


--
-- Data for Name: llx_projet_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_projet_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_projet_task; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_projet_task (rowid, ref, entity, fk_projet, fk_task_parent, datec, tms, dateo, datee, datev, label, description, duration_effective, planned_workload, progress, priority, budget_amount, fk_user_creat, fk_user_modif, fk_user_valid, fk_statut, note_private, note_public, rang, model_pdf, import_key, billable) FROM stdin;
\.


--
-- Data for Name: llx_projet_task_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_projet_task_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_propal; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_propal (rowid, ref, entity, ref_ext, ref_client, fk_soc, fk_projet, tms, datec, datep, fin_validite, date_valid, date_signature, date_cloture, fk_user_author, fk_user_modif, fk_user_valid, fk_user_signature, fk_user_cloture, fk_statut, price, remise_percent, remise_absolue, remise, total_ht, total_tva, localtax1, localtax2, total_ttc, fk_account, fk_currency, fk_cond_reglement, deposit_percent, fk_mode_reglement, online_sign_ip, online_sign_name, note_private, note_public, model_pdf, model_pdf_pos_sign, last_main_doc, date_livraison, fk_shipping_method, fk_warehouse, fk_availability, fk_input_reason, fk_incoterms, location_incoterms, import_key, extraparams, fk_delivery_address, fk_multicurrency, multicurrency_code, multicurrency_tx, multicurrency_total_ht, multicurrency_total_tva, multicurrency_total_ttc) FROM stdin;
\.


--
-- Data for Name: llx_propal_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_propal_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_propal_merge_pdf_product; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_propal_merge_pdf_product (rowid, fk_product, file_name, lang, fk_user_author, fk_user_mod, datec, tms, import_key) FROM stdin;
\.


--
-- Data for Name: llx_propaldet; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_propaldet (rowid, fk_propal, fk_parent_line, fk_product, label, description, fk_remise_except, vat_src_code, tva_tx, localtax1_tx, localtax1_type, localtax2_tx, localtax2_type, qty, remise_percent, remise, price, subprice, subprice_ttc, total_ht, total_tva, total_localtax1, total_localtax2, total_ttc, product_type, date_start, date_end, info_bits, buy_price_ht, fk_product_fournisseur_price, special_code, rang, fk_unit, fk_multicurrency, multicurrency_code, multicurrency_subprice, multicurrency_subprice_ttc, multicurrency_total_ht, multicurrency_total_tva, multicurrency_total_ttc, import_key, extraparams) FROM stdin;
\.


--
-- Data for Name: llx_propaldet_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_propaldet_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_reception; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_reception (rowid, tms, ref, entity, fk_soc, fk_projet, ref_ext, ref_supplier, date_creation, fk_user_author, fk_user_modif, date_valid, fk_user_valid, date_delivery, date_reception, fk_shipping_method, tracking_number, fk_statut, billed, height, width, size_units, size, weight_units, weight, note_private, note_public, model_pdf, fk_incoterms, location_incoterms, import_key, extraparams) FROM stdin;
\.


--
-- Data for Name: llx_reception_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_reception_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_receptiondet_batch; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_receptiondet_batch (rowid, fk_reception, fk_element, fk_elementdet, element_type, fk_product, qty, fk_entrepot, fk_projet, comment, batch, eatby, sellby, status, fk_user, datec, tms, cost_price, extraparams) FROM stdin;
\.


--
-- Data for Name: llx_receptiondet_batch_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_receptiondet_batch_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_resource; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_resource (rowid, entity, ref, asset_number, description, fk_code_type_resource, address, zip, town, photo_filename, max_users, phone, email, url, datec, date_valid, fk_user_author, fk_user_modif, fk_user_valid, fk_statut, note_public, note_private, import_key, extraparams, fk_country, fk_state, tms) FROM stdin;
\.


--
-- Data for Name: llx_resource_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_resource_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_rights_def; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_rights_def (id, entity, libelle, module, module_origin, module_position, family_position, perms, subperms, type, bydefault, enabled) FROM stdin;
2401	1	Read actions/tasks linked to his account	agenda		16	0	myactions	read	r	0	1
2402	1	Create/modify actions/tasks linked to his account	agenda		16	0	myactions	create	w	0	1
2403	1	Delete actions/tasks linked to his account	agenda		16	0	myactions	delete	w	0	1
2411	1	Read actions/tasks of others	agenda		16	0	allactions	read	r	0	1
2412	1	Create/modify actions/tasks of others	agenda		16	0	allactions	create	w	0	1
2413	1	Delete actions/tasks of others	agenda		16	0	allactions	delete	w	0	1
2414	1	Export actions/tasks of others	agenda		16	0	export		w	0	1
1201	1	Read exports	export		72	0	lire		r	0	1
1202	1	Creeate/modify export	export		72	0	creer		w	0	1
1251	1	Run mass imports of external data (data load)	import		70	0	run		r	0	1
251	1	Read information of other users, groups and permissions	user		5	0	user	lire	w	0	1
252	1	Read permissions of other users	user		5	0	user_advance	readperms	w	0	1
253	1	Create/modify internal and external users, groups and permissions	user		5	0	user	creer	w	0	1
254	1	Create/modify external users only	user		5	0	user_advance	write	w	0	1
255	1	Modify the password of other users	user		5	0	user	password	w	0	1
256	1	Delete or disable other users	user		5	0	user	supprimer	w	0	1
341	1	Read its own permissions	user		5	0	self_advance	readperms	w	0	1
342	1	Create/modify of its own user	user		5	0	self	creer	w	0	1
343	1	Modify its own password	user		5	0	self	password	w	0	1
344	1	Modify its own permissions	user		5	0	self_advance	writeperms	w	0	1
351	1	Read groups	user		5	0	group_advance	read	w	0	1
352	1	Read permissions of groups	user		5	0	group_advance	readperms	w	0	1
353	1	Create/modify groups and permissions	user		5	0	group_advance	write	w	0	1
354	1	Delete groups	user		5	0	group_advance	delete	w	0	1
358	1	Export all users	user		5	0	user	export	w	0	1
\.


--
-- Data for Name: llx_salary; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_salary (rowid, ref, ref_ext, tms, datec, fk_user, datep, datev, salary, amount, fk_projet, fk_typepayment, num_payment, label, datesp, dateep, entity, note, note_public, fk_bank, paye, fk_account, fk_user_author, fk_user_modif) FROM stdin;
\.


--
-- Data for Name: llx_salary_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_salary_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_societe; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_societe (rowid, nom, name_alias, entity, ref_ext, statut, parent, status, code_client, code_fournisseur, tp_payment_reference, accountancy_code_customer_general, code_compta, accountancy_code_supplier_general, code_compta_fournisseur, address, zip, town, fk_departement, fk_pays, geolat, geolong, geopoint, georesultcode, phone, phone_mobile, fax, url, email, fk_account, socialnetworks, fk_effectif, fk_typent, fk_forme_juridique, fk_currency, siren, siret, ape, idprof4, idprof5, idprof6, tva_intra, capital, fk_stcomm, note_private, note_public, model_pdf, last_main_doc, prefix_comm, client, fournisseur, supplier_account, fk_prospectlevel, fk_incoterms, location_incoterms, customer_bad, customer_rate, supplier_rate, remise_client, remise_supplier, mode_reglement, cond_reglement, deposit_percent, transport_mode, mode_reglement_supplier, cond_reglement_supplier, transport_mode_supplier, fk_shipping_method, tva_assuj, vat_reverse_charge, localtax1_assuj, localtax1_value, localtax2_assuj, localtax2_value, barcode, fk_barcode_type, price_level, outstanding_limit, order_min_amount, supplier_order_min_amount, default_lang, logo, logo_squarred, canvas, fk_warehouse, webservices_url, webservices_key, accountancy_code_sell, accountancy_code_buy, tms, datec, fk_user_creat, fk_user_modif, fk_multicurrency, multicurrency_code, ip, import_key) FROM stdin;
\.


--
-- Data for Name: llx_societe_account; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_societe_account (rowid, entity, login, pass_encoding, pass_crypted, pass_temp, fk_soc, fk_website, site, site_account, key_account, note_private, date_last_login, date_previous_login, date_last_reset_password, date_creation, tms, fk_user_creat, fk_user_modif, ip, import_key, status) FROM stdin;
\.


--
-- Data for Name: llx_societe_commerciaux; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_societe_commerciaux (rowid, fk_soc, fk_user, fk_c_type_contact_code, import_key) FROM stdin;
\.


--
-- Data for Name: llx_societe_contacts; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_societe_contacts (rowid, entity, date_creation, fk_soc, fk_c_type_contact, fk_socpeople, tms, import_key) FROM stdin;
\.


--
-- Data for Name: llx_societe_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_societe_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_societe_prices; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_societe_prices (rowid, fk_soc, tms, datec, fk_user_author, price_level) FROM stdin;
\.


--
-- Data for Name: llx_societe_remise; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_societe_remise (rowid, entity, fk_soc, tms, datec, fk_user_author, remise_client, note) FROM stdin;
\.


--
-- Data for Name: llx_societe_remise_except; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_societe_remise_except (rowid, entity, fk_soc, discount_type, datec, amount_ht, amount_tva, amount_ttc, tva_tx, vat_src_code, fk_user, fk_facture_line, fk_facture, fk_facture_source, fk_invoice_supplier_line, fk_invoice_supplier, fk_invoice_supplier_source, description, multicurrency_code, multicurrency_tx, multicurrency_amount_ht, multicurrency_amount_tva, multicurrency_amount_ttc) FROM stdin;
\.


--
-- Data for Name: llx_societe_remise_supplier; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_societe_remise_supplier (rowid, entity, fk_soc, tms, datec, fk_user_author, remise_supplier, note) FROM stdin;
\.


--
-- Data for Name: llx_societe_rib; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_societe_rib (rowid, entity, type, label, fk_soc, datec, tms, bank, code_banque, code_guichet, number, cle_rib, bic, bic_intermediate, iban_prefix, cci, domiciliation, proprio, owner_address, default_rib, state_id, fk_country, currency_code, model_pdf, last_main_doc, rum, date_rum, frstrecur, last_four, card_type, cvn, exp_date_month, exp_date_year, country_code, approved, email, ending_date, max_total_amount_of_all_payments, preapproval_key, starting_date, total_amount_of_all_payments, stripe_card_ref, stripe_account, ext_payment_site, extraparams, date_signature, online_sign_ip, online_sign_name, comment, ipaddress, status, import_key) FROM stdin;
\.


--
-- Data for Name: llx_socpeople; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_socpeople (rowid, datec, tms, fk_soc, entity, ref_ext, name_alias, fk_parent, civility, lastname, firstname, address, zip, town, fk_departement, fk_pays, geolat, geolong, geopoint, georesultcode, birthday, poste, phone, phone_perso, phone_mobile, fax, url, email, socialnetworks, photo, no_email, priv, fk_prospectlevel, fk_stcommcontact, fk_user_creat, fk_user_modif, note_private, note_public, default_lang, canvas, import_key, statut, ip) FROM stdin;
\.


--
-- Data for Name: llx_socpeople_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_socpeople_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_stock_mouvement; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_stock_mouvement (rowid, tms, datem, fk_product, batch, eatby, sellby, fk_entrepot, value, price, type_mouvement, fk_user_author, label, inventorycode, fk_project, fk_origin, origintype, model_pdf, fk_projet) FROM stdin;
\.


--
-- Data for Name: llx_stock_mouvement_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_stock_mouvement_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_subscription; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_subscription (rowid, tms, datec, fk_adherent, fk_type, dateadh, datef, subscription, fk_bank, fk_user_creat, fk_user_valid, note) FROM stdin;
\.


--
-- Data for Name: llx_supplier_proposal; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_supplier_proposal (rowid, ref, entity, ref_ext, fk_soc, fk_projet, tms, datec, date_valid, date_cloture, fk_user_author, fk_user_modif, fk_user_valid, fk_user_cloture, fk_statut, price, remise_percent, remise_absolue, remise, total_ht, total_tva, localtax1, localtax2, total_ttc, fk_account, fk_currency, fk_cond_reglement, fk_mode_reglement, note_private, note_public, model_pdf, last_main_doc, date_livraison, fk_shipping_method, import_key, extraparams, fk_multicurrency, multicurrency_code, multicurrency_tx, multicurrency_total_ht, multicurrency_total_tva, multicurrency_total_ttc) FROM stdin;
\.


--
-- Data for Name: llx_supplier_proposal_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_supplier_proposal_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_supplier_proposaldet; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_supplier_proposaldet (rowid, fk_supplier_proposal, fk_parent_line, fk_product, label, description, fk_remise_except, vat_src_code, tva_tx, localtax1_tx, localtax1_type, localtax2_tx, localtax2_type, qty, remise_percent, remise, price, subprice, subprice_ttc, total_ht, total_tva, total_localtax1, total_localtax2, total_ttc, product_type, date_start, date_end, info_bits, buy_price_ht, fk_product_fournisseur_price, special_code, rang, ref_fourn, fk_multicurrency, multicurrency_code, multicurrency_subprice, multicurrency_subprice_ttc, multicurrency_total_ht, multicurrency_total_tva, multicurrency_total_ttc, fk_unit, extraparams) FROM stdin;
\.


--
-- Data for Name: llx_supplier_proposaldet_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_supplier_proposaldet_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_tva; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_tva (rowid, tms, datec, datep, datev, amount, fk_typepayment, num_payment, label, entity, note, paye, fk_account, fk_user_creat, fk_user_modif, import_key) FROM stdin;
\.


--
-- Data for Name: llx_user; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_user (rowid, entity, ref_employee, ref_ext, admin, employee, fk_establishment, datec, tms, fk_user_creat, fk_user_modif, login, pass_encoding, pass, pass_crypted, pass_temp, api_key, gender, civility, lastname, firstname, address, zip, town, fk_state, fk_country, birth, birth_place, job, office_phone, office_fax, user_mobile, personal_mobile, email, personal_email, email_oauth2, signature, socialnetworks, fk_soc, fk_socpeople, fk_member, fk_user, fk_user_expense_validator, fk_user_holiday_validator, national_registration_number, idpers1, idpers2, idpers3, note_public, note_private, model_pdf, last_main_doc, datelastlogin, datepreviouslogin, datelastpassvalidation, datestartvalidity, dateendvalidity, flagdelsessionsbefore, iplastlogin, ippreviouslogin, ldap_sid, openid, statut, photo, lang, color, barcode, fk_barcode_type, accountancy_code_user_general, accountancy_code, nb_holiday, thm, tjm, salary, salaryextra, dateemployment, dateemploymentend, weeklyhours, import_key, default_range, default_c_exp_tax_cat, fk_warehouse) FROM stdin;
2	1		\N	0	1	\N	2026-02-14 16:15:49	2026-02-14 16:37:07.678836	\N	\N	samir.guelbi	\N	\N	$2y$10$AR7MjrpYqDvYWbZ.1hI9MuKr7tj1Wbv0sBnsctaWT3FIq6V7EWsHS	\N	dolcrypt:AES-256-CTR:10fbb3f05469219f:EvPtFJxUWpJfcZwa	man	MR	Guelbi	Samir		75014	Paris	\N	10	\N	\N								\N		null	\N	\N	\N	\N	\N	\N		\N	\N	\N			\N	\N	\N	\N	2026-02-14 16:15:49	\N	\N	2026-02-14 16:15:44	\N	\N		\N	0	\N	\N		\N	0			0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1	0		\N	1	1	\N	2026-02-08 16:14:29	2026-02-15 09:28:09.385166	\N	\N	admin	\N	\N	$2y$10$.Mziy3v30A2GJIOayfcWL.2t0jQfpzjlHntdoH0E9GaVvTZuuoP3m	\N	\N	\N		SuperAdmin					\N	\N	\N	\N								\N		[]	\N	\N	\N	\N	\N	\N		\N	\N	\N			\N	\N	2026-02-15 09:28:09	2026-02-08 16:14:50	2026-02-15 09:28:02	\N	\N	2026-02-15 09:27:57	192.168.65.1	192.168.65.1		\N	1	\N	\N		\N	0			0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: llx_user_alert; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_user_alert (rowid, type, fk_contact, fk_user) FROM stdin;
\.


--
-- Data for Name: llx_user_clicktodial; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_user_clicktodial (fk_user, url, login, pass, poste) FROM stdin;
\.


--
-- Data for Name: llx_user_employment; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_user_employment (rowid, entity, ref, ref_ext, fk_user, datec, tms, fk_user_creat, fk_user_modif, job, status, salary, salaryextra, weeklyhours, dateemployment, dateemploymentend) FROM stdin;
\.


--
-- Data for Name: llx_user_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_user_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_user_param; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_user_param (fk_user, entity, param, value) FROM stdin;
\.


--
-- Data for Name: llx_user_rib; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_user_rib (rowid, fk_user, entity, datec, tms, label, bank, code_banque, code_guichet, number, cle_rib, bic, bic_intermediate, iban_prefix, domiciliation, proprio, owner_address, state_id, fk_country, currency_code, default_rib) FROM stdin;
\.


--
-- Data for Name: llx_user_rights; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_user_rights (rowid, entity, fk_user, fk_id) FROM stdin;
2	1	1	1201
3	1	1	1202
6	1	1	2402
7	1	1	2401
8	1	1	2403
11	1	1	2412
12	1	1	2411
13	1	1	2413
14	1	1	2414
15	1	1	1251
\.


--
-- Data for Name: llx_usergroup; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_usergroup (rowid, nom, entity, datec, tms, note, model_pdf) FROM stdin;
\.


--
-- Data for Name: llx_usergroup_extrafields; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_usergroup_extrafields (rowid, tms, fk_object, import_key) FROM stdin;
\.


--
-- Data for Name: llx_usergroup_rights; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_usergroup_rights (rowid, entity, fk_usergroup, fk_id) FROM stdin;
\.


--
-- Data for Name: llx_usergroup_user; Type: TABLE DATA; Schema: public; Owner: dolibarr
--

COPY public.llx_usergroup_user (rowid, entity, fk_user, fk_usergroup) FROM stdin;
\.


--
-- Name: llx_accounting_account_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_accounting_account_rowid_seq', 1, false);


--
-- Name: llx_accounting_bookkeeping_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_accounting_bookkeeping_rowid_seq', 1, false);


--
-- Name: llx_accounting_bookkeeping_tmp_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_accounting_bookkeeping_tmp_rowid_seq', 1, false);


--
-- Name: llx_accounting_fiscalyear_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_accounting_fiscalyear_rowid_seq', 1, false);


--
-- Name: llx_accounting_groups_account_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_accounting_groups_account_rowid_seq', 1, false);


--
-- Name: llx_accounting_journal_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_accounting_journal_rowid_seq', 7, true);


--
-- Name: llx_accounting_system_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_accounting_system_rowid_seq', 44, true);


--
-- Name: llx_actioncomm_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_actioncomm_extrafields_rowid_seq', 1, false);


--
-- Name: llx_actioncomm_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_actioncomm_id_seq', 5, true);


--
-- Name: llx_actioncomm_reminder_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_actioncomm_reminder_rowid_seq', 1, false);


--
-- Name: llx_actioncomm_resources_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_actioncomm_resources_rowid_seq', 5, true);


--
-- Name: llx_adherent_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_adherent_extrafields_rowid_seq', 1, false);


--
-- Name: llx_adherent_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_adherent_rowid_seq', 1, false);


--
-- Name: llx_adherent_type_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_adherent_type_extrafields_rowid_seq', 1, false);


--
-- Name: llx_adherent_type_lang_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_adherent_type_lang_rowid_seq', 1, false);


--
-- Name: llx_adherent_type_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_adherent_type_rowid_seq', 1, false);


--
-- Name: llx_bank_account_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_bank_account_extrafields_rowid_seq', 1, false);


--
-- Name: llx_bank_account_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_bank_account_rowid_seq', 1, false);


--
-- Name: llx_bank_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_bank_extrafields_rowid_seq', 1, false);


--
-- Name: llx_bank_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_bank_rowid_seq', 1, false);


--
-- Name: llx_bank_url_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_bank_url_rowid_seq', 1, false);


--
-- Name: llx_blockedlog_authority_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_blockedlog_authority_rowid_seq', 1, false);


--
-- Name: llx_blockedlog_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_blockedlog_rowid_seq', 1, false);


--
-- Name: llx_bookmark_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_bookmark_rowid_seq', 1, false);


--
-- Name: llx_bordereau_cheque_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_bordereau_cheque_rowid_seq', 1, false);


--
-- Name: llx_boxes_def_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_boxes_def_rowid_seq', 5, true);


--
-- Name: llx_boxes_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_boxes_rowid_seq', 5, true);


--
-- Name: llx_c_action_trigger_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_action_trigger_rowid_seq', 156, true);


--
-- Name: llx_c_availability_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_availability_rowid_seq', 17, true);


--
-- Name: llx_c_barcode_type_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_barcode_type_rowid_seq', 1, false);


--
-- Name: llx_c_chargesociales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_chargesociales_id_seq', 1, false);


--
-- Name: llx_c_civility_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_civility_rowid_seq', 5, true);


--
-- Name: llx_c_departements_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_departements_rowid_seq', 1837, true);


--
-- Name: llx_c_ecotaxe_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_ecotaxe_rowid_seq', 1, false);


--
-- Name: llx_c_email_senderprofile_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_email_senderprofile_rowid_seq', 1, false);


--
-- Name: llx_c_email_templates_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_email_templates_rowid_seq', 19, true);


--
-- Name: llx_c_field_list_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_field_list_rowid_seq', 1, false);


--
-- Name: llx_c_format_cards_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_format_cards_rowid_seq', 1, false);


--
-- Name: llx_c_forme_juridique_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_forme_juridique_rowid_seq', 329, true);


--
-- Name: llx_c_holiday_types_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_holiday_types_rowid_seq', 40, true);


--
-- Name: llx_c_hrm_public_holiday_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_hrm_public_holiday_id_seq', 73, true);


--
-- Name: llx_c_incoterms_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_incoterms_rowid_seq', 12, true);


--
-- Name: llx_c_input_method_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_input_method_rowid_seq', 1, false);


--
-- Name: llx_c_input_reason_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_input_reason_rowid_seq', 1, false);


--
-- Name: llx_c_invoice_subtype_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_invoice_subtype_rowid_seq', 24, true);


--
-- Name: llx_c_lead_status_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_lead_status_rowid_seq', 1, false);


--
-- Name: llx_c_paiement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_paiement_id_seq', 1, false);


--
-- Name: llx_c_paper_format_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_paper_format_rowid_seq', 1, false);


--
-- Name: llx_c_payment_term_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_payment_term_rowid_seq', 1, false);


--
-- Name: llx_c_product_nature_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_product_nature_rowid_seq', 2, true);


--
-- Name: llx_c_product_thirdparty_relation_type_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_product_thirdparty_relation_type_rowid_seq', 1, false);


--
-- Name: llx_c_regions_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_regions_rowid_seq', 310, true);


--
-- Name: llx_c_revenuestamp_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_revenuestamp_rowid_seq', 1, false);


--
-- Name: llx_c_shipment_mode_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_shipment_mode_rowid_seq', 1, false);


--
-- Name: llx_c_shipment_package_type_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_shipment_package_type_rowid_seq', 1, false);


--
-- Name: llx_c_socialnetworks_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_socialnetworks_rowid_seq', 33, true);


--
-- Name: llx_c_transport_mode_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_transport_mode_rowid_seq', 8, true);


--
-- Name: llx_c_tva_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_tva_rowid_seq', 231, true);


--
-- Name: llx_c_type_contact_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_type_contact_rowid_seq', 61, true);


--
-- Name: llx_c_type_fees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_type_fees_id_seq', 25, true);


--
-- Name: llx_c_type_resource_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_type_resource_rowid_seq', 2, true);


--
-- Name: llx_c_units_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_units_rowid_seq', 36, true);


--
-- Name: llx_c_ziptown_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_c_ziptown_rowid_seq', 1, false);


--
-- Name: llx_categorie_lang_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_categorie_lang_rowid_seq', 1, false);


--
-- Name: llx_categorie_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_categorie_rowid_seq', 1, false);


--
-- Name: llx_categories_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_categories_extrafields_rowid_seq', 1, false);


--
-- Name: llx_chargesociales_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_chargesociales_rowid_seq', 1, false);


--
-- Name: llx_commande_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_commande_extrafields_rowid_seq', 1, false);


--
-- Name: llx_commande_fournisseur_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_commande_fournisseur_extrafields_rowid_seq', 1, false);


--
-- Name: llx_commande_fournisseur_log_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_commande_fournisseur_log_rowid_seq', 1, false);


--
-- Name: llx_commande_fournisseur_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_commande_fournisseur_rowid_seq', 1, false);


--
-- Name: llx_commande_fournisseurdet_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_commande_fournisseurdet_extrafields_rowid_seq', 1, false);


--
-- Name: llx_commande_fournisseurdet_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_commande_fournisseurdet_rowid_seq', 1, false);


--
-- Name: llx_commande_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_commande_rowid_seq', 1, false);


--
-- Name: llx_commandedet_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_commandedet_extrafields_rowid_seq', 1, false);


--
-- Name: llx_commandedet_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_commandedet_rowid_seq', 1, false);


--
-- Name: llx_comment_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_comment_rowid_seq', 1, false);


--
-- Name: llx_const_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_const_rowid_seq', 208, true);


--
-- Name: llx_contrat_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_contrat_extrafields_rowid_seq', 1, false);


--
-- Name: llx_contrat_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_contrat_rowid_seq', 1, false);


--
-- Name: llx_contratdet_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_contratdet_extrafields_rowid_seq', 1, false);


--
-- Name: llx_contratdet_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_contratdet_rowid_seq', 1, false);


--
-- Name: llx_cronjob_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_cronjob_rowid_seq', 1, true);


--
-- Name: llx_default_values_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_default_values_rowid_seq', 1, false);


--
-- Name: llx_delivery_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_delivery_extrafields_rowid_seq', 1, false);


--
-- Name: llx_delivery_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_delivery_rowid_seq', 1, false);


--
-- Name: llx_deliverydet_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_deliverydet_extrafields_rowid_seq', 1, false);


--
-- Name: llx_deliverydet_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_deliverydet_rowid_seq', 1, false);


--
-- Name: llx_document_model_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_document_model_rowid_seq', 1, false);


--
-- Name: llx_ecm_directories_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_ecm_directories_extrafields_rowid_seq', 1, false);


--
-- Name: llx_ecm_directories_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_ecm_directories_rowid_seq', 1, false);


--
-- Name: llx_ecm_files_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_ecm_files_extrafields_rowid_seq', 1, false);


--
-- Name: llx_ecm_files_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_ecm_files_rowid_seq', 1, false);


--
-- Name: llx_element_categorie_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_element_categorie_rowid_seq', 1, false);


--
-- Name: llx_element_contact_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_element_contact_rowid_seq', 1, false);


--
-- Name: llx_element_element_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_element_element_rowid_seq', 1, false);


--
-- Name: llx_element_resources_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_element_resources_rowid_seq', 1, false);


--
-- Name: llx_element_time_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_element_time_rowid_seq', 1, false);


--
-- Name: llx_emailcollector_emailcollector_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_emailcollector_emailcollector_rowid_seq', 1, false);


--
-- Name: llx_emailcollector_emailcollectoraction_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_emailcollector_emailcollectoraction_rowid_seq', 1, false);


--
-- Name: llx_emailcollector_emailcollectorfilter_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_emailcollector_emailcollectorfilter_rowid_seq', 1, false);


--
-- Name: llx_entrepot_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_entrepot_extrafields_rowid_seq', 1, false);


--
-- Name: llx_entrepot_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_entrepot_rowid_seq', 1, false);


--
-- Name: llx_establishment_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_establishment_rowid_seq', 1, false);


--
-- Name: llx_event_element_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_event_element_rowid_seq', 1, false);


--
-- Name: llx_eventorganization_conferenceorboothattendee_extra_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_eventorganization_conferenceorboothattendee_extra_rowid_seq', 1, false);


--
-- Name: llx_eventorganization_conferenceorboothattendee_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_eventorganization_conferenceorboothattendee_rowid_seq', 1, false);


--
-- Name: llx_events_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_events_rowid_seq', 1, false);


--
-- Name: llx_expedition_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_expedition_extrafields_rowid_seq', 1, false);


--
-- Name: llx_expedition_package_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_expedition_package_rowid_seq', 1, false);


--
-- Name: llx_expedition_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_expedition_rowid_seq', 1, false);


--
-- Name: llx_expeditiondet_batch_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_expeditiondet_batch_rowid_seq', 1, false);


--
-- Name: llx_expeditiondet_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_expeditiondet_extrafields_rowid_seq', 1, false);


--
-- Name: llx_expeditiondet_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_expeditiondet_rowid_seq', 1, false);


--
-- Name: llx_expensereport_det_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_expensereport_det_rowid_seq', 1, false);


--
-- Name: llx_expensereport_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_expensereport_extrafields_rowid_seq', 1, false);


--
-- Name: llx_expensereport_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_expensereport_rowid_seq', 1, false);


--
-- Name: llx_export_model_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_export_model_rowid_seq', 1, false);


--
-- Name: llx_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_extrafields_rowid_seq', 1, false);


--
-- Name: llx_facture_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_facture_extrafields_rowid_seq', 1, false);


--
-- Name: llx_facture_fourn_det_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_facture_fourn_det_extrafields_rowid_seq', 1, false);


--
-- Name: llx_facture_fourn_det_rec_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_facture_fourn_det_rec_extrafields_rowid_seq', 1, false);


--
-- Name: llx_facture_fourn_det_rec_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_facture_fourn_det_rec_rowid_seq', 1, false);


--
-- Name: llx_facture_fourn_det_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_facture_fourn_det_rowid_seq', 1, false);


--
-- Name: llx_facture_fourn_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_facture_fourn_extrafields_rowid_seq', 1, false);


--
-- Name: llx_facture_fourn_rec_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_facture_fourn_rec_extrafields_rowid_seq', 1, false);


--
-- Name: llx_facture_fourn_rec_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_facture_fourn_rec_rowid_seq', 1, false);


--
-- Name: llx_facture_fourn_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_facture_fourn_rowid_seq', 1, false);


--
-- Name: llx_facture_rec_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_facture_rec_extrafields_rowid_seq', 1, false);


--
-- Name: llx_facture_rec_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_facture_rec_rowid_seq', 1, false);


--
-- Name: llx_facture_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_facture_rowid_seq', 1, false);


--
-- Name: llx_facturedet_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_facturedet_extrafields_rowid_seq', 1, false);


--
-- Name: llx_facturedet_rec_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_facturedet_rec_extrafields_rowid_seq', 1, false);


--
-- Name: llx_facturedet_rec_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_facturedet_rec_rowid_seq', 1, false);


--
-- Name: llx_facturedet_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_facturedet_rowid_seq', 1, false);


--
-- Name: llx_fichinter_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_fichinter_extrafields_rowid_seq', 1, false);


--
-- Name: llx_fichinter_rec_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_fichinter_rec_rowid_seq', 1, false);


--
-- Name: llx_fichinter_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_fichinter_rowid_seq', 1, false);


--
-- Name: llx_fichinterdet_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_fichinterdet_extrafields_rowid_seq', 1, false);


--
-- Name: llx_fichinterdet_rec_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_fichinterdet_rec_rowid_seq', 1, false);


--
-- Name: llx_fichinterdet_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_fichinterdet_rowid_seq', 1, false);


--
-- Name: llx_holiday_config_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_holiday_config_rowid_seq', 1, true);


--
-- Name: llx_holiday_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_holiday_extrafields_rowid_seq', 1, false);


--
-- Name: llx_holiday_logs_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_holiday_logs_rowid_seq', 1, false);


--
-- Name: llx_holiday_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_holiday_rowid_seq', 1, false);


--
-- Name: llx_import_model_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_import_model_rowid_seq', 1, false);


--
-- Name: llx_links_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_links_rowid_seq', 1, false);


--
-- Name: llx_localtax_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_localtax_rowid_seq', 1, false);


--
-- Name: llx_mailing_unsubscribe_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_mailing_unsubscribe_rowid_seq', 1, false);


--
-- Name: llx_menu_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_menu_rowid_seq', 16, true);


--
-- Name: llx_multicurrency_rate_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_multicurrency_rate_rowid_seq', 1, false);


--
-- Name: llx_multicurrency_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_multicurrency_rowid_seq', 1, false);


--
-- Name: llx_notify_def_object_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_notify_def_object_id_seq', 1, false);


--
-- Name: llx_notify_def_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_notify_def_rowid_seq', 1, false);


--
-- Name: llx_notify_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_notify_rowid_seq', 1, false);


--
-- Name: llx_oauth_state_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_oauth_state_rowid_seq', 1, false);


--
-- Name: llx_oauth_token_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_oauth_token_rowid_seq', 1, false);


--
-- Name: llx_object_lang_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_object_lang_rowid_seq', 1, false);


--
-- Name: llx_onlinesignature_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_onlinesignature_rowid_seq', 1, false);


--
-- Name: llx_overwrite_trans_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_overwrite_trans_rowid_seq', 1, false);


--
-- Name: llx_paiement_facture_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_paiement_facture_rowid_seq', 1, false);


--
-- Name: llx_paiement_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_paiement_rowid_seq', 1, false);


--
-- Name: llx_paiementcharge_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_paiementcharge_rowid_seq', 1, false);


--
-- Name: llx_paiementfourn_facturefourn_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_paiementfourn_facturefourn_rowid_seq', 1, false);


--
-- Name: llx_paiementfourn_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_paiementfourn_rowid_seq', 1, false);


--
-- Name: llx_payment_donation_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_payment_donation_rowid_seq', 1, false);


--
-- Name: llx_payment_expensereport_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_payment_expensereport_rowid_seq', 1, false);


--
-- Name: llx_payment_loan_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_payment_loan_rowid_seq', 1, false);


--
-- Name: llx_payment_salary_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_payment_salary_rowid_seq', 1, false);


--
-- Name: llx_payment_various_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_payment_various_rowid_seq', 1, false);


--
-- Name: llx_payment_vat_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_payment_vat_rowid_seq', 1, false);


--
-- Name: llx_paymentexpensereport_expensereport_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_paymentexpensereport_expensereport_rowid_seq', 1, false);


--
-- Name: llx_pos_cash_fence_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_pos_cash_fence_extrafields_rowid_seq', 1, false);


--
-- Name: llx_pos_cash_fence_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_pos_cash_fence_rowid_seq', 1, false);


--
-- Name: llx_prelevement_bons_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_prelevement_bons_rowid_seq', 1, false);


--
-- Name: llx_prelevement_demande_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_prelevement_demande_rowid_seq', 1, false);


--
-- Name: llx_prelevement_lignes_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_prelevement_lignes_rowid_seq', 1, false);


--
-- Name: llx_prelevement_rejet_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_prelevement_rejet_rowid_seq', 1, false);


--
-- Name: llx_prelevement_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_prelevement_rowid_seq', 1, false);


--
-- Name: llx_printing_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_printing_rowid_seq', 1, false);


--
-- Name: llx_product_association_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_product_association_rowid_seq', 1, false);


--
-- Name: llx_product_attribute_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_product_attribute_rowid_seq', 1, false);


--
-- Name: llx_product_attribute_value_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_product_attribute_value_rowid_seq', 1, false);


--
-- Name: llx_product_batch_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_product_batch_rowid_seq', 1, false);


--
-- Name: llx_product_customer_price_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_product_customer_price_extrafields_rowid_seq', 1, false);


--
-- Name: llx_product_customer_price_log_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_product_customer_price_log_rowid_seq', 1, false);


--
-- Name: llx_product_customer_price_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_product_customer_price_rowid_seq', 1, false);


--
-- Name: llx_product_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_product_extrafields_rowid_seq', 1, false);


--
-- Name: llx_product_fournisseur_price_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_product_fournisseur_price_extrafields_rowid_seq', 1, false);


--
-- Name: llx_product_fournisseur_price_log_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_product_fournisseur_price_log_rowid_seq', 1, false);


--
-- Name: llx_product_fournisseur_price_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_product_fournisseur_price_rowid_seq', 1, false);


--
-- Name: llx_product_lang_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_product_lang_rowid_seq', 1, false);


--
-- Name: llx_product_lot_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_product_lot_extrafields_rowid_seq', 1, false);


--
-- Name: llx_product_lot_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_product_lot_rowid_seq', 1, false);


--
-- Name: llx_product_price_by_qty_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_product_price_by_qty_rowid_seq', 1, false);


--
-- Name: llx_product_price_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_product_price_extrafields_rowid_seq', 1, false);


--
-- Name: llx_product_price_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_product_price_rowid_seq', 1, false);


--
-- Name: llx_product_pricerules_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_product_pricerules_rowid_seq', 1, false);


--
-- Name: llx_product_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_product_rowid_seq', 1, false);


--
-- Name: llx_product_stock_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_product_stock_rowid_seq', 1, false);


--
-- Name: llx_product_thirdparty_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_product_thirdparty_rowid_seq', 1, false);


--
-- Name: llx_projet_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_projet_extrafields_rowid_seq', 1, false);


--
-- Name: llx_projet_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_projet_rowid_seq', 1, false);


--
-- Name: llx_projet_task_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_projet_task_extrafields_rowid_seq', 1, false);


--
-- Name: llx_projet_task_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_projet_task_rowid_seq', 1, false);


--
-- Name: llx_propal_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_propal_extrafields_rowid_seq', 1, false);


--
-- Name: llx_propal_merge_pdf_product_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_propal_merge_pdf_product_rowid_seq', 1, false);


--
-- Name: llx_propal_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_propal_rowid_seq', 1, false);


--
-- Name: llx_propaldet_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_propaldet_extrafields_rowid_seq', 1, false);


--
-- Name: llx_propaldet_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_propaldet_rowid_seq', 1, false);


--
-- Name: llx_reception_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_reception_extrafields_rowid_seq', 1, false);


--
-- Name: llx_reception_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_reception_rowid_seq', 1, false);


--
-- Name: llx_receptiondet_batch_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_receptiondet_batch_extrafields_rowid_seq', 1, false);


--
-- Name: llx_receptiondet_batch_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_receptiondet_batch_rowid_seq', 1, false);


--
-- Name: llx_resource_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_resource_extrafields_rowid_seq', 1, false);


--
-- Name: llx_resource_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_resource_rowid_seq', 1, false);


--
-- Name: llx_salary_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_salary_extrafields_rowid_seq', 1, false);


--
-- Name: llx_salary_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_salary_rowid_seq', 1, false);


--
-- Name: llx_societe_account_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_societe_account_rowid_seq', 1, false);


--
-- Name: llx_societe_commerciaux_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_societe_commerciaux_rowid_seq', 1, false);


--
-- Name: llx_societe_contacts_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_societe_contacts_rowid_seq', 1, false);


--
-- Name: llx_societe_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_societe_extrafields_rowid_seq', 1, false);


--
-- Name: llx_societe_prices_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_societe_prices_rowid_seq', 1, false);


--
-- Name: llx_societe_remise_except_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_societe_remise_except_rowid_seq', 1, false);


--
-- Name: llx_societe_remise_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_societe_remise_rowid_seq', 1, false);


--
-- Name: llx_societe_remise_supplier_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_societe_remise_supplier_rowid_seq', 1, false);


--
-- Name: llx_societe_rib_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_societe_rib_rowid_seq', 1, false);


--
-- Name: llx_societe_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_societe_rowid_seq', 1, false);


--
-- Name: llx_socpeople_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_socpeople_extrafields_rowid_seq', 1, false);


--
-- Name: llx_socpeople_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_socpeople_rowid_seq', 1, false);


--
-- Name: llx_stock_mouvement_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_stock_mouvement_extrafields_rowid_seq', 1, false);


--
-- Name: llx_stock_mouvement_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_stock_mouvement_rowid_seq', 1, false);


--
-- Name: llx_subscription_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_subscription_rowid_seq', 1, false);


--
-- Name: llx_supplier_proposal_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_supplier_proposal_extrafields_rowid_seq', 1, false);


--
-- Name: llx_supplier_proposal_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_supplier_proposal_rowid_seq', 1, false);


--
-- Name: llx_supplier_proposaldet_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_supplier_proposaldet_extrafields_rowid_seq', 1, false);


--
-- Name: llx_supplier_proposaldet_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_supplier_proposaldet_rowid_seq', 1, false);


--
-- Name: llx_tva_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_tva_rowid_seq', 1, false);


--
-- Name: llx_user_alert_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_user_alert_rowid_seq', 1, false);


--
-- Name: llx_user_employment_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_user_employment_rowid_seq', 1, false);


--
-- Name: llx_user_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_user_extrafields_rowid_seq', 1, false);


--
-- Name: llx_user_rib_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_user_rib_rowid_seq', 1, false);


--
-- Name: llx_user_rights_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_user_rights_rowid_seq', 15, true);


--
-- Name: llx_user_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_user_rowid_seq', 2, true);


--
-- Name: llx_usergroup_extrafields_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_usergroup_extrafields_rowid_seq', 1, false);


--
-- Name: llx_usergroup_rights_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_usergroup_rights_rowid_seq', 1, false);


--
-- Name: llx_usergroup_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_usergroup_rowid_seq', 1, false);


--
-- Name: llx_usergroup_user_rowid_seq; Type: SEQUENCE SET; Schema: public; Owner: dolibarr
--

SELECT pg_catalog.setval('public.llx_usergroup_user_rowid_seq', 1, false);


--
-- Name: llx_accounting_account llx_accounting_account_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_accounting_account
    ADD CONSTRAINT llx_accounting_account_pkey PRIMARY KEY (rowid);


--
-- Name: llx_accounting_bookkeeping llx_accounting_bookkeeping_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_accounting_bookkeeping
    ADD CONSTRAINT llx_accounting_bookkeeping_pkey PRIMARY KEY (rowid);


--
-- Name: llx_accounting_bookkeeping_tmp llx_accounting_bookkeeping_tmp_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_accounting_bookkeeping_tmp
    ADD CONSTRAINT llx_accounting_bookkeeping_tmp_pkey PRIMARY KEY (rowid);


--
-- Name: llx_accounting_fiscalyear llx_accounting_fiscalyear_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_accounting_fiscalyear
    ADD CONSTRAINT llx_accounting_fiscalyear_pkey PRIMARY KEY (rowid);


--
-- Name: llx_accounting_groups_account llx_accounting_groups_account_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_accounting_groups_account
    ADD CONSTRAINT llx_accounting_groups_account_pkey PRIMARY KEY (rowid);


--
-- Name: llx_accounting_journal llx_accounting_journal_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_accounting_journal
    ADD CONSTRAINT llx_accounting_journal_pkey PRIMARY KEY (rowid);


--
-- Name: llx_accounting_system llx_accounting_system_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_accounting_system
    ADD CONSTRAINT llx_accounting_system_pkey PRIMARY KEY (rowid);


--
-- Name: llx_actioncomm_extrafields llx_actioncomm_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_actioncomm_extrafields
    ADD CONSTRAINT llx_actioncomm_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_actioncomm llx_actioncomm_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_actioncomm
    ADD CONSTRAINT llx_actioncomm_pkey PRIMARY KEY (id);


--
-- Name: llx_actioncomm_reminder llx_actioncomm_reminder_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_actioncomm_reminder
    ADD CONSTRAINT llx_actioncomm_reminder_pkey PRIMARY KEY (rowid);


--
-- Name: llx_actioncomm_resources llx_actioncomm_resources_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_actioncomm_resources
    ADD CONSTRAINT llx_actioncomm_resources_pkey PRIMARY KEY (rowid);


--
-- Name: llx_adherent_extrafields llx_adherent_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_adherent_extrafields
    ADD CONSTRAINT llx_adherent_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_adherent llx_adherent_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_adherent
    ADD CONSTRAINT llx_adherent_pkey PRIMARY KEY (rowid);


--
-- Name: llx_adherent_type_extrafields llx_adherent_type_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_adherent_type_extrafields
    ADD CONSTRAINT llx_adherent_type_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_adherent_type_lang llx_adherent_type_lang_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_adherent_type_lang
    ADD CONSTRAINT llx_adherent_type_lang_pkey PRIMARY KEY (rowid);


--
-- Name: llx_adherent_type llx_adherent_type_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_adherent_type
    ADD CONSTRAINT llx_adherent_type_pkey PRIMARY KEY (rowid);


--
-- Name: llx_bank_account_extrafields llx_bank_account_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_bank_account_extrafields
    ADD CONSTRAINT llx_bank_account_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_bank_account llx_bank_account_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_bank_account
    ADD CONSTRAINT llx_bank_account_pkey PRIMARY KEY (rowid);


--
-- Name: llx_bank_extrafields llx_bank_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_bank_extrafields
    ADD CONSTRAINT llx_bank_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_bank llx_bank_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_bank
    ADD CONSTRAINT llx_bank_pkey PRIMARY KEY (rowid);


--
-- Name: llx_bank_url llx_bank_url_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_bank_url
    ADD CONSTRAINT llx_bank_url_pkey PRIMARY KEY (rowid);


--
-- Name: llx_blockedlog_authority llx_blockedlog_authority_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_blockedlog_authority
    ADD CONSTRAINT llx_blockedlog_authority_pkey PRIMARY KEY (rowid);


--
-- Name: llx_blockedlog llx_blockedlog_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_blockedlog
    ADD CONSTRAINT llx_blockedlog_pkey PRIMARY KEY (rowid);


--
-- Name: llx_bookmark llx_bookmark_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_bookmark
    ADD CONSTRAINT llx_bookmark_pkey PRIMARY KEY (rowid);


--
-- Name: llx_bordereau_cheque llx_bordereau_cheque_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_bordereau_cheque
    ADD CONSTRAINT llx_bordereau_cheque_pkey PRIMARY KEY (rowid);


--
-- Name: llx_boxes_def llx_boxes_def_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_boxes_def
    ADD CONSTRAINT llx_boxes_def_pkey PRIMARY KEY (rowid);


--
-- Name: llx_boxes llx_boxes_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_boxes
    ADD CONSTRAINT llx_boxes_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_action_trigger llx_c_action_trigger_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_action_trigger
    ADD CONSTRAINT llx_c_action_trigger_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_actioncomm llx_c_actioncomm_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_actioncomm
    ADD CONSTRAINT llx_c_actioncomm_pkey PRIMARY KEY (id);


--
-- Name: llx_c_availability llx_c_availability_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_availability
    ADD CONSTRAINT llx_c_availability_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_barcode_type llx_c_barcode_type_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_barcode_type
    ADD CONSTRAINT llx_c_barcode_type_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_chargesociales llx_c_chargesociales_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_chargesociales
    ADD CONSTRAINT llx_c_chargesociales_pkey PRIMARY KEY (id);


--
-- Name: llx_c_civility llx_c_civility_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_civility
    ADD CONSTRAINT llx_c_civility_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_country llx_c_country_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_country
    ADD CONSTRAINT llx_c_country_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_currencies llx_c_currencies_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_currencies
    ADD CONSTRAINT llx_c_currencies_pkey PRIMARY KEY (code_iso);


--
-- Name: llx_c_departements llx_c_departements_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_departements
    ADD CONSTRAINT llx_c_departements_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_ecotaxe llx_c_ecotaxe_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_ecotaxe
    ADD CONSTRAINT llx_c_ecotaxe_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_effectif llx_c_effectif_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_effectif
    ADD CONSTRAINT llx_c_effectif_pkey PRIMARY KEY (id);


--
-- Name: llx_c_email_senderprofile llx_c_email_senderprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_email_senderprofile
    ADD CONSTRAINT llx_c_email_senderprofile_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_email_templates llx_c_email_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_email_templates
    ADD CONSTRAINT llx_c_email_templates_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_field_list llx_c_field_list_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_field_list
    ADD CONSTRAINT llx_c_field_list_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_format_cards llx_c_format_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_format_cards
    ADD CONSTRAINT llx_c_format_cards_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_forme_juridique llx_c_forme_juridique_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_forme_juridique
    ADD CONSTRAINT llx_c_forme_juridique_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_holiday_types llx_c_holiday_types_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_holiday_types
    ADD CONSTRAINT llx_c_holiday_types_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_hrm_department llx_c_hrm_department_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_hrm_department
    ADD CONSTRAINT llx_c_hrm_department_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_hrm_function llx_c_hrm_function_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_hrm_function
    ADD CONSTRAINT llx_c_hrm_function_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_hrm_public_holiday llx_c_hrm_public_holiday_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_hrm_public_holiday
    ADD CONSTRAINT llx_c_hrm_public_holiday_pkey PRIMARY KEY (id);


--
-- Name: llx_c_incoterms llx_c_incoterms_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_incoterms
    ADD CONSTRAINT llx_c_incoterms_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_input_method llx_c_input_method_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_input_method
    ADD CONSTRAINT llx_c_input_method_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_input_reason llx_c_input_reason_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_input_reason
    ADD CONSTRAINT llx_c_input_reason_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_invoice_subtype llx_c_invoice_subtype_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_invoice_subtype
    ADD CONSTRAINT llx_c_invoice_subtype_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_lead_status llx_c_lead_status_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_lead_status
    ADD CONSTRAINT llx_c_lead_status_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_paiement llx_c_paiement_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_paiement
    ADD CONSTRAINT llx_c_paiement_pkey PRIMARY KEY (id);


--
-- Name: llx_c_paper_format llx_c_paper_format_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_paper_format
    ADD CONSTRAINT llx_c_paper_format_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_payment_term llx_c_payment_term_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_payment_term
    ADD CONSTRAINT llx_c_payment_term_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_product_nature llx_c_product_nature_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_product_nature
    ADD CONSTRAINT llx_c_product_nature_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_product_thirdparty_relation_type llx_c_product_thirdparty_relation_type_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_product_thirdparty_relation_type
    ADD CONSTRAINT llx_c_product_thirdparty_relation_type_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_propalst llx_c_propalst_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_propalst
    ADD CONSTRAINT llx_c_propalst_pkey PRIMARY KEY (id);


--
-- Name: llx_c_prospectcontactlevel llx_c_prospectcontactlevel_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_prospectcontactlevel
    ADD CONSTRAINT llx_c_prospectcontactlevel_pkey PRIMARY KEY (code);


--
-- Name: llx_c_prospectlevel llx_c_prospectlevel_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_prospectlevel
    ADD CONSTRAINT llx_c_prospectlevel_pkey PRIMARY KEY (code);


--
-- Name: llx_c_regions llx_c_regions_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_regions
    ADD CONSTRAINT llx_c_regions_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_revenuestamp llx_c_revenuestamp_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_revenuestamp
    ADD CONSTRAINT llx_c_revenuestamp_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_shipment_mode llx_c_shipment_mode_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_shipment_mode
    ADD CONSTRAINT llx_c_shipment_mode_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_shipment_package_type llx_c_shipment_package_type_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_shipment_package_type
    ADD CONSTRAINT llx_c_shipment_package_type_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_socialnetworks llx_c_socialnetworks_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_socialnetworks
    ADD CONSTRAINT llx_c_socialnetworks_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_stcomm llx_c_stcomm_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_stcomm
    ADD CONSTRAINT llx_c_stcomm_pkey PRIMARY KEY (id);


--
-- Name: llx_c_stcommcontact llx_c_stcommcontact_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_stcommcontact
    ADD CONSTRAINT llx_c_stcommcontact_pkey PRIMARY KEY (id);


--
-- Name: llx_c_transport_mode llx_c_transport_mode_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_transport_mode
    ADD CONSTRAINT llx_c_transport_mode_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_tva llx_c_tva_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_tva
    ADD CONSTRAINT llx_c_tva_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_type_contact llx_c_type_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_type_contact
    ADD CONSTRAINT llx_c_type_contact_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_type_fees llx_c_type_fees_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_type_fees
    ADD CONSTRAINT llx_c_type_fees_pkey PRIMARY KEY (id);


--
-- Name: llx_c_type_resource llx_c_type_resource_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_type_resource
    ADD CONSTRAINT llx_c_type_resource_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_typent llx_c_typent_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_typent
    ADD CONSTRAINT llx_c_typent_pkey PRIMARY KEY (id);


--
-- Name: llx_c_units llx_c_units_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_units
    ADD CONSTRAINT llx_c_units_pkey PRIMARY KEY (rowid);


--
-- Name: llx_c_ziptown llx_c_ziptown_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_ziptown
    ADD CONSTRAINT llx_c_ziptown_pkey PRIMARY KEY (rowid);


--
-- Name: llx_categorie_account llx_categorie_account_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_account
    ADD CONSTRAINT llx_categorie_account_pkey PRIMARY KEY (fk_categorie, fk_account);


--
-- Name: llx_categorie_actioncomm llx_categorie_actioncomm_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_actioncomm
    ADD CONSTRAINT llx_categorie_actioncomm_pkey PRIMARY KEY (fk_categorie, fk_actioncomm);


--
-- Name: llx_categorie_contact llx_categorie_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_contact
    ADD CONSTRAINT llx_categorie_contact_pkey PRIMARY KEY (fk_categorie, fk_socpeople);


--
-- Name: llx_categorie_fournisseur llx_categorie_fournisseur_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_fournisseur
    ADD CONSTRAINT llx_categorie_fournisseur_pkey PRIMARY KEY (fk_categorie, fk_soc);


--
-- Name: llx_categorie_lang llx_categorie_lang_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_lang
    ADD CONSTRAINT llx_categorie_lang_pkey PRIMARY KEY (rowid);


--
-- Name: llx_categorie_member llx_categorie_member_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_member
    ADD CONSTRAINT llx_categorie_member_pkey PRIMARY KEY (fk_categorie, fk_member);


--
-- Name: llx_categorie llx_categorie_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie
    ADD CONSTRAINT llx_categorie_pkey PRIMARY KEY (rowid);


--
-- Name: llx_categorie_product llx_categorie_product_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_product
    ADD CONSTRAINT llx_categorie_product_pkey PRIMARY KEY (fk_categorie, fk_product);


--
-- Name: llx_categorie_project llx_categorie_project_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_project
    ADD CONSTRAINT llx_categorie_project_pkey PRIMARY KEY (fk_categorie, fk_project);


--
-- Name: llx_categorie_societe llx_categorie_societe_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_societe
    ADD CONSTRAINT llx_categorie_societe_pkey PRIMARY KEY (fk_categorie, fk_soc);


--
-- Name: llx_categorie_supplier_invoice llx_categorie_supplier_invoice_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_supplier_invoice
    ADD CONSTRAINT llx_categorie_supplier_invoice_pkey PRIMARY KEY (fk_categorie, fk_supplier_invoice);


--
-- Name: llx_categorie_supplier_order llx_categorie_supplier_order_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_supplier_order
    ADD CONSTRAINT llx_categorie_supplier_order_pkey PRIMARY KEY (fk_categorie, fk_supplier_order);


--
-- Name: llx_categorie_user llx_categorie_user_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_user
    ADD CONSTRAINT llx_categorie_user_pkey PRIMARY KEY (fk_categorie, fk_user);


--
-- Name: llx_categories_extrafields llx_categories_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categories_extrafields
    ADD CONSTRAINT llx_categories_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_chargesociales llx_chargesociales_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_chargesociales
    ADD CONSTRAINT llx_chargesociales_pkey PRIMARY KEY (rowid);


--
-- Name: llx_commande_extrafields llx_commande_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_commande_extrafields
    ADD CONSTRAINT llx_commande_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_commande_fournisseur_extrafields llx_commande_fournisseur_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_commande_fournisseur_extrafields
    ADD CONSTRAINT llx_commande_fournisseur_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_commande_fournisseur_log llx_commande_fournisseur_log_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_commande_fournisseur_log
    ADD CONSTRAINT llx_commande_fournisseur_log_pkey PRIMARY KEY (rowid);


--
-- Name: llx_commande_fournisseur llx_commande_fournisseur_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_commande_fournisseur
    ADD CONSTRAINT llx_commande_fournisseur_pkey PRIMARY KEY (rowid);


--
-- Name: llx_commande_fournisseurdet_extrafields llx_commande_fournisseurdet_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_commande_fournisseurdet_extrafields
    ADD CONSTRAINT llx_commande_fournisseurdet_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_commande_fournisseurdet llx_commande_fournisseurdet_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_commande_fournisseurdet
    ADD CONSTRAINT llx_commande_fournisseurdet_pkey PRIMARY KEY (rowid);


--
-- Name: llx_commande llx_commande_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_commande
    ADD CONSTRAINT llx_commande_pkey PRIMARY KEY (rowid);


--
-- Name: llx_commandedet_extrafields llx_commandedet_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_commandedet_extrafields
    ADD CONSTRAINT llx_commandedet_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_commandedet llx_commandedet_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_commandedet
    ADD CONSTRAINT llx_commandedet_pkey PRIMARY KEY (rowid);


--
-- Name: llx_comment llx_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_comment
    ADD CONSTRAINT llx_comment_pkey PRIMARY KEY (rowid);


--
-- Name: llx_const llx_const_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_const
    ADD CONSTRAINT llx_const_pkey PRIMARY KEY (rowid);


--
-- Name: llx_contrat_extrafields llx_contrat_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_contrat_extrafields
    ADD CONSTRAINT llx_contrat_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_contrat llx_contrat_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_contrat
    ADD CONSTRAINT llx_contrat_pkey PRIMARY KEY (rowid);


--
-- Name: llx_contratdet_extrafields llx_contratdet_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_contratdet_extrafields
    ADD CONSTRAINT llx_contratdet_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_contratdet llx_contratdet_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_contratdet
    ADD CONSTRAINT llx_contratdet_pkey PRIMARY KEY (rowid);


--
-- Name: llx_cronjob llx_cronjob_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_cronjob
    ADD CONSTRAINT llx_cronjob_pkey PRIMARY KEY (rowid);


--
-- Name: llx_default_values llx_default_values_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_default_values
    ADD CONSTRAINT llx_default_values_pkey PRIMARY KEY (rowid);


--
-- Name: llx_delivery_extrafields llx_delivery_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_delivery_extrafields
    ADD CONSTRAINT llx_delivery_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_delivery llx_delivery_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_delivery
    ADD CONSTRAINT llx_delivery_pkey PRIMARY KEY (rowid);


--
-- Name: llx_deliverydet_extrafields llx_deliverydet_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_deliverydet_extrafields
    ADD CONSTRAINT llx_deliverydet_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_deliverydet llx_deliverydet_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_deliverydet
    ADD CONSTRAINT llx_deliverydet_pkey PRIMARY KEY (rowid);


--
-- Name: llx_document_model llx_document_model_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_document_model
    ADD CONSTRAINT llx_document_model_pkey PRIMARY KEY (rowid);


--
-- Name: llx_ecm_directories_extrafields llx_ecm_directories_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_ecm_directories_extrafields
    ADD CONSTRAINT llx_ecm_directories_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_ecm_directories llx_ecm_directories_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_ecm_directories
    ADD CONSTRAINT llx_ecm_directories_pkey PRIMARY KEY (rowid);


--
-- Name: llx_ecm_files_extrafields llx_ecm_files_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_ecm_files_extrafields
    ADD CONSTRAINT llx_ecm_files_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_ecm_files llx_ecm_files_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_ecm_files
    ADD CONSTRAINT llx_ecm_files_pkey PRIMARY KEY (rowid);


--
-- Name: llx_element_categorie llx_element_categorie_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_element_categorie
    ADD CONSTRAINT llx_element_categorie_pkey PRIMARY KEY (rowid);


--
-- Name: llx_element_contact llx_element_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_element_contact
    ADD CONSTRAINT llx_element_contact_pkey PRIMARY KEY (rowid);


--
-- Name: llx_element_element llx_element_element_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_element_element
    ADD CONSTRAINT llx_element_element_pkey PRIMARY KEY (rowid);


--
-- Name: llx_element_resources llx_element_resources_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_element_resources
    ADD CONSTRAINT llx_element_resources_pkey PRIMARY KEY (rowid);


--
-- Name: llx_element_time llx_element_time_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_element_time
    ADD CONSTRAINT llx_element_time_pkey PRIMARY KEY (rowid);


--
-- Name: llx_emailcollector_emailcollector llx_emailcollector_emailcollector_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_emailcollector_emailcollector
    ADD CONSTRAINT llx_emailcollector_emailcollector_pkey PRIMARY KEY (rowid);


--
-- Name: llx_emailcollector_emailcollectoraction llx_emailcollector_emailcollectoraction_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_emailcollector_emailcollectoraction
    ADD CONSTRAINT llx_emailcollector_emailcollectoraction_pkey PRIMARY KEY (rowid);


--
-- Name: llx_emailcollector_emailcollectorfilter llx_emailcollector_emailcollectorfilter_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_emailcollector_emailcollectorfilter
    ADD CONSTRAINT llx_emailcollector_emailcollectorfilter_pkey PRIMARY KEY (rowid);


--
-- Name: llx_entrepot_extrafields llx_entrepot_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_entrepot_extrafields
    ADD CONSTRAINT llx_entrepot_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_entrepot llx_entrepot_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_entrepot
    ADD CONSTRAINT llx_entrepot_pkey PRIMARY KEY (rowid);


--
-- Name: llx_establishment llx_establishment_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_establishment
    ADD CONSTRAINT llx_establishment_pkey PRIMARY KEY (rowid);


--
-- Name: llx_event_element llx_event_element_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_event_element
    ADD CONSTRAINT llx_event_element_pkey PRIMARY KEY (rowid);


--
-- Name: llx_eventorganization_conferenceorboothattendee_extrafields llx_eventorganization_conferenceorboothattendee_extrafield_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_eventorganization_conferenceorboothattendee_extrafields
    ADD CONSTRAINT llx_eventorganization_conferenceorboothattendee_extrafield_pkey PRIMARY KEY (rowid);


--
-- Name: llx_eventorganization_conferenceorboothattendee llx_eventorganization_conferenceorboothattendee_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_eventorganization_conferenceorboothattendee
    ADD CONSTRAINT llx_eventorganization_conferenceorboothattendee_pkey PRIMARY KEY (rowid);


--
-- Name: llx_events llx_events_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_events
    ADD CONSTRAINT llx_events_pkey PRIMARY KEY (rowid);


--
-- Name: llx_expedition_extrafields llx_expedition_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_expedition_extrafields
    ADD CONSTRAINT llx_expedition_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_expedition_package llx_expedition_package_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_expedition_package
    ADD CONSTRAINT llx_expedition_package_pkey PRIMARY KEY (rowid);


--
-- Name: llx_expedition llx_expedition_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_expedition
    ADD CONSTRAINT llx_expedition_pkey PRIMARY KEY (rowid);


--
-- Name: llx_expeditiondet_batch llx_expeditiondet_batch_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_expeditiondet_batch
    ADD CONSTRAINT llx_expeditiondet_batch_pkey PRIMARY KEY (rowid);


--
-- Name: llx_expeditiondet_extrafields llx_expeditiondet_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_expeditiondet_extrafields
    ADD CONSTRAINT llx_expeditiondet_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_expeditiondet llx_expeditiondet_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_expeditiondet
    ADD CONSTRAINT llx_expeditiondet_pkey PRIMARY KEY (rowid);


--
-- Name: llx_expensereport_det llx_expensereport_det_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_expensereport_det
    ADD CONSTRAINT llx_expensereport_det_pkey PRIMARY KEY (rowid);


--
-- Name: llx_expensereport_extrafields llx_expensereport_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_expensereport_extrafields
    ADD CONSTRAINT llx_expensereport_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_expensereport llx_expensereport_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_expensereport
    ADD CONSTRAINT llx_expensereport_pkey PRIMARY KEY (rowid);


--
-- Name: llx_export_model llx_export_model_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_export_model
    ADD CONSTRAINT llx_export_model_pkey PRIMARY KEY (rowid);


--
-- Name: llx_extrafields llx_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_extrafields
    ADD CONSTRAINT llx_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_facture_extrafields llx_facture_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_extrafields
    ADD CONSTRAINT llx_facture_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_facture_fourn_det_extrafields llx_facture_fourn_det_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_fourn_det_extrafields
    ADD CONSTRAINT llx_facture_fourn_det_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_facture_fourn_det llx_facture_fourn_det_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_fourn_det
    ADD CONSTRAINT llx_facture_fourn_det_pkey PRIMARY KEY (rowid);


--
-- Name: llx_facture_fourn_det_rec_extrafields llx_facture_fourn_det_rec_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_fourn_det_rec_extrafields
    ADD CONSTRAINT llx_facture_fourn_det_rec_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_facture_fourn_det_rec llx_facture_fourn_det_rec_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_fourn_det_rec
    ADD CONSTRAINT llx_facture_fourn_det_rec_pkey PRIMARY KEY (rowid);


--
-- Name: llx_facture_fourn_extrafields llx_facture_fourn_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_fourn_extrafields
    ADD CONSTRAINT llx_facture_fourn_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_facture_fourn llx_facture_fourn_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_fourn
    ADD CONSTRAINT llx_facture_fourn_pkey PRIMARY KEY (rowid);


--
-- Name: llx_facture_fourn_rec_extrafields llx_facture_fourn_rec_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_fourn_rec_extrafields
    ADD CONSTRAINT llx_facture_fourn_rec_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_facture_fourn_rec llx_facture_fourn_rec_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_fourn_rec
    ADD CONSTRAINT llx_facture_fourn_rec_pkey PRIMARY KEY (rowid);


--
-- Name: llx_facture llx_facture_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture
    ADD CONSTRAINT llx_facture_pkey PRIMARY KEY (rowid);


--
-- Name: llx_facture_rec_extrafields llx_facture_rec_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_rec_extrafields
    ADD CONSTRAINT llx_facture_rec_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_facture_rec llx_facture_rec_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_rec
    ADD CONSTRAINT llx_facture_rec_pkey PRIMARY KEY (rowid);


--
-- Name: llx_facturedet_extrafields llx_facturedet_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facturedet_extrafields
    ADD CONSTRAINT llx_facturedet_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_facturedet llx_facturedet_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facturedet
    ADD CONSTRAINT llx_facturedet_pkey PRIMARY KEY (rowid);


--
-- Name: llx_facturedet_rec_extrafields llx_facturedet_rec_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facturedet_rec_extrafields
    ADD CONSTRAINT llx_facturedet_rec_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_facturedet_rec llx_facturedet_rec_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facturedet_rec
    ADD CONSTRAINT llx_facturedet_rec_pkey PRIMARY KEY (rowid);


--
-- Name: llx_fichinter_extrafields llx_fichinter_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_fichinter_extrafields
    ADD CONSTRAINT llx_fichinter_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_fichinter llx_fichinter_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_fichinter
    ADD CONSTRAINT llx_fichinter_pkey PRIMARY KEY (rowid);


--
-- Name: llx_fichinter_rec llx_fichinter_rec_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_fichinter_rec
    ADD CONSTRAINT llx_fichinter_rec_pkey PRIMARY KEY (rowid);


--
-- Name: llx_fichinterdet_extrafields llx_fichinterdet_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_fichinterdet_extrafields
    ADD CONSTRAINT llx_fichinterdet_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_fichinterdet llx_fichinterdet_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_fichinterdet
    ADD CONSTRAINT llx_fichinterdet_pkey PRIMARY KEY (rowid);


--
-- Name: llx_fichinterdet_rec llx_fichinterdet_rec_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_fichinterdet_rec
    ADD CONSTRAINT llx_fichinterdet_rec_pkey PRIMARY KEY (rowid);


--
-- Name: llx_holiday_config llx_holiday_config_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_holiday_config
    ADD CONSTRAINT llx_holiday_config_pkey PRIMARY KEY (rowid);


--
-- Name: llx_holiday_extrafields llx_holiday_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_holiday_extrafields
    ADD CONSTRAINT llx_holiday_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_holiday_logs llx_holiday_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_holiday_logs
    ADD CONSTRAINT llx_holiday_logs_pkey PRIMARY KEY (rowid);


--
-- Name: llx_holiday llx_holiday_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_holiday
    ADD CONSTRAINT llx_holiday_pkey PRIMARY KEY (rowid);


--
-- Name: llx_import_model llx_import_model_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_import_model
    ADD CONSTRAINT llx_import_model_pkey PRIMARY KEY (rowid);


--
-- Name: llx_links llx_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_links
    ADD CONSTRAINT llx_links_pkey PRIMARY KEY (rowid);


--
-- Name: llx_localtax llx_localtax_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_localtax
    ADD CONSTRAINT llx_localtax_pkey PRIMARY KEY (rowid);


--
-- Name: llx_mailing_unsubscribe llx_mailing_unsubscribe_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_mailing_unsubscribe
    ADD CONSTRAINT llx_mailing_unsubscribe_pkey PRIMARY KEY (rowid);


--
-- Name: llx_menu llx_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_menu
    ADD CONSTRAINT llx_menu_pkey PRIMARY KEY (rowid);


--
-- Name: llx_multicurrency llx_multicurrency_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_multicurrency
    ADD CONSTRAINT llx_multicurrency_pkey PRIMARY KEY (rowid);


--
-- Name: llx_multicurrency_rate llx_multicurrency_rate_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_multicurrency_rate
    ADD CONSTRAINT llx_multicurrency_rate_pkey PRIMARY KEY (rowid);


--
-- Name: llx_notify_def_object llx_notify_def_object_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_notify_def_object
    ADD CONSTRAINT llx_notify_def_object_pkey PRIMARY KEY (id);


--
-- Name: llx_notify_def llx_notify_def_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_notify_def
    ADD CONSTRAINT llx_notify_def_pkey PRIMARY KEY (rowid);


--
-- Name: llx_notify llx_notify_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_notify
    ADD CONSTRAINT llx_notify_pkey PRIMARY KEY (rowid);


--
-- Name: llx_oauth_state llx_oauth_state_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_oauth_state
    ADD CONSTRAINT llx_oauth_state_pkey PRIMARY KEY (rowid);


--
-- Name: llx_oauth_token llx_oauth_token_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_oauth_token
    ADD CONSTRAINT llx_oauth_token_pkey PRIMARY KEY (rowid);


--
-- Name: llx_object_lang llx_object_lang_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_object_lang
    ADD CONSTRAINT llx_object_lang_pkey PRIMARY KEY (rowid);


--
-- Name: llx_onlinesignature llx_onlinesignature_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_onlinesignature
    ADD CONSTRAINT llx_onlinesignature_pkey PRIMARY KEY (rowid);


--
-- Name: llx_overwrite_trans llx_overwrite_trans_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_overwrite_trans
    ADD CONSTRAINT llx_overwrite_trans_pkey PRIMARY KEY (rowid);


--
-- Name: llx_paiement_facture llx_paiement_facture_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_paiement_facture
    ADD CONSTRAINT llx_paiement_facture_pkey PRIMARY KEY (rowid);


--
-- Name: llx_paiement llx_paiement_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_paiement
    ADD CONSTRAINT llx_paiement_pkey PRIMARY KEY (rowid);


--
-- Name: llx_paiementcharge llx_paiementcharge_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_paiementcharge
    ADD CONSTRAINT llx_paiementcharge_pkey PRIMARY KEY (rowid);


--
-- Name: llx_paiementfourn_facturefourn llx_paiementfourn_facturefourn_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_paiementfourn_facturefourn
    ADD CONSTRAINT llx_paiementfourn_facturefourn_pkey PRIMARY KEY (rowid);


--
-- Name: llx_paiementfourn llx_paiementfourn_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_paiementfourn
    ADD CONSTRAINT llx_paiementfourn_pkey PRIMARY KEY (rowid);


--
-- Name: llx_payment_donation llx_payment_donation_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_payment_donation
    ADD CONSTRAINT llx_payment_donation_pkey PRIMARY KEY (rowid);


--
-- Name: llx_payment_expensereport llx_payment_expensereport_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_payment_expensereport
    ADD CONSTRAINT llx_payment_expensereport_pkey PRIMARY KEY (rowid);


--
-- Name: llx_payment_loan llx_payment_loan_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_payment_loan
    ADD CONSTRAINT llx_payment_loan_pkey PRIMARY KEY (rowid);


--
-- Name: llx_payment_salary llx_payment_salary_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_payment_salary
    ADD CONSTRAINT llx_payment_salary_pkey PRIMARY KEY (rowid);


--
-- Name: llx_payment_various llx_payment_various_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_payment_various
    ADD CONSTRAINT llx_payment_various_pkey PRIMARY KEY (rowid);


--
-- Name: llx_payment_vat llx_payment_vat_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_payment_vat
    ADD CONSTRAINT llx_payment_vat_pkey PRIMARY KEY (rowid);


--
-- Name: llx_paymentexpensereport_expensereport llx_paymentexpensereport_expensereport_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_paymentexpensereport_expensereport
    ADD CONSTRAINT llx_paymentexpensereport_expensereport_pkey PRIMARY KEY (rowid);


--
-- Name: llx_pos_cash_fence_extrafields llx_pos_cash_fence_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_pos_cash_fence_extrafields
    ADD CONSTRAINT llx_pos_cash_fence_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_pos_cash_fence llx_pos_cash_fence_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_pos_cash_fence
    ADD CONSTRAINT llx_pos_cash_fence_pkey PRIMARY KEY (rowid);


--
-- Name: llx_prelevement_bons llx_prelevement_bons_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_prelevement_bons
    ADD CONSTRAINT llx_prelevement_bons_pkey PRIMARY KEY (rowid);


--
-- Name: llx_prelevement_demande llx_prelevement_demande_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_prelevement_demande
    ADD CONSTRAINT llx_prelevement_demande_pkey PRIMARY KEY (rowid);


--
-- Name: llx_prelevement_lignes llx_prelevement_lignes_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_prelevement_lignes
    ADD CONSTRAINT llx_prelevement_lignes_pkey PRIMARY KEY (rowid);


--
-- Name: llx_prelevement llx_prelevement_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_prelevement
    ADD CONSTRAINT llx_prelevement_pkey PRIMARY KEY (rowid);


--
-- Name: llx_prelevement_rejet llx_prelevement_rejet_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_prelevement_rejet
    ADD CONSTRAINT llx_prelevement_rejet_pkey PRIMARY KEY (rowid);


--
-- Name: llx_printing llx_printing_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_printing
    ADD CONSTRAINT llx_printing_pkey PRIMARY KEY (rowid);


--
-- Name: llx_product_association llx_product_association_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_association
    ADD CONSTRAINT llx_product_association_pkey PRIMARY KEY (rowid);


--
-- Name: llx_product_attribute llx_product_attribute_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_attribute
    ADD CONSTRAINT llx_product_attribute_pkey PRIMARY KEY (rowid);


--
-- Name: llx_product_attribute_value llx_product_attribute_value_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_attribute_value
    ADD CONSTRAINT llx_product_attribute_value_pkey PRIMARY KEY (rowid);


--
-- Name: llx_product_batch llx_product_batch_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_batch
    ADD CONSTRAINT llx_product_batch_pkey PRIMARY KEY (rowid);


--
-- Name: llx_product_customer_price_extrafields llx_product_customer_price_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_customer_price_extrafields
    ADD CONSTRAINT llx_product_customer_price_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_product_customer_price_log llx_product_customer_price_log_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_customer_price_log
    ADD CONSTRAINT llx_product_customer_price_log_pkey PRIMARY KEY (rowid);


--
-- Name: llx_product_customer_price llx_product_customer_price_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_customer_price
    ADD CONSTRAINT llx_product_customer_price_pkey PRIMARY KEY (rowid);


--
-- Name: llx_product_extrafields llx_product_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_extrafields
    ADD CONSTRAINT llx_product_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_product_fournisseur_price_extrafields llx_product_fournisseur_price_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_fournisseur_price_extrafields
    ADD CONSTRAINT llx_product_fournisseur_price_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_product_fournisseur_price_log llx_product_fournisseur_price_log_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_fournisseur_price_log
    ADD CONSTRAINT llx_product_fournisseur_price_log_pkey PRIMARY KEY (rowid);


--
-- Name: llx_product_fournisseur_price llx_product_fournisseur_price_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_fournisseur_price
    ADD CONSTRAINT llx_product_fournisseur_price_pkey PRIMARY KEY (rowid);


--
-- Name: llx_product_lang llx_product_lang_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_lang
    ADD CONSTRAINT llx_product_lang_pkey PRIMARY KEY (rowid);


--
-- Name: llx_product_lot_extrafields llx_product_lot_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_lot_extrafields
    ADD CONSTRAINT llx_product_lot_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_product_lot llx_product_lot_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_lot
    ADD CONSTRAINT llx_product_lot_pkey PRIMARY KEY (rowid);


--
-- Name: llx_product llx_product_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product
    ADD CONSTRAINT llx_product_pkey PRIMARY KEY (rowid);


--
-- Name: llx_product_price_by_qty llx_product_price_by_qty_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_price_by_qty
    ADD CONSTRAINT llx_product_price_by_qty_pkey PRIMARY KEY (rowid);


--
-- Name: llx_product_price_extrafields llx_product_price_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_price_extrafields
    ADD CONSTRAINT llx_product_price_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_product_price llx_product_price_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_price
    ADD CONSTRAINT llx_product_price_pkey PRIMARY KEY (rowid);


--
-- Name: llx_product_pricerules llx_product_pricerules_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_pricerules
    ADD CONSTRAINT llx_product_pricerules_pkey PRIMARY KEY (rowid);


--
-- Name: llx_product_stock llx_product_stock_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_stock
    ADD CONSTRAINT llx_product_stock_pkey PRIMARY KEY (rowid);


--
-- Name: llx_product_thirdparty llx_product_thirdparty_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_thirdparty
    ADD CONSTRAINT llx_product_thirdparty_pkey PRIMARY KEY (rowid);


--
-- Name: llx_projet_extrafields llx_projet_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_projet_extrafields
    ADD CONSTRAINT llx_projet_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_projet llx_projet_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_projet
    ADD CONSTRAINT llx_projet_pkey PRIMARY KEY (rowid);


--
-- Name: llx_projet_task_extrafields llx_projet_task_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_projet_task_extrafields
    ADD CONSTRAINT llx_projet_task_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_projet_task llx_projet_task_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_projet_task
    ADD CONSTRAINT llx_projet_task_pkey PRIMARY KEY (rowid);


--
-- Name: llx_propal_extrafields llx_propal_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_propal_extrafields
    ADD CONSTRAINT llx_propal_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_propal_merge_pdf_product llx_propal_merge_pdf_product_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_propal_merge_pdf_product
    ADD CONSTRAINT llx_propal_merge_pdf_product_pkey PRIMARY KEY (rowid);


--
-- Name: llx_propal llx_propal_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_propal
    ADD CONSTRAINT llx_propal_pkey PRIMARY KEY (rowid);


--
-- Name: llx_propaldet_extrafields llx_propaldet_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_propaldet_extrafields
    ADD CONSTRAINT llx_propaldet_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_propaldet llx_propaldet_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_propaldet
    ADD CONSTRAINT llx_propaldet_pkey PRIMARY KEY (rowid);


--
-- Name: llx_reception_extrafields llx_reception_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_reception_extrafields
    ADD CONSTRAINT llx_reception_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_reception llx_reception_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_reception
    ADD CONSTRAINT llx_reception_pkey PRIMARY KEY (rowid);


--
-- Name: llx_receptiondet_batch_extrafields llx_receptiondet_batch_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_receptiondet_batch_extrafields
    ADD CONSTRAINT llx_receptiondet_batch_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_receptiondet_batch llx_receptiondet_batch_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_receptiondet_batch
    ADD CONSTRAINT llx_receptiondet_batch_pkey PRIMARY KEY (rowid);


--
-- Name: llx_resource_extrafields llx_resource_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_resource_extrafields
    ADD CONSTRAINT llx_resource_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_resource llx_resource_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_resource
    ADD CONSTRAINT llx_resource_pkey PRIMARY KEY (rowid);


--
-- Name: llx_rights_def llx_rights_def_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_rights_def
    ADD CONSTRAINT llx_rights_def_pkey PRIMARY KEY (id, entity);


--
-- Name: llx_salary_extrafields llx_salary_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_salary_extrafields
    ADD CONSTRAINT llx_salary_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_salary llx_salary_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_salary
    ADD CONSTRAINT llx_salary_pkey PRIMARY KEY (rowid);


--
-- Name: llx_societe_account llx_societe_account_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_account
    ADD CONSTRAINT llx_societe_account_pkey PRIMARY KEY (rowid);


--
-- Name: llx_societe_commerciaux llx_societe_commerciaux_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_commerciaux
    ADD CONSTRAINT llx_societe_commerciaux_pkey PRIMARY KEY (rowid);


--
-- Name: llx_societe_contacts llx_societe_contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_contacts
    ADD CONSTRAINT llx_societe_contacts_pkey PRIMARY KEY (rowid);


--
-- Name: llx_societe_extrafields llx_societe_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_extrafields
    ADD CONSTRAINT llx_societe_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_societe llx_societe_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe
    ADD CONSTRAINT llx_societe_pkey PRIMARY KEY (rowid);


--
-- Name: llx_societe_prices llx_societe_prices_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_prices
    ADD CONSTRAINT llx_societe_prices_pkey PRIMARY KEY (rowid);


--
-- Name: llx_societe_remise_except llx_societe_remise_except_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_remise_except
    ADD CONSTRAINT llx_societe_remise_except_pkey PRIMARY KEY (rowid);


--
-- Name: llx_societe_remise llx_societe_remise_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_remise
    ADD CONSTRAINT llx_societe_remise_pkey PRIMARY KEY (rowid);


--
-- Name: llx_societe_remise_supplier llx_societe_remise_supplier_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_remise_supplier
    ADD CONSTRAINT llx_societe_remise_supplier_pkey PRIMARY KEY (rowid);


--
-- Name: llx_societe_rib llx_societe_rib_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_rib
    ADD CONSTRAINT llx_societe_rib_pkey PRIMARY KEY (rowid);


--
-- Name: llx_socpeople_extrafields llx_socpeople_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_socpeople_extrafields
    ADD CONSTRAINT llx_socpeople_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_socpeople llx_socpeople_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_socpeople
    ADD CONSTRAINT llx_socpeople_pkey PRIMARY KEY (rowid);


--
-- Name: llx_stock_mouvement_extrafields llx_stock_mouvement_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_stock_mouvement_extrafields
    ADD CONSTRAINT llx_stock_mouvement_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_stock_mouvement llx_stock_mouvement_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_stock_mouvement
    ADD CONSTRAINT llx_stock_mouvement_pkey PRIMARY KEY (rowid);


--
-- Name: llx_subscription llx_subscription_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_subscription
    ADD CONSTRAINT llx_subscription_pkey PRIMARY KEY (rowid);


--
-- Name: llx_supplier_proposal_extrafields llx_supplier_proposal_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_supplier_proposal_extrafields
    ADD CONSTRAINT llx_supplier_proposal_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_supplier_proposal llx_supplier_proposal_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_supplier_proposal
    ADD CONSTRAINT llx_supplier_proposal_pkey PRIMARY KEY (rowid);


--
-- Name: llx_supplier_proposaldet_extrafields llx_supplier_proposaldet_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_supplier_proposaldet_extrafields
    ADD CONSTRAINT llx_supplier_proposaldet_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_supplier_proposaldet llx_supplier_proposaldet_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_supplier_proposaldet
    ADD CONSTRAINT llx_supplier_proposaldet_pkey PRIMARY KEY (rowid);


--
-- Name: llx_tva llx_tva_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_tva
    ADD CONSTRAINT llx_tva_pkey PRIMARY KEY (rowid);


--
-- Name: llx_user_alert llx_user_alert_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_user_alert
    ADD CONSTRAINT llx_user_alert_pkey PRIMARY KEY (rowid);


--
-- Name: llx_user_clicktodial llx_user_clicktodial_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_user_clicktodial
    ADD CONSTRAINT llx_user_clicktodial_pkey PRIMARY KEY (fk_user);


--
-- Name: llx_user_employment llx_user_employment_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_user_employment
    ADD CONSTRAINT llx_user_employment_pkey PRIMARY KEY (rowid);


--
-- Name: llx_user_extrafields llx_user_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_user_extrafields
    ADD CONSTRAINT llx_user_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_user llx_user_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_user
    ADD CONSTRAINT llx_user_pkey PRIMARY KEY (rowid);


--
-- Name: llx_user_rib llx_user_rib_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_user_rib
    ADD CONSTRAINT llx_user_rib_pkey PRIMARY KEY (rowid);


--
-- Name: llx_user_rights llx_user_rights_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_user_rights
    ADD CONSTRAINT llx_user_rights_pkey PRIMARY KEY (rowid);


--
-- Name: llx_usergroup_extrafields llx_usergroup_extrafields_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_usergroup_extrafields
    ADD CONSTRAINT llx_usergroup_extrafields_pkey PRIMARY KEY (rowid);


--
-- Name: llx_usergroup llx_usergroup_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_usergroup
    ADD CONSTRAINT llx_usergroup_pkey PRIMARY KEY (rowid);


--
-- Name: llx_usergroup_rights llx_usergroup_rights_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_usergroup_rights
    ADD CONSTRAINT llx_usergroup_rights_pkey PRIMARY KEY (rowid);


--
-- Name: llx_usergroup_user llx_usergroup_user_pkey; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_usergroup_user
    ADD CONSTRAINT llx_usergroup_user_pkey PRIMARY KEY (rowid);


--
-- Name: llx_product_pricerules unique_level; Type: CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_pricerules
    ADD CONSTRAINT unique_level UNIQUE (level);


--
-- Name: billed; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX billed ON public.llx_commande_fournisseur USING btree (billed);


--
-- Name: entity; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX entity ON public.llx_blockedlog USING btree (entity);


--
-- Name: entity_action_certified; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX entity_action_certified ON public.llx_blockedlog USING btree (entity, action, certified);


--
-- Name: entity_rowid; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX entity_rowid ON public.llx_blockedlog USING btree (entity, rowid);


--
-- Name: fk_code_type_resource_idx; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX fk_code_type_resource_idx ON public.llx_resource USING btree (fk_code_type_resource);


--
-- Name: fk_object_element; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX fk_object_element ON public.llx_blockedlog USING btree (fk_object, element);


--
-- Name: fk_user; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX fk_user ON public.llx_blockedlog USING btree (fk_user);


--
-- Name: idx_accounting_account_account_parent; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_accounting_account_account_parent ON public.llx_accounting_account USING btree (account_parent);


--
-- Name: idx_accounting_account_fk_pcg_version; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_accounting_account_fk_pcg_version ON public.llx_accounting_account USING btree (fk_pcg_version);


--
-- Name: idx_accounting_bookkeeping_code_journal; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_accounting_bookkeeping_code_journal ON public.llx_accounting_bookkeeping USING btree (code_journal, entity);


--
-- Name: idx_accounting_bookkeeping_doc_date; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_accounting_bookkeeping_doc_date ON public.llx_accounting_bookkeeping USING btree (doc_date);


--
-- Name: idx_accounting_bookkeeping_fk_doc; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_accounting_bookkeeping_fk_doc ON public.llx_accounting_bookkeeping USING btree (fk_doc);


--
-- Name: idx_accounting_bookkeeping_fk_docdet; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_accounting_bookkeeping_fk_docdet ON public.llx_accounting_bookkeeping USING btree (fk_docdet);


--
-- Name: idx_accounting_bookkeeping_numero_compte; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_accounting_bookkeeping_numero_compte ON public.llx_accounting_bookkeeping USING btree (numero_compte, entity);


--
-- Name: idx_accounting_bookkeeping_piece_num; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_accounting_bookkeeping_piece_num ON public.llx_accounting_bookkeeping USING btree (piece_num, entity);


--
-- Name: idx_accounting_bookkeeping_ref; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_accounting_bookkeeping_ref ON public.llx_accounting_bookkeeping USING btree (ref);


--
-- Name: idx_accounting_bookkeeping_tmp_code_journal; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_accounting_bookkeeping_tmp_code_journal ON public.llx_accounting_bookkeeping_tmp USING btree (code_journal);


--
-- Name: idx_accounting_bookkeeping_tmp_doc_date; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_accounting_bookkeeping_tmp_doc_date ON public.llx_accounting_bookkeeping_tmp USING btree (doc_date);


--
-- Name: idx_accounting_bookkeeping_tmp_fk_docdet; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_accounting_bookkeeping_tmp_fk_docdet ON public.llx_accounting_bookkeeping_tmp USING btree (fk_docdet);


--
-- Name: idx_accounting_bookkeeping_tmp_numero_compte; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_accounting_bookkeeping_tmp_numero_compte ON public.llx_accounting_bookkeeping_tmp USING btree (numero_compte);


--
-- Name: idx_accounting_bookkeeping_tmp_ref; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_accounting_bookkeeping_tmp_ref ON public.llx_accounting_bookkeeping_tmp USING btree (ref);


--
-- Name: idx_action_trigger_rang; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_action_trigger_rang ON public.llx_c_action_trigger USING btree (rang);


--
-- Name: idx_actioncomm_code; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_actioncomm_code ON public.llx_actioncomm USING btree (code);


--
-- Name: idx_actioncomm_datep; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_actioncomm_datep ON public.llx_actioncomm USING btree (datep);


--
-- Name: idx_actioncomm_datep2; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_actioncomm_datep2 ON public.llx_actioncomm USING btree (datep2);


--
-- Name: idx_actioncomm_fk_contact; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_actioncomm_fk_contact ON public.llx_actioncomm USING btree (fk_contact);


--
-- Name: idx_actioncomm_fk_element; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_actioncomm_fk_element ON public.llx_actioncomm USING btree (fk_element);


--
-- Name: idx_actioncomm_fk_project; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_actioncomm_fk_project ON public.llx_actioncomm USING btree (fk_project);


--
-- Name: idx_actioncomm_fk_soc; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_actioncomm_fk_soc ON public.llx_actioncomm USING btree (fk_soc);


--
-- Name: idx_actioncomm_fk_user_action; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_actioncomm_fk_user_action ON public.llx_actioncomm USING btree (fk_user_action);


--
-- Name: idx_actioncomm_percent; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_actioncomm_percent ON public.llx_actioncomm USING btree (percent);


--
-- Name: idx_actioncomm_recurid; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_actioncomm_recurid ON public.llx_actioncomm USING btree (recurid);


--
-- Name: idx_actioncomm_ref; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_actioncomm_ref ON public.llx_actioncomm USING btree (ref, entity);


--
-- Name: idx_actioncomm_ref_ext; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_actioncomm_ref_ext ON public.llx_actioncomm USING btree (ref_ext);


--
-- Name: idx_actioncomm_reminder_dateremind; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_actioncomm_reminder_dateremind ON public.llx_actioncomm_reminder USING btree (dateremind);


--
-- Name: idx_actioncomm_reminder_fk_user; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_actioncomm_reminder_fk_user ON public.llx_actioncomm_reminder USING btree (fk_user);


--
-- Name: idx_actioncomm_reminder_status; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_actioncomm_reminder_status ON public.llx_actioncomm_reminder USING btree (status);


--
-- Name: idx_actioncomm_resources_fk_element; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_actioncomm_resources_fk_element ON public.llx_actioncomm_resources USING btree (fk_element);


--
-- Name: idx_adherent_fk_adherent_type; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_adherent_fk_adherent_type ON public.llx_adherent USING btree (fk_adherent_type);


--
-- Name: idx_bank_dateo; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_bank_dateo ON public.llx_bank USING btree (dateo);


--
-- Name: idx_bank_datev; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_bank_datev ON public.llx_bank USING btree (datev);


--
-- Name: idx_bank_fk_account; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_bank_fk_account ON public.llx_bank USING btree (fk_account);


--
-- Name: idx_bank_num_releve; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_bank_num_releve ON public.llx_bank USING btree (num_releve);


--
-- Name: idx_bank_rappro; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_bank_rappro ON public.llx_bank USING btree (rappro);


--
-- Name: idx_bank_url_url_id; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_bank_url_url_id ON public.llx_bank_url USING btree (url_id);


--
-- Name: idx_batch; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_batch ON public.llx_product_batch USING btree (batch);


--
-- Name: idx_boxes_boxid; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_boxes_boxid ON public.llx_boxes USING btree (box_id);


--
-- Name: idx_boxes_fk_user; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_boxes_fk_user ON public.llx_boxes USING btree (fk_user);


--
-- Name: idx_c_country_code; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX idx_c_country_code ON public.llx_c_country USING btree (code);


--
-- Name: idx_c_country_code_iso; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX idx_c_country_code_iso ON public.llx_c_country USING btree (code_iso);


--
-- Name: idx_c_country_label; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX idx_c_country_label ON public.llx_c_country USING btree (label);


--
-- Name: idx_c_regions_fk_pays; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_c_regions_fk_pays ON public.llx_c_regions USING btree (fk_pays);


--
-- Name: idx_c_socialnetworks_code_entity; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX idx_c_socialnetworks_code_entity ON public.llx_c_socialnetworks USING btree (entity, code);


--
-- Name: idx_c_type_contact_code; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_c_type_contact_code ON public.llx_c_type_contact USING btree (code);


--
-- Name: idx_c_ziptown_fk_county; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_c_ziptown_fk_county ON public.llx_c_ziptown USING btree (fk_county);


--
-- Name: idx_c_ziptown_fk_pays; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_c_ziptown_fk_pays ON public.llx_c_ziptown USING btree (fk_pays);


--
-- Name: idx_c_ziptown_zip; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_c_ziptown_zip ON public.llx_c_ziptown USING btree (zip);


--
-- Name: idx_categorie_account_fk_account; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_categorie_account_fk_account ON public.llx_categorie_account USING btree (fk_account);


--
-- Name: idx_categorie_account_fk_categorie; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_categorie_account_fk_categorie ON public.llx_categorie_account USING btree (fk_categorie);


--
-- Name: idx_categorie_actioncomm_fk_actioncomm; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_categorie_actioncomm_fk_actioncomm ON public.llx_categorie_actioncomm USING btree (fk_actioncomm);


--
-- Name: idx_categorie_actioncomm_fk_categorie; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_categorie_actioncomm_fk_categorie ON public.llx_categorie_actioncomm USING btree (fk_categorie);


--
-- Name: idx_categorie_contact_fk_categorie; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_categorie_contact_fk_categorie ON public.llx_categorie_contact USING btree (fk_categorie);


--
-- Name: idx_categorie_contact_fk_socpeople; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_categorie_contact_fk_socpeople ON public.llx_categorie_contact USING btree (fk_socpeople);


--
-- Name: idx_categorie_fournisseur_fk_categorie; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_categorie_fournisseur_fk_categorie ON public.llx_categorie_fournisseur USING btree (fk_categorie);


--
-- Name: idx_categorie_fournisseur_fk_societe; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_categorie_fournisseur_fk_societe ON public.llx_categorie_fournisseur USING btree (fk_soc);


--
-- Name: idx_categorie_member_fk_categorie; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_categorie_member_fk_categorie ON public.llx_categorie_member USING btree (fk_categorie);


--
-- Name: idx_categorie_member_fk_member; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_categorie_member_fk_member ON public.llx_categorie_member USING btree (fk_member);


--
-- Name: idx_categorie_product_fk_categorie; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_categorie_product_fk_categorie ON public.llx_categorie_product USING btree (fk_categorie);


--
-- Name: idx_categorie_product_fk_product; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_categorie_product_fk_product ON public.llx_categorie_product USING btree (fk_product);


--
-- Name: idx_categorie_project_fk_categorie; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_categorie_project_fk_categorie ON public.llx_categorie_project USING btree (fk_categorie);


--
-- Name: idx_categorie_project_fk_project; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_categorie_project_fk_project ON public.llx_categorie_project USING btree (fk_project);


--
-- Name: idx_categorie_societe_fk_categorie; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_categorie_societe_fk_categorie ON public.llx_categorie_societe USING btree (fk_categorie);


--
-- Name: idx_categorie_societe_fk_societe; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_categorie_societe_fk_societe ON public.llx_categorie_societe USING btree (fk_soc);


--
-- Name: idx_categorie_supplier_invoice_fk_categorie; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_categorie_supplier_invoice_fk_categorie ON public.llx_categorie_supplier_invoice USING btree (fk_categorie);


--
-- Name: idx_categorie_supplier_invoice_fk_supplier_invoice; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_categorie_supplier_invoice_fk_supplier_invoice ON public.llx_categorie_supplier_invoice USING btree (fk_supplier_invoice);


--
-- Name: idx_categorie_supplier_order_fk_categorie; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_categorie_supplier_order_fk_categorie ON public.llx_categorie_supplier_order USING btree (fk_categorie);


--
-- Name: idx_categorie_supplier_order_fk_supplier_order; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_categorie_supplier_order_fk_supplier_order ON public.llx_categorie_supplier_order USING btree (fk_supplier_order);


--
-- Name: idx_categorie_user_fk_categorie; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_categorie_user_fk_categorie ON public.llx_categorie_user USING btree (fk_categorie);


--
-- Name: idx_categorie_user_fk_user; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_categorie_user_fk_user ON public.llx_categorie_user USING btree (fk_user);


--
-- Name: idx_chargesociales_fk_account; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_chargesociales_fk_account ON public.llx_chargesociales USING btree (fk_account);


--
-- Name: idx_chargesociales_fk_mode_reglement; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_chargesociales_fk_mode_reglement ON public.llx_chargesociales USING btree (fk_mode_reglement);


--
-- Name: idx_chargesociales_fk_projet; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_chargesociales_fk_projet ON public.llx_chargesociales USING btree (fk_projet);


--
-- Name: idx_chargesociales_fk_type; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_chargesociales_fk_type ON public.llx_chargesociales USING btree (fk_type);


--
-- Name: idx_chargesociales_fk_user; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_chargesociales_fk_user ON public.llx_chargesociales USING btree (fk_user);


--
-- Name: idx_chargesociales_fk_user_author; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_chargesociales_fk_user_author ON public.llx_chargesociales USING btree (fk_user_author);


--
-- Name: idx_chargesociales_fk_user_modif; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_chargesociales_fk_user_modif ON public.llx_chargesociales USING btree (fk_user_modif);


--
-- Name: idx_chargesociales_fk_user_valid; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_chargesociales_fk_user_valid ON public.llx_chargesociales USING btree (fk_user_valid);


--
-- Name: idx_commande_fk_account; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_commande_fk_account ON public.llx_commande USING btree (fk_account);


--
-- Name: idx_commande_fk_currency; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_commande_fk_currency ON public.llx_commande USING btree (fk_currency);


--
-- Name: idx_commande_fk_projet; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_commande_fk_projet ON public.llx_commande USING btree (fk_projet);


--
-- Name: idx_commande_fk_soc; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_commande_fk_soc ON public.llx_commande USING btree (fk_soc);


--
-- Name: idx_commande_fk_user_author; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_commande_fk_user_author ON public.llx_commande USING btree (fk_user_author);


--
-- Name: idx_commande_fk_user_cloture; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_commande_fk_user_cloture ON public.llx_commande USING btree (fk_user_cloture);


--
-- Name: idx_commande_fk_user_valid; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_commande_fk_user_valid ON public.llx_commande USING btree (fk_user_valid);


--
-- Name: idx_commande_fournisseur_fk_soc; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_commande_fournisseur_fk_soc ON public.llx_commande_fournisseur USING btree (fk_soc);


--
-- Name: idx_commande_fournisseurdet_fk_commande; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_commande_fournisseurdet_fk_commande ON public.llx_commande_fournisseurdet USING btree (fk_commande);


--
-- Name: idx_commande_fournisseurdet_fk_product; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_commande_fournisseurdet_fk_product ON public.llx_commande_fournisseurdet USING btree (fk_product);


--
-- Name: idx_commandedet_fk_commande; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_commandedet_fk_commande ON public.llx_commandedet USING btree (fk_commande);


--
-- Name: idx_commandedet_fk_product; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_commandedet_fk_product ON public.llx_commandedet USING btree (fk_product);


--
-- Name: idx_contrat_fk_soc; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_contrat_fk_soc ON public.llx_contrat USING btree (fk_soc);


--
-- Name: idx_contrat_fk_user_author; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_contrat_fk_user_author ON public.llx_contrat USING btree (fk_user_author);


--
-- Name: idx_contratdet_date_fin_validite; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_contratdet_date_fin_validite ON public.llx_contratdet USING btree (date_fin_validite);


--
-- Name: idx_contratdet_date_ouverture; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_contratdet_date_ouverture ON public.llx_contratdet USING btree (date_ouverture);


--
-- Name: idx_contratdet_date_ouverture_prevue; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_contratdet_date_ouverture_prevue ON public.llx_contratdet USING btree (date_ouverture_prevue);


--
-- Name: idx_contratdet_fk_contrat; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_contratdet_fk_contrat ON public.llx_contratdet USING btree (fk_contrat);


--
-- Name: idx_contratdet_fk_product; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_contratdet_fk_product ON public.llx_contratdet USING btree (fk_product);


--
-- Name: idx_contratdet_statut; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_contratdet_statut ON public.llx_contratdet USING btree (statut);


--
-- Name: idx_cronjob_dateend; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_cronjob_dateend ON public.llx_cronjob USING btree (dateend);


--
-- Name: idx_cronjob_datelastrun; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_cronjob_datelastrun ON public.llx_cronjob USING btree (datelastrun);


--
-- Name: idx_cronjob_datenextrun; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_cronjob_datenextrun ON public.llx_cronjob USING btree (datenextrun);


--
-- Name: idx_cronjob_datestart; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_cronjob_datestart ON public.llx_cronjob USING btree (datestart);


--
-- Name: idx_cronjob_status; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_cronjob_status ON public.llx_cronjob USING btree (status);


--
-- Name: idx_delivery_fk_soc; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_delivery_fk_soc ON public.llx_delivery USING btree (fk_soc);


--
-- Name: idx_delivery_fk_user_author; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_delivery_fk_user_author ON public.llx_delivery USING btree (fk_user_author);


--
-- Name: idx_delivery_fk_user_valid; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_delivery_fk_user_valid ON public.llx_delivery USING btree (fk_user_valid);


--
-- Name: idx_delivery_uk_ref; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX idx_delivery_uk_ref ON public.llx_delivery USING btree (ref, entity);


--
-- Name: idx_deliverydet_fk_delivery; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_deliverydet_fk_delivery ON public.llx_deliverydet USING btree (fk_delivery);


--
-- Name: idx_departements_fk_region; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_departements_fk_region ON public.llx_c_departements USING btree (fk_region);


--
-- Name: idx_ecm_directories_fk_user_c; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_ecm_directories_fk_user_c ON public.llx_ecm_directories USING btree (fk_user_c);


--
-- Name: idx_ecm_directories_fk_user_m; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_ecm_directories_fk_user_m ON public.llx_ecm_directories USING btree (fk_user_m);


--
-- Name: idx_ecm_files_label; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_ecm_files_label ON public.llx_ecm_files USING btree (label);


--
-- Name: idx_element_categorie_fk_categorie; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_element_categorie_fk_categorie ON public.llx_element_categorie USING btree (fk_categorie);


--
-- Name: idx_element_categorie_idx; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX idx_element_categorie_idx ON public.llx_element_categorie USING btree (fk_element, fk_categorie);


--
-- Name: idx_element_contact_fk_socpeople; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_element_contact_fk_socpeople ON public.llx_element_contact USING btree (fk_socpeople);


--
-- Name: idx_element_contact_idx1; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX idx_element_contact_idx1 ON public.llx_element_contact USING btree (element_id, fk_c_type_contact, fk_socpeople);


--
-- Name: idx_element_element_element_id; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_element_element_element_id ON public.llx_element_resources USING btree (element_id);


--
-- Name: idx_element_element_fk_target; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_element_element_fk_target ON public.llx_element_element USING btree (fk_target);


--
-- Name: idx_element_element_idx1; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX idx_element_element_idx1 ON public.llx_element_element USING btree (fk_source, sourcetype, fk_target, targettype);


--
-- Name: idx_element_resources_idx1; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX idx_element_resources_idx1 ON public.llx_element_resources USING btree (resource_id, resource_type, element_id, element_type);


--
-- Name: idx_element_time_date; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_element_time_date ON public.llx_element_time USING btree (element_date);


--
-- Name: idx_element_time_datehour; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_element_time_datehour ON public.llx_element_time USING btree (element_datehour);


--
-- Name: idx_element_time_task; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_element_time_task ON public.llx_element_time USING btree (fk_element);


--
-- Name: idx_emailcollector_entity; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_emailcollector_entity ON public.llx_emailcollector_emailcollector USING btree (entity);


--
-- Name: idx_emailcollector_fk_emailcollector; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_emailcollector_fk_emailcollector ON public.llx_emailcollector_emailcollectoraction USING btree (fk_emailcollector);


--
-- Name: idx_emailcollector_status; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_emailcollector_status ON public.llx_emailcollector_emailcollector USING btree (status);


--
-- Name: idx_eventorganization_conferenceorboothattendee_email; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_eventorganization_conferenceorboothattendee_email ON public.llx_eventorganization_conferenceorboothattendee USING btree (email);


--
-- Name: idx_eventorganization_conferenceorboothattendee_fk_actioncomm; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_eventorganization_conferenceorboothattendee_fk_actioncomm ON public.llx_eventorganization_conferenceorboothattendee USING btree (fk_actioncomm);


--
-- Name: idx_eventorganization_conferenceorboothattendee_fk_project; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_eventorganization_conferenceorboothattendee_fk_project ON public.llx_eventorganization_conferenceorboothattendee USING btree (fk_project);


--
-- Name: idx_eventorganization_conferenceorboothattendee_fk_soc; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_eventorganization_conferenceorboothattendee_fk_soc ON public.llx_eventorganization_conferenceorboothattendee USING btree (fk_soc);


--
-- Name: idx_eventorganization_conferenceorboothattendee_rowid; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_eventorganization_conferenceorboothattendee_rowid ON public.llx_eventorganization_conferenceorboothattendee USING btree (rowid);


--
-- Name: idx_eventorganization_conferenceorboothattendee_status; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_eventorganization_conferenceorboothattendee_status ON public.llx_eventorganization_conferenceorboothattendee USING btree (status);


--
-- Name: idx_events_dateevent; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_events_dateevent ON public.llx_events USING btree (dateevent);


--
-- Name: idx_expedition_fk_shipping_method; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_expedition_fk_shipping_method ON public.llx_expedition USING btree (fk_shipping_method);


--
-- Name: idx_expedition_fk_soc; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_expedition_fk_soc ON public.llx_expedition USING btree (fk_soc);


--
-- Name: idx_expedition_fk_user_author; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_expedition_fk_user_author ON public.llx_expedition USING btree (fk_user_author);


--
-- Name: idx_expedition_fk_user_valid; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_expedition_fk_user_valid ON public.llx_expedition USING btree (fk_user_valid);


--
-- Name: idx_expedition_uk_ref; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX idx_expedition_uk_ref ON public.llx_expedition USING btree (ref, entity);


--
-- Name: idx_expeditiondet_fk_elementdet; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_expeditiondet_fk_elementdet ON public.llx_expeditiondet USING btree (fk_elementdet);


--
-- Name: idx_expeditiondet_fk_expedition; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_expeditiondet_fk_expedition ON public.llx_expeditiondet USING btree (fk_expedition);


--
-- Name: idx_expeditiondet_fk_parent; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_expeditiondet_fk_parent ON public.llx_expeditiondet USING btree (fk_parent);


--
-- Name: idx_expeditiondet_fk_product; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_expeditiondet_fk_product ON public.llx_expeditiondet USING btree (fk_product);


--
-- Name: idx_expensereport_date_debut; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_expensereport_date_debut ON public.llx_expensereport USING btree (date_debut);


--
-- Name: idx_expensereport_date_fin; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_expensereport_date_fin ON public.llx_expensereport USING btree (date_fin);


--
-- Name: idx_expensereport_fk_refuse; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_expensereport_fk_refuse ON public.llx_expensereport USING btree (fk_user_refuse);


--
-- Name: idx_expensereport_fk_statut; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_expensereport_fk_statut ON public.llx_expensereport USING btree (fk_statut);


--
-- Name: idx_expensereport_fk_user_approve; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_expensereport_fk_user_approve ON public.llx_expensereport USING btree (fk_user_approve);


--
-- Name: idx_expensereport_fk_user_author; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_expensereport_fk_user_author ON public.llx_expensereport USING btree (fk_user_author);


--
-- Name: idx_expensereport_fk_user_valid; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_expensereport_fk_user_valid ON public.llx_expensereport USING btree (fk_user_valid);


--
-- Name: idx_expensereport_uk_ref; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX idx_expensereport_uk_ref ON public.llx_expensereport USING btree (ref, entity);


--
-- Name: idx_facture_datef; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_facture_datef ON public.llx_facture USING btree (datef);


--
-- Name: idx_facture_fk_account; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_facture_fk_account ON public.llx_facture USING btree (fk_account);


--
-- Name: idx_facture_fk_currency; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_facture_fk_currency ON public.llx_facture USING btree (fk_currency);


--
-- Name: idx_facture_fk_facture_source; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_facture_fk_facture_source ON public.llx_facture USING btree (fk_facture_source);


--
-- Name: idx_facture_fk_input_reason; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_facture_fk_input_reason ON public.llx_facture USING btree (fk_input_reason);


--
-- Name: idx_facture_fk_projet; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_facture_fk_projet ON public.llx_facture USING btree (fk_projet);


--
-- Name: idx_facture_fk_soc; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_facture_fk_soc ON public.llx_facture USING btree (fk_soc);


--
-- Name: idx_facture_fk_statut; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_facture_fk_statut ON public.llx_facture USING btree (fk_statut);


--
-- Name: idx_facture_fk_user_author; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_facture_fk_user_author ON public.llx_facture USING btree (fk_user_author);


--
-- Name: idx_facture_fk_user_valid; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_facture_fk_user_valid ON public.llx_facture USING btree (fk_user_valid);


--
-- Name: idx_facture_fourn_date_lim_reglement; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_facture_fourn_date_lim_reglement ON public.llx_facture_fourn USING btree (date_lim_reglement);


--
-- Name: idx_facture_fourn_det_fk_code_ventilation; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_facture_fourn_det_fk_code_ventilation ON public.llx_facture_fourn_det USING btree (fk_code_ventilation);


--
-- Name: idx_facture_fourn_det_fk_facture; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_facture_fourn_det_fk_facture ON public.llx_facture_fourn_det USING btree (fk_facture_fourn);


--
-- Name: idx_facture_fourn_det_fk_product; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_facture_fourn_det_fk_product ON public.llx_facture_fourn_det USING btree (fk_product);


--
-- Name: idx_facture_fourn_fk_projet; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_facture_fourn_fk_projet ON public.llx_facture_fourn USING btree (fk_projet);


--
-- Name: idx_facture_fourn_fk_soc; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_facture_fourn_fk_soc ON public.llx_facture_fourn USING btree (fk_soc);


--
-- Name: idx_facture_fourn_fk_user_author; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_facture_fourn_fk_user_author ON public.llx_facture_fourn USING btree (fk_user_author);


--
-- Name: idx_facture_fourn_fk_user_valid; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_facture_fourn_fk_user_valid ON public.llx_facture_fourn USING btree (fk_user_valid);


--
-- Name: idx_facture_fourn_rec_fk_projet; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_facture_fourn_rec_fk_projet ON public.llx_facture_fourn_rec USING btree (fk_projet);


--
-- Name: idx_facture_fourn_rec_fk_soc; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_facture_fourn_rec_fk_soc ON public.llx_facture_fourn_rec USING btree (fk_soc);


--
-- Name: idx_facture_fourn_rec_fk_user_author; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_facture_fourn_rec_fk_user_author ON public.llx_facture_fourn_rec USING btree (fk_user_author);


--
-- Name: idx_facture_fourn_tms; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_facture_fourn_tms ON public.llx_facture_fourn USING btree (tms);


--
-- Name: idx_facture_rec_datec; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_facture_rec_datec ON public.llx_facture_rec USING btree (datec);


--
-- Name: idx_facture_rec_fk_projet; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_facture_rec_fk_projet ON public.llx_facture_rec USING btree (fk_projet);


--
-- Name: idx_facture_rec_fk_soc; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_facture_rec_fk_soc ON public.llx_facture_rec USING btree (fk_soc);


--
-- Name: idx_facture_rec_fk_user_author; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_facture_rec_fk_user_author ON public.llx_facture_rec USING btree (fk_user_author);


--
-- Name: idx_facture_rec_uk_titre; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX idx_facture_rec_uk_titre ON public.llx_facture_rec USING btree (titre, entity);


--
-- Name: idx_facture_tms; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_facture_tms ON public.llx_facture USING btree (tms);


--
-- Name: idx_facturedet_fk_code_ventilation; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_facturedet_fk_code_ventilation ON public.llx_facturedet USING btree (fk_code_ventilation);


--
-- Name: idx_facturedet_fk_facture; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_facturedet_fk_facture ON public.llx_facturedet USING btree (fk_facture);


--
-- Name: idx_facturedet_fk_product; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_facturedet_fk_product ON public.llx_facturedet USING btree (fk_product);


--
-- Name: idx_fichinter_fk_soc; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_fichinter_fk_soc ON public.llx_fichinter USING btree (fk_soc);


--
-- Name: idx_fichinter_rec_fk_projet; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_fichinter_rec_fk_projet ON public.llx_fichinter_rec USING btree (fk_projet);


--
-- Name: idx_fichinter_rec_fk_soc; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_fichinter_rec_fk_soc ON public.llx_fichinter_rec USING btree (fk_soc);


--
-- Name: idx_fichinter_rec_fk_user_author; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_fichinter_rec_fk_user_author ON public.llx_fichinter_rec USING btree (fk_user_author);


--
-- Name: idx_fichinter_rec_uk_titre; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX idx_fichinter_rec_uk_titre ON public.llx_fichinter_rec USING btree (title, entity);


--
-- Name: idx_fichinterdet_fk_fichinter; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_fichinterdet_fk_fichinter ON public.llx_fichinterdet USING btree (fk_fichinter);


--
-- Name: idx_fk_accountancy_journal; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_fk_accountancy_journal ON public.llx_bank_account USING btree (fk_accountancy_journal);


--
-- Name: idx_fk_expeditiondet; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_fk_expeditiondet ON public.llx_expeditiondet_batch USING btree (fk_expeditiondet);


--
-- Name: idx_fk_product_stock; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_fk_product_stock ON public.llx_product_batch USING btree (fk_product_stock);


--
-- Name: idx_holiday_config; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX idx_holiday_config ON public.llx_holiday_config USING btree (entity, name);


--
-- Name: idx_holiday_date_create; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_holiday_date_create ON public.llx_holiday USING btree (date_create);


--
-- Name: idx_holiday_date_debut; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_holiday_date_debut ON public.llx_holiday USING btree (date_debut);


--
-- Name: idx_holiday_date_fin; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_holiday_date_fin ON public.llx_holiday USING btree (date_fin);


--
-- Name: idx_holiday_entity; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_holiday_entity ON public.llx_holiday USING btree (entity);


--
-- Name: idx_holiday_fk_user; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_holiday_fk_user ON public.llx_holiday USING btree (fk_user);


--
-- Name: idx_holiday_fk_user_create; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_holiday_fk_user_create ON public.llx_holiday USING btree (fk_user_create);


--
-- Name: idx_holiday_fk_validator; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_holiday_fk_validator ON public.llx_holiday USING btree (fk_validator);


--
-- Name: idx_menu_menuhandler_type; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_menu_menuhandler_type ON public.llx_menu USING btree (menu_handler, type);


--
-- Name: idx_paiement_facture_fk_facture; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_paiement_facture_fk_facture ON public.llx_paiement_facture USING btree (fk_facture);


--
-- Name: idx_paiement_facture_fk_paiement; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_paiement_facture_fk_paiement ON public.llx_paiement_facture USING btree (fk_paiement);


--
-- Name: idx_paiementcharge_fk_charge; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_paiementcharge_fk_charge ON public.llx_paiementcharge USING btree (fk_charge);


--
-- Name: idx_paiementfourn_facturefourn_fk_facture; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_paiementfourn_facturefourn_fk_facture ON public.llx_paiementfourn_facturefourn USING btree (fk_facturefourn);


--
-- Name: idx_paiementfourn_facturefourn_fk_paiement; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_paiementfourn_facturefourn_fk_paiement ON public.llx_paiementfourn_facturefourn USING btree (fk_paiementfourn);


--
-- Name: idx_payment_salary_dateep; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_payment_salary_dateep ON public.llx_payment_salary USING btree (dateep);


--
-- Name: idx_payment_salary_datep; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_payment_salary_datep ON public.llx_payment_salary USING btree (datep);


--
-- Name: idx_payment_salary_datesp; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_payment_salary_datesp ON public.llx_payment_salary USING btree (datesp);


--
-- Name: idx_payment_salary_ref; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_payment_salary_ref ON public.llx_payment_salary USING btree (num_payment);


--
-- Name: idx_payment_salary_user; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_payment_salary_user ON public.llx_payment_salary USING btree (fk_user, entity);


--
-- Name: idx_prelevement_demande_ext_payment_id; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_prelevement_demande_ext_payment_id ON public.llx_prelevement_demande USING btree (ext_payment_id);


--
-- Name: idx_prelevement_demande_fk_facture; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_prelevement_demande_fk_facture ON public.llx_prelevement_demande USING btree (fk_facture);


--
-- Name: idx_prelevement_demande_fk_facture_fourn; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_prelevement_demande_fk_facture_fourn ON public.llx_prelevement_demande USING btree (fk_facture_fourn);


--
-- Name: idx_prelevement_fk_prelevement_lignes; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_prelevement_fk_prelevement_lignes ON public.llx_prelevement USING btree (fk_prelevement_lignes);


--
-- Name: idx_prelevement_lignes_fk_prelevement_bons; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_prelevement_lignes_fk_prelevement_bons ON public.llx_prelevement_lignes USING btree (fk_prelevement_bons);


--
-- Name: idx_product_association_fils; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_product_association_fils ON public.llx_product_association USING btree (fk_product_fils);


--
-- Name: idx_product_barcode; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_product_barcode ON public.llx_product USING btree (barcode);


--
-- Name: idx_product_customer_price_fk_soc; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_product_customer_price_fk_soc ON public.llx_product_customer_price USING btree (fk_soc);


--
-- Name: idx_product_customer_price_fk_user; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_product_customer_price_fk_user ON public.llx_product_customer_price USING btree (fk_user);


--
-- Name: idx_product_entity_fk_product_type; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_product_entity_fk_product_type ON public.llx_product USING btree (entity, fk_product_type);


--
-- Name: idx_product_fk_barcode_type; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_product_fk_barcode_type ON public.llx_product USING btree (fk_barcode_type);


--
-- Name: idx_product_fk_country; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_product_fk_country ON public.llx_product USING btree (fk_country);


--
-- Name: idx_product_fk_project; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_product_fk_project ON public.llx_product USING btree (fk_project);


--
-- Name: idx_product_fk_user_author; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_product_fk_user_author ON public.llx_product USING btree (fk_user_author);


--
-- Name: idx_product_fourn_price_fk_product; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_product_fourn_price_fk_product ON public.llx_product_fournisseur_price USING btree (fk_product, entity);


--
-- Name: idx_product_fourn_price_fk_soc; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_product_fourn_price_fk_soc ON public.llx_product_fournisseur_price USING btree (fk_soc, entity);


--
-- Name: idx_product_fournisseur_price_fk_user; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_product_fournisseur_price_fk_user ON public.llx_product_fournisseur_price USING btree (fk_user);


--
-- Name: idx_product_fournisseur_price_log_fk_product_fournisseur; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_product_fournisseur_price_log_fk_product_fournisseur ON public.llx_product_fournisseur_price_log USING btree (fk_product_fournisseur);


--
-- Name: idx_product_fournisseur_price_log_fk_user; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_product_fournisseur_price_log_fk_user ON public.llx_product_fournisseur_price_log USING btree (fk_user);


--
-- Name: idx_product_import_key; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_product_import_key ON public.llx_product USING btree (import_key);


--
-- Name: idx_product_label; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_product_label ON public.llx_product USING btree (label);


--
-- Name: idx_product_price_by_qty_fk_product_price; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_product_price_by_qty_fk_product_price ON public.llx_product_price_by_qty USING btree (fk_product_price);


--
-- Name: idx_product_price_fk_product; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_product_price_fk_product ON public.llx_product_price USING btree (fk_product);


--
-- Name: idx_product_price_fk_user_author; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_product_price_fk_user_author ON public.llx_product_price USING btree (fk_user_author);


--
-- Name: idx_product_seuil_stock_alerte; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_product_seuil_stock_alerte ON public.llx_product USING btree (seuil_stock_alerte);


--
-- Name: idx_product_stock_fk_entrepot; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_product_stock_fk_entrepot ON public.llx_product_stock USING btree (fk_entrepot);


--
-- Name: idx_product_stock_fk_product; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_product_stock_fk_product ON public.llx_product_stock USING btree (fk_product);


--
-- Name: idx_projet_fk_opp_status; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_projet_fk_opp_status ON public.llx_projet USING btree (fk_opp_status);


--
-- Name: idx_projet_fk_soc; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_projet_fk_soc ON public.llx_projet USING btree (fk_soc);


--
-- Name: idx_projet_fk_statut; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_projet_fk_statut ON public.llx_projet USING btree (fk_statut);


--
-- Name: idx_projet_ref; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_projet_ref ON public.llx_projet USING btree (ref);


--
-- Name: idx_projet_task_fk_projet; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_projet_task_fk_projet ON public.llx_projet_task USING btree (fk_projet);


--
-- Name: idx_projet_task_fk_user_creat; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_projet_task_fk_user_creat ON public.llx_projet_task USING btree (fk_user_creat);


--
-- Name: idx_projet_task_fk_user_valid; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_projet_task_fk_user_valid ON public.llx_projet_task USING btree (fk_user_valid);


--
-- Name: idx_propal_fk_account; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_propal_fk_account ON public.llx_propal USING btree (fk_account);


--
-- Name: idx_propal_fk_currency; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_propal_fk_currency ON public.llx_propal USING btree (fk_currency);


--
-- Name: idx_propal_fk_projet; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_propal_fk_projet ON public.llx_propal USING btree (fk_projet);


--
-- Name: idx_propal_fk_soc; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_propal_fk_soc ON public.llx_propal USING btree (fk_soc);


--
-- Name: idx_propal_fk_user_author; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_propal_fk_user_author ON public.llx_propal USING btree (fk_user_author);


--
-- Name: idx_propal_fk_user_cloture; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_propal_fk_user_cloture ON public.llx_propal USING btree (fk_user_cloture);


--
-- Name: idx_propal_fk_user_signature; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_propal_fk_user_signature ON public.llx_propal USING btree (fk_user_signature);


--
-- Name: idx_propal_fk_user_valid; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_propal_fk_user_valid ON public.llx_propal USING btree (fk_user_valid);


--
-- Name: idx_propal_fk_warehouse; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_propal_fk_warehouse ON public.llx_propal USING btree (fk_warehouse);


--
-- Name: idx_propaldet_fk_product; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_propaldet_fk_product ON public.llx_propaldet USING btree (fk_product);


--
-- Name: idx_propaldet_fk_propal; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_propaldet_fk_propal ON public.llx_propaldet USING btree (fk_propal);


--
-- Name: idx_reception_fk_shipping_method; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_reception_fk_shipping_method ON public.llx_reception USING btree (fk_shipping_method);


--
-- Name: idx_reception_fk_soc; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_reception_fk_soc ON public.llx_reception USING btree (fk_soc);


--
-- Name: idx_reception_fk_user_author; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_reception_fk_user_author ON public.llx_reception USING btree (fk_user_author);


--
-- Name: idx_reception_fk_user_valid; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_reception_fk_user_valid ON public.llx_reception USING btree (fk_user_valid);


--
-- Name: idx_reception_uk_ref; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX idx_reception_uk_ref ON public.llx_reception USING btree (ref, entity);


--
-- Name: idx_receptiondet_batch_fk_element; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_receptiondet_batch_fk_element ON public.llx_receptiondet_batch USING btree (fk_element);


--
-- Name: idx_receptiondet_batch_fk_elementdet; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_receptiondet_batch_fk_elementdet ON public.llx_receptiondet_batch USING btree (fk_elementdet);


--
-- Name: idx_receptiondet_batch_fk_product; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_receptiondet_batch_fk_product ON public.llx_receptiondet_batch USING btree (fk_product);


--
-- Name: idx_receptiondet_batch_fk_reception; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_receptiondet_batch_fk_reception ON public.llx_receptiondet_batch USING btree (fk_reception);


--
-- Name: idx_resource_fk_country; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_resource_fk_country ON public.llx_resource USING btree (fk_country);


--
-- Name: idx_resource_fk_state; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_resource_fk_state ON public.llx_resource USING btree (fk_state);


--
-- Name: idx_societe_account; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_societe_account ON public.llx_societe USING btree (fk_account);


--
-- Name: idx_societe_account_fk_soc; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_societe_account_fk_soc ON public.llx_societe_account USING btree (fk_soc);


--
-- Name: idx_societe_account_fk_website; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_societe_account_fk_website ON public.llx_societe_account USING btree (fk_website);


--
-- Name: idx_societe_account_login; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_societe_account_login ON public.llx_societe_account USING btree (login);


--
-- Name: idx_societe_account_rowid; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_societe_account_rowid ON public.llx_societe_account USING btree (rowid);


--
-- Name: idx_societe_account_status; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_societe_account_status ON public.llx_societe_account USING btree (status);


--
-- Name: idx_societe_contacts_idx1; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX idx_societe_contacts_idx1 ON public.llx_societe_contacts USING btree (entity, fk_soc, fk_c_type_contact, fk_socpeople);


--
-- Name: idx_societe_forme_juridique; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_societe_forme_juridique ON public.llx_societe USING btree (fk_forme_juridique);


--
-- Name: idx_societe_nom; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_societe_nom ON public.llx_societe USING btree (nom);


--
-- Name: idx_societe_pays; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_societe_pays ON public.llx_societe USING btree (fk_pays);


--
-- Name: idx_societe_prospectlevel; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_societe_prospectlevel ON public.llx_societe USING btree (fk_prospectlevel);


--
-- Name: idx_societe_remise_except_discount_type; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_societe_remise_except_discount_type ON public.llx_societe_remise_except USING btree (discount_type);


--
-- Name: idx_societe_remise_except_fk_facture; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_societe_remise_except_fk_facture ON public.llx_societe_remise_except USING btree (fk_facture);


--
-- Name: idx_societe_remise_except_fk_facture_line; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_societe_remise_except_fk_facture_line ON public.llx_societe_remise_except USING btree (fk_facture_line);


--
-- Name: idx_societe_remise_except_fk_facture_source; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_societe_remise_except_fk_facture_source ON public.llx_societe_remise_except USING btree (fk_facture_source);


--
-- Name: idx_societe_remise_except_fk_soc; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_societe_remise_except_fk_soc ON public.llx_societe_remise_except USING btree (fk_soc);


--
-- Name: idx_societe_remise_except_fk_user; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_societe_remise_except_fk_user ON public.llx_societe_remise_except USING btree (fk_user);


--
-- Name: idx_societe_shipping_method; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_societe_shipping_method ON public.llx_societe USING btree (fk_shipping_method);


--
-- Name: idx_societe_stcomm; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_societe_stcomm ON public.llx_societe USING btree (fk_stcomm);


--
-- Name: idx_societe_typent; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_societe_typent ON public.llx_societe USING btree (fk_typent);


--
-- Name: idx_societe_user_creat; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_societe_user_creat ON public.llx_societe USING btree (fk_user_creat);


--
-- Name: idx_societe_user_modif; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_societe_user_modif ON public.llx_societe USING btree (fk_user_modif);


--
-- Name: idx_socpeople_fk_soc; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_socpeople_fk_soc ON public.llx_socpeople USING btree (fk_soc);


--
-- Name: idx_socpeople_fk_user_creat; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_socpeople_fk_user_creat ON public.llx_socpeople USING btree (fk_user_creat);


--
-- Name: idx_socpeople_lastname; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_socpeople_lastname ON public.llx_socpeople USING btree (lastname);


--
-- Name: idx_stock_mouvement_fk_entrepot; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_stock_mouvement_fk_entrepot ON public.llx_stock_mouvement USING btree (fk_entrepot);


--
-- Name: idx_stock_mouvement_fk_product; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_stock_mouvement_fk_product ON public.llx_stock_mouvement USING btree (fk_product);


--
-- Name: idx_supplier_proposal_fk_account; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_supplier_proposal_fk_account ON public.llx_supplier_proposal USING btree (fk_account);


--
-- Name: idx_supplier_proposal_fk_projet; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_supplier_proposal_fk_projet ON public.llx_supplier_proposal USING btree (fk_projet);


--
-- Name: idx_supplier_proposal_fk_soc; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_supplier_proposal_fk_soc ON public.llx_supplier_proposal USING btree (fk_soc);


--
-- Name: idx_supplier_proposal_fk_user_author; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_supplier_proposal_fk_user_author ON public.llx_supplier_proposal USING btree (fk_user_author);


--
-- Name: idx_supplier_proposal_fk_user_valid; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_supplier_proposal_fk_user_valid ON public.llx_supplier_proposal USING btree (fk_user_valid);


--
-- Name: idx_supplier_proposaldet_fk_product; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_supplier_proposaldet_fk_product ON public.llx_supplier_proposaldet USING btree (fk_product);


--
-- Name: idx_supplier_proposaldet_fk_supplier_proposal; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_supplier_proposaldet_fk_supplier_proposal ON public.llx_supplier_proposaldet USING btree (fk_supplier_proposal);


--
-- Name: idx_tva_fk_department_buyer; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_tva_fk_department_buyer ON public.llx_c_tva USING btree (fk_department_buyer);


--
-- Name: idx_type; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_type ON public.llx_c_email_templates USING btree (type_template);


--
-- Name: idx_user_fk_societe; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX idx_user_fk_societe ON public.llx_user USING btree (fk_soc);


--
-- Name: signature; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE INDEX signature ON public.llx_blockedlog USING btree (signature);


--
-- Name: uk_accounting_account; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_accounting_account ON public.llx_accounting_account USING btree (account_number, entity, fk_pcg_version);


--
-- Name: uk_accounting_journal_code; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_accounting_journal_code ON public.llx_accounting_journal USING btree (code, entity);


--
-- Name: uk_accounting_system_pcg_version; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_accounting_system_pcg_version ON public.llx_accounting_system USING btree (pcg_version);


--
-- Name: uk_action_trigger_code; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_action_trigger_code ON public.llx_c_action_trigger USING btree (code);


--
-- Name: uk_actioncomm_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_actioncomm_extrafields ON public.llx_actioncomm_extrafields USING btree (fk_object);


--
-- Name: uk_actioncomm_reminder_unique; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_actioncomm_reminder_unique ON public.llx_actioncomm_reminder USING btree (fk_actioncomm, fk_user, typeremind, offsetvalue, offsetunit);


--
-- Name: uk_actioncomm_resources; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_actioncomm_resources ON public.llx_actioncomm_resources USING btree (fk_actioncomm, element_type, fk_element);


--
-- Name: uk_adherent_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_adherent_extrafields ON public.llx_adherent_extrafields USING btree (fk_object);


--
-- Name: uk_adherent_fk_soc; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_adherent_fk_soc ON public.llx_adherent USING btree (fk_soc);


--
-- Name: uk_adherent_login; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_adherent_login ON public.llx_adherent USING btree (login, entity);


--
-- Name: uk_adherent_ref; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_adherent_ref ON public.llx_adherent USING btree (ref, entity);


--
-- Name: uk_adherent_type_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_adherent_type_extrafields ON public.llx_adherent_type_extrafields USING btree (fk_object);


--
-- Name: uk_adherent_type_libelle; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_adherent_type_libelle ON public.llx_adherent_type USING btree (libelle, entity);


--
-- Name: uk_bank_account_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_bank_account_extrafields ON public.llx_bank_account_extrafields USING btree (fk_object);


--
-- Name: uk_bank_account_label; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_bank_account_label ON public.llx_bank_account USING btree (label, entity);


--
-- Name: uk_bank_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_bank_extrafields ON public.llx_bank_extrafields USING btree (fk_object);


--
-- Name: uk_bank_url; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_bank_url ON public.llx_bank_url USING btree (fk_bank, url_id, type);


--
-- Name: uk_bookmark_title; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_bookmark_title ON public.llx_bookmark USING btree (fk_user, entity, title);


--
-- Name: uk_bordereau_cheque; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_bordereau_cheque ON public.llx_bordereau_cheque USING btree (ref, entity);


--
-- Name: uk_boxes; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_boxes ON public.llx_boxes USING btree (entity, box_id, "position", fk_user);


--
-- Name: uk_boxes_def; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_boxes_def ON public.llx_boxes_def USING btree (file, entity, note);


--
-- Name: uk_c_actioncomm; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_actioncomm ON public.llx_c_actioncomm USING btree (code);


--
-- Name: uk_c_availability; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_availability ON public.llx_c_availability USING btree (code);


--
-- Name: uk_c_barcode_type; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_barcode_type ON public.llx_c_barcode_type USING btree (code, entity);


--
-- Name: uk_c_civility; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_civility ON public.llx_c_civility USING btree (code);


--
-- Name: uk_c_currencies_code_iso; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_currencies_code_iso ON public.llx_c_currencies USING btree (code_iso);


--
-- Name: uk_c_ecotaxe; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_ecotaxe ON public.llx_c_ecotaxe USING btree (code);


--
-- Name: uk_c_effectif; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_effectif ON public.llx_c_effectif USING btree (code);


--
-- Name: uk_c_email_senderprofile; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_email_senderprofile ON public.llx_c_email_senderprofile USING btree (entity, label, email);


--
-- Name: uk_c_email_templates; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_email_templates ON public.llx_c_email_templates USING btree (entity, label, lang);


--
-- Name: uk_c_forme_juridique; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_forme_juridique ON public.llx_c_forme_juridique USING btree (code);


--
-- Name: uk_c_holiday_types; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_holiday_types ON public.llx_c_holiday_types USING btree (entity, code);


--
-- Name: uk_c_hrm_public_holiday; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_hrm_public_holiday ON public.llx_c_hrm_public_holiday USING btree (entity, code);


--
-- Name: uk_c_hrm_public_holiday2; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_hrm_public_holiday2 ON public.llx_c_hrm_public_holiday USING btree (entity, fk_country, dayrule, day, month, year);


--
-- Name: uk_c_incoterms; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_incoterms ON public.llx_c_incoterms USING btree (code);


--
-- Name: uk_c_input_method; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_input_method ON public.llx_c_input_method USING btree (code);


--
-- Name: uk_c_input_reason; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_input_reason ON public.llx_c_input_reason USING btree (code);


--
-- Name: uk_c_invoice_subtype; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_invoice_subtype ON public.llx_c_invoice_subtype USING btree (entity, code, fk_country);


--
-- Name: uk_c_lead_status_code; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_lead_status_code ON public.llx_c_lead_status USING btree (code);


--
-- Name: uk_c_paiement_code; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_paiement_code ON public.llx_c_paiement USING btree (entity, code);


--
-- Name: uk_c_payment_term_code; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_payment_term_code ON public.llx_c_payment_term USING btree (entity, code);


--
-- Name: uk_c_product_nature; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_product_nature ON public.llx_c_product_nature USING btree (code);


--
-- Name: uk_c_propalst; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_propalst ON public.llx_c_propalst USING btree (code);


--
-- Name: uk_c_shipment_mode; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_shipment_mode ON public.llx_c_shipment_mode USING btree (code, entity);


--
-- Name: uk_c_stcomm; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_stcomm ON public.llx_c_stcomm USING btree (code);


--
-- Name: uk_c_stcommcontact; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_stcommcontact ON public.llx_c_stcommcontact USING btree (code);


--
-- Name: uk_c_transport_mode; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_transport_mode ON public.llx_c_transport_mode USING btree (code, entity);


--
-- Name: uk_c_tva_id; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_tva_id ON public.llx_c_tva USING btree (entity, fk_pays, code, taux, recuperableonly);


--
-- Name: uk_c_type_contact_id; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_type_contact_id ON public.llx_c_type_contact USING btree (element, source, code);


--
-- Name: uk_c_type_fees; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_type_fees ON public.llx_c_type_fees USING btree (code);


--
-- Name: uk_c_type_resource_id; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_type_resource_id ON public.llx_c_type_resource USING btree (label, code);


--
-- Name: uk_c_typent; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_typent ON public.llx_c_typent USING btree (code);


--
-- Name: uk_c_units_code; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_c_units_code ON public.llx_c_units USING btree (code);


--
-- Name: uk_categorie_ref; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_categorie_ref ON public.llx_categorie USING btree (entity, fk_parent, label, type);


--
-- Name: uk_categories_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_categories_extrafields ON public.llx_categories_extrafields USING btree (fk_object);


--
-- Name: uk_category_bankline_lineid; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_category_bankline_lineid ON public.llx_category_bankline USING btree (lineid, fk_categ);


--
-- Name: uk_category_lang; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_category_lang ON public.llx_categorie_lang USING btree (fk_category, lang);


--
-- Name: uk_code_region; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_code_region ON public.llx_c_regions USING btree (code_region);


--
-- Name: uk_commande_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_commande_extrafields ON public.llx_commande_extrafields USING btree (fk_object);


--
-- Name: uk_commande_fournisseur_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_commande_fournisseur_extrafields ON public.llx_commande_fournisseur_extrafields USING btree (fk_object);


--
-- Name: uk_commande_fournisseur_ref; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_commande_fournisseur_ref ON public.llx_commande_fournisseur USING btree (ref, entity);


--
-- Name: uk_commande_fournisseurdet_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_commande_fournisseurdet_extrafields ON public.llx_commande_fournisseurdet_extrafields USING btree (fk_object);


--
-- Name: uk_commande_ref; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_commande_ref ON public.llx_commande USING btree (ref, entity);


--
-- Name: uk_commandedet_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_commandedet_extrafields ON public.llx_commandedet_extrafields USING btree (fk_object);


--
-- Name: uk_conferenceorboothattendee_fk_object; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_conferenceorboothattendee_fk_object ON public.llx_eventorganization_conferenceorboothattendee_extrafields USING btree (fk_object);


--
-- Name: uk_const; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_const ON public.llx_const USING btree (name, entity);


--
-- Name: uk_contrat_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_contrat_extrafields ON public.llx_contrat_extrafields USING btree (fk_object);


--
-- Name: uk_contrat_ref; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_contrat_ref ON public.llx_contrat USING btree (ref, entity);


--
-- Name: uk_contratdet_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_contratdet_extrafields ON public.llx_contratdet_extrafields USING btree (fk_object);


--
-- Name: uk_cronjob; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_cronjob ON public.llx_cronjob USING btree (label, entity);


--
-- Name: uk_customer_price_fk_product_fk_soc; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_customer_price_fk_product_fk_soc ON public.llx_product_customer_price USING btree (fk_product, fk_soc, date_begin);


--
-- Name: uk_default_values; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_default_values ON public.llx_default_values USING btree (type, entity, user_id, page, param);


--
-- Name: uk_delivery_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_delivery_extrafields ON public.llx_delivery_extrafields USING btree (fk_object);


--
-- Name: uk_deliverydet_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_deliverydet_extrafields ON public.llx_deliverydet_extrafields USING btree (fk_object);


--
-- Name: uk_departements; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_departements ON public.llx_c_departements USING btree (code_departement, fk_region);


--
-- Name: uk_document_model; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_document_model ON public.llx_document_model USING btree (nom, type, entity);


--
-- Name: uk_ecm_directories; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_ecm_directories ON public.llx_ecm_directories USING btree (label, fk_parent, entity);


--
-- Name: uk_ecm_directories_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_ecm_directories_extrafields ON public.llx_ecm_directories_extrafields USING btree (fk_object);


--
-- Name: uk_ecm_files; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_ecm_files ON public.llx_ecm_files USING btree (filepath, filename, entity);


--
-- Name: uk_ecm_files_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_ecm_files_extrafields ON public.llx_ecm_files_extrafields USING btree (fk_object);


--
-- Name: uk_emailcollector_emailcollector_ref; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_emailcollector_emailcollector_ref ON public.llx_emailcollector_emailcollector USING btree (ref, entity);


--
-- Name: uk_emailcollector_emailcollectoraction; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_emailcollector_emailcollectoraction ON public.llx_emailcollector_emailcollectoraction USING btree (fk_emailcollector, type);


--
-- Name: uk_emailcollector_emailcollectorfilter; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_emailcollector_emailcollectorfilter ON public.llx_emailcollector_emailcollectorfilter USING btree (fk_emailcollector, type, rulevalue);


--
-- Name: uk_entrepot_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_entrepot_extrafields ON public.llx_entrepot_extrafields USING btree (fk_object);


--
-- Name: uk_entrepot_label; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_entrepot_label ON public.llx_entrepot USING btree (ref, entity);


--
-- Name: uk_eventorganization_confboothattendee; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_eventorganization_confboothattendee ON public.llx_eventorganization_conferenceorboothattendee USING btree (ref);


--
-- Name: uk_eventorganization_conferenceorboothattendee; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_eventorganization_conferenceorboothattendee ON public.llx_eventorganization_conferenceorboothattendee USING btree (fk_project, email, fk_actioncomm);


--
-- Name: uk_expedition_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_expedition_extrafields ON public.llx_expedition_extrafields USING btree (fk_object);


--
-- Name: uk_expeditiondet_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_expeditiondet_extrafields ON public.llx_expeditiondet_extrafields USING btree (fk_object);


--
-- Name: uk_expensereport_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_expensereport_extrafields ON public.llx_expensereport_extrafields USING btree (fk_object);


--
-- Name: uk_export_model; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_export_model ON public.llx_export_model USING btree (label, type);


--
-- Name: uk_extrafields_name; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_extrafields_name ON public.llx_extrafields USING btree (name, entity, elementtype);


--
-- Name: uk_facture_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_facture_extrafields ON public.llx_facture_extrafields USING btree (fk_object);


--
-- Name: uk_facture_fourn_det_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_facture_fourn_det_extrafields ON public.llx_facture_fourn_det_extrafields USING btree (fk_object);


--
-- Name: uk_facture_fourn_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_facture_fourn_extrafields ON public.llx_facture_fourn_extrafields USING btree (fk_object);


--
-- Name: uk_facture_fourn_rec_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_facture_fourn_rec_extrafields ON public.llx_facture_fourn_rec_extrafields USING btree (fk_object);


--
-- Name: uk_facture_fourn_rec_ref; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_facture_fourn_rec_ref ON public.llx_facture_fourn_rec USING btree (titre, entity);


--
-- Name: uk_facture_fourn_ref; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_facture_fourn_ref ON public.llx_facture_fourn USING btree (ref, entity);


--
-- Name: uk_facture_fourn_ref_supplier; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_facture_fourn_ref_supplier ON public.llx_facture_fourn USING btree (ref_supplier, fk_soc, entity);


--
-- Name: uk_facture_rec_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_facture_rec_extrafields ON public.llx_facture_rec_extrafields USING btree (fk_object);


--
-- Name: uk_facture_ref; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_facture_ref ON public.llx_facture USING btree (ref, entity);


--
-- Name: uk_facturedet_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_facturedet_extrafields ON public.llx_facturedet_extrafields USING btree (fk_object);


--
-- Name: uk_facturedet_rec_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_facturedet_rec_extrafields ON public.llx_facturedet_rec_extrafields USING btree (fk_object);


--
-- Name: uk_ficheinter_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_ficheinter_extrafields ON public.llx_fichinter_extrafields USING btree (fk_object);


--
-- Name: uk_ficheinterdet_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_ficheinterdet_extrafields ON public.llx_fichinterdet_extrafields USING btree (fk_object);


--
-- Name: uk_fichinter_ref; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_fichinter_ref ON public.llx_fichinter USING btree (ref, entity);


--
-- Name: uk_fk_remise_except; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_fk_remise_except ON public.llx_facture_fourn_det USING btree (fk_remise_except, fk_facture_fourn);


--
-- Name: uk_holiday_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_holiday_extrafields ON public.llx_holiday_extrafields USING btree (fk_object);


--
-- Name: uk_holiday_users; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_holiday_users ON public.llx_holiday_users USING btree (fk_user, fk_type);


--
-- Name: uk_import_model; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_import_model ON public.llx_import_model USING btree (label, type);


--
-- Name: uk_links; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_links ON public.llx_links USING btree (objectid, objecttype, label);


--
-- Name: uk_mailing_unsubscribe; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_mailing_unsubscribe ON public.llx_mailing_unsubscribe USING btree (email, entity, unsubscribegroup);


--
-- Name: uk_object_lang; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_object_lang ON public.llx_object_lang USING btree (fk_object, type_object, property, lang);


--
-- Name: uk_overwrite_trans; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_overwrite_trans ON public.llx_overwrite_trans USING btree (entity, lang, transkey);


--
-- Name: uk_paiement_facture; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_paiement_facture ON public.llx_paiement_facture USING btree (fk_paiement, fk_facture);


--
-- Name: uk_paiementfourn_facturefourn; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_paiementfourn_facturefourn ON public.llx_paiementfourn_facturefourn USING btree (fk_paiementfourn, fk_facturefourn);


--
-- Name: uk_pos_cash_fence_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_pos_cash_fence_extrafields ON public.llx_pos_cash_fence_extrafields USING btree (fk_object);


--
-- Name: uk_prelevement_bons_ref; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_prelevement_bons_ref ON public.llx_prelevement_bons USING btree (ref, entity);


--
-- Name: uk_product_association; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_product_association ON public.llx_product_association USING btree (fk_product_pere, fk_product_fils);


--
-- Name: uk_product_attribute_ref; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_product_attribute_ref ON public.llx_product_attribute USING btree (ref);


--
-- Name: uk_product_attribute_value; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_product_attribute_value ON public.llx_product_attribute_value USING btree (fk_product_attribute, ref);


--
-- Name: uk_product_barcode; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_product_barcode ON public.llx_product USING btree (barcode, fk_barcode_type, entity);


--
-- Name: uk_product_batch; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_product_batch ON public.llx_product_batch USING btree (fk_product_stock, batch);


--
-- Name: uk_product_customer_price_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_product_customer_price_extrafields ON public.llx_product_customer_price_extrafields USING btree (fk_object);


--
-- Name: uk_product_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_product_extrafields ON public.llx_product_extrafields USING btree (fk_object);


--
-- Name: uk_product_fournisseur_price_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_product_fournisseur_price_extrafields ON public.llx_product_fournisseur_price_extrafields USING btree (fk_object);


--
-- Name: uk_product_fournisseur_price_ref; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_product_fournisseur_price_ref ON public.llx_product_fournisseur_price USING btree (ref_fourn, fk_soc, quantity, entity);


--
-- Name: uk_product_lang; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_product_lang ON public.llx_product_lang USING btree (fk_product, lang);


--
-- Name: uk_product_lot; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_product_lot ON public.llx_product_lot USING btree (fk_product, batch);


--
-- Name: uk_product_lot_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_product_lot_extrafields ON public.llx_product_lot_extrafields USING btree (fk_object);


--
-- Name: uk_product_price_by_qty_level; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_product_price_by_qty_level ON public.llx_product_price_by_qty USING btree (fk_product_price, quantity);


--
-- Name: uk_product_price_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_product_price_extrafields ON public.llx_product_price_extrafields USING btree (fk_object);


--
-- Name: uk_product_ref; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_product_ref ON public.llx_product USING btree (ref, entity);


--
-- Name: uk_product_stock; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_product_stock ON public.llx_product_stock USING btree (fk_product, fk_entrepot);


--
-- Name: uk_projet_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_projet_extrafields ON public.llx_projet_extrafields USING btree (fk_object);


--
-- Name: uk_projet_ref; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_projet_ref ON public.llx_projet USING btree (ref, entity);


--
-- Name: uk_projet_task_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_projet_task_extrafields ON public.llx_projet_task_extrafields USING btree (fk_object);


--
-- Name: uk_projet_task_ref; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_projet_task_ref ON public.llx_projet_task USING btree (ref, entity);


--
-- Name: uk_propal_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_propal_extrafields ON public.llx_propal_extrafields USING btree (fk_object);


--
-- Name: uk_propal_ref; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_propal_ref ON public.llx_propal USING btree (ref, entity);


--
-- Name: uk_propaldet_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_propaldet_extrafields ON public.llx_propaldet_extrafields USING btree (fk_object);


--
-- Name: uk_reception_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_reception_extrafields ON public.llx_reception_extrafields USING btree (fk_object);


--
-- Name: uk_receptiondet_batch_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_receptiondet_batch_extrafields ON public.llx_receptiondet_batch_extrafields USING btree (fk_object);


--
-- Name: uk_resource_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_resource_extrafields ON public.llx_resource_extrafields USING btree (fk_object);


--
-- Name: uk_resource_ref; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_resource_ref ON public.llx_resource USING btree (ref, entity);


--
-- Name: uk_salary_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_salary_extrafields ON public.llx_salary_extrafields USING btree (fk_object);


--
-- Name: uk_societe_account_key_account_soc; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_societe_account_key_account_soc ON public.llx_societe_account USING btree (entity, fk_soc, key_account, site, fk_website);


--
-- Name: uk_societe_account_login_website; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_societe_account_login_website ON public.llx_societe_account USING btree (entity, login, site, fk_website);


--
-- Name: uk_societe_barcode; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_societe_barcode ON public.llx_societe USING btree (barcode, fk_barcode_type, entity);


--
-- Name: uk_societe_code_client; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_societe_code_client ON public.llx_societe USING btree (code_client, entity);


--
-- Name: uk_societe_code_fournisseur; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_societe_code_fournisseur ON public.llx_societe USING btree (code_fournisseur, entity);


--
-- Name: uk_societe_commerciaux_c_type_contact; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_societe_commerciaux_c_type_contact ON public.llx_societe_commerciaux USING btree (fk_soc, fk_user, fk_c_type_contact_code);


--
-- Name: uk_societe_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_societe_extrafields ON public.llx_societe_extrafields USING btree (fk_object);


--
-- Name: uk_societe_prefix_comm; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_societe_prefix_comm ON public.llx_societe USING btree (prefix_comm, entity);


--
-- Name: uk_societe_rib; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_societe_rib ON public.llx_societe_rib USING btree (entity, label, fk_soc);


--
-- Name: uk_socpeople_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_socpeople_extrafields ON public.llx_socpeople_extrafields USING btree (fk_object);


--
-- Name: uk_stock_mouvement_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_stock_mouvement_extrafields ON public.llx_stock_mouvement_extrafields USING btree (fk_object);


--
-- Name: uk_subscription; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_subscription ON public.llx_subscription USING btree (fk_adherent, dateadh);


--
-- Name: uk_supplier_proposal_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_supplier_proposal_extrafields ON public.llx_supplier_proposal_extrafields USING btree (fk_object);


--
-- Name: uk_supplier_proposal_ref; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_supplier_proposal_ref ON public.llx_supplier_proposal USING btree (ref, entity);


--
-- Name: uk_supplier_proposaldet_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_supplier_proposaldet_extrafields ON public.llx_supplier_proposaldet_extrafields USING btree (fk_object);


--
-- Name: uk_user_api_key; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_user_api_key ON public.llx_user USING btree (api_key);


--
-- Name: uk_user_employment; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_user_employment ON public.llx_user_employment USING btree (ref, entity);


--
-- Name: uk_user_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_user_extrafields ON public.llx_user_extrafields USING btree (fk_object);


--
-- Name: uk_user_fk_member; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_user_fk_member ON public.llx_user USING btree (fk_member);


--
-- Name: uk_user_fk_socpeople; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_user_fk_socpeople ON public.llx_user USING btree (fk_socpeople);


--
-- Name: uk_user_login; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_user_login ON public.llx_user USING btree (login, entity);


--
-- Name: uk_user_param; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_user_param ON public.llx_user_param USING btree (fk_user, param, entity);


--
-- Name: uk_user_rights; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_user_rights ON public.llx_user_rights USING btree (entity, fk_user, fk_id);


--
-- Name: uk_usergroup_extrafields; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_usergroup_extrafields ON public.llx_usergroup_extrafields USING btree (fk_object);


--
-- Name: uk_usergroup_name; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_usergroup_name ON public.llx_usergroup USING btree (nom, entity);


--
-- Name: uk_usergroup_rights; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_usergroup_rights ON public.llx_usergroup_rights USING btree (entity, fk_usergroup, fk_id);


--
-- Name: uk_usergroup_user; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_usergroup_user ON public.llx_usergroup_user USING btree (entity, fk_user, fk_usergroup);


--
-- Name: uk_ziptown_fk_pays; Type: INDEX; Schema: public; Owner: dolibarr
--

CREATE UNIQUE INDEX uk_ziptown_fk_pays ON public.llx_c_ziptown USING btree (zip, town, fk_pays);


--
-- Name: llx_accounting_account update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_accounting_account FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_accounting_fiscalyear update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_accounting_fiscalyear FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_actioncomm update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_actioncomm FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_actioncomm_extrafields update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_actioncomm_extrafields FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_adherent update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_adherent FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_adherent_extrafields update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_adherent_extrafields FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_adherent_type update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_adherent_type FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_adherent_type_extrafields update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_adherent_type_extrafields FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_bank update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_bank FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_bank_account update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_bank_account FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_bank_account_extrafields update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_bank_account_extrafields FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_blockedlog update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_blockedlog FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_blockedlog_authority update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_blockedlog_authority FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_bordereau_cheque update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_bordereau_cheque FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_boxes_def update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_boxes_def FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_c_email_templates update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_c_email_templates FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_c_field_list update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_c_field_list FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_c_shipment_mode update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_c_shipment_mode FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_categories_extrafields update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_categories_extrafields FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_chargesociales update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_chargesociales FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_commande update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_commande FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_commande_extrafields update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_commande_extrafields FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_commande_fournisseur update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_commande_fournisseur FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_commande_fournisseur_extrafields update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_commande_fournisseur_extrafields FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_commande_fournisseur_log update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_commande_fournisseur_log FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_commande_fournisseurdet_extrafields update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_commande_fournisseurdet_extrafields FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_commandedet_extrafields update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_commandedet_extrafields FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_const update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_const FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_contrat update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_contrat FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_contrat_extrafields update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_contrat_extrafields FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_contratdet update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_contratdet FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_contratdet_extrafields update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_contratdet_extrafields FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_cronjob update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_cronjob FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_delivery update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_delivery FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_ecm_directories update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_ecm_directories FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_ecm_files update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_ecm_files FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_element_resources update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_element_resources FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_element_time update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_element_time FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_emailcollector_emailcollector update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_emailcollector_emailcollector FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_emailcollector_emailcollectoraction update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_emailcollector_emailcollectoraction FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_emailcollector_emailcollectorfilter update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_emailcollector_emailcollectorfilter FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_entrepot update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_entrepot FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_entrepot_extrafields update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_entrepot_extrafields FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_events update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_events FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_expedition update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_expedition FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_expensereport update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_expensereport FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_extrafields update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_extrafields FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_facture update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_facture FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_facture_extrafields update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_facture_extrafields FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_facture_fourn update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_facture_fourn FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_facture_fourn_det_extrafields update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_facture_fourn_det_extrafields FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_facture_fourn_extrafields update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_facture_fourn_extrafields FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_facture_rec update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_facture_rec FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_facturedet_extrafields update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_facturedet_extrafields FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_fichinter update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_fichinter FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_fichinter_extrafields update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_fichinter_extrafields FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_fichinterdet_extrafields update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_fichinterdet_extrafields FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_localtax update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_localtax FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_menu update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_menu FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_notify update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_notify FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_notify_def update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_notify_def FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_paiement update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_paiement FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_paiementcharge update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_paiementcharge FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_paiementfourn update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_paiementfourn FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_payment_donation update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_payment_donation FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_payment_expensereport update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_payment_expensereport FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_payment_loan update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_payment_loan FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_payment_salary update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_payment_salary FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_prelevement_lignes update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_prelevement_lignes FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_printing update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_printing FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_product update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_product FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_product_batch update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_product_batch FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_product_customer_price update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_product_customer_price FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_product_extrafields update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_product_extrafields FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_product_fournisseur_price update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_product_fournisseur_price FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_product_price update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_product_price FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_product_price_by_qty update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_product_price_by_qty FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_product_stock update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_product_stock FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_projet update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_projet FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_projet_extrafields update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_projet_extrafields FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_projet_task update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_projet_task FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_projet_task_extrafields update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_projet_task_extrafields FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_propal update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_propal FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_propal_extrafields update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_propal_extrafields FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_propal_merge_pdf_product update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_propal_merge_pdf_product FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_propaldet_extrafields update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_propaldet_extrafields FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_reception update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_reception FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_receptiondet_batch update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_receptiondet_batch FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_resource update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_resource FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_salary update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_salary FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_societe update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_societe FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_societe_extrafields update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_societe_extrafields FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_societe_prices update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_societe_prices FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_societe_remise update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_societe_remise FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_societe_rib update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_societe_rib FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_socpeople update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_socpeople FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_socpeople_extrafields update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_socpeople_extrafields FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_stock_mouvement update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_stock_mouvement FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_subscription update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_subscription FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_supplier_proposal update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_supplier_proposal FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_supplier_proposal_extrafields update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_supplier_proposal_extrafields FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_supplier_proposaldet_extrafields update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_supplier_proposaldet_extrafields FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_tva update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_tva FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_user update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_user FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_user_extrafields update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_user_extrafields FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_usergroup update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_usergroup FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_usergroup_extrafields update_customer_modtime; Type: TRIGGER; Schema: public; Owner: dolibarr
--

CREATE TRIGGER update_customer_modtime BEFORE UPDATE ON public.llx_usergroup_extrafields FOR EACH ROW EXECUTE FUNCTION public.update_modified_column_tms();


--
-- Name: llx_adherent adherent_fk_soc; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_adherent
    ADD CONSTRAINT adherent_fk_soc FOREIGN KEY (fk_soc) REFERENCES public.llx_societe(rowid) DEFERRABLE;


--
-- Name: llx_accounting_account fk_accounting_account_fk_pcg_version; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_accounting_account
    ADD CONSTRAINT fk_accounting_account_fk_pcg_version FOREIGN KEY (fk_pcg_version) REFERENCES public.llx_accounting_system(pcg_version) DEFERRABLE;


--
-- Name: llx_adherent fk_adherent_adherent_type; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_adherent
    ADD CONSTRAINT fk_adherent_adherent_type FOREIGN KEY (fk_adherent_type) REFERENCES public.llx_adherent_type(rowid) DEFERRABLE;


--
-- Name: llx_bank_account fk_bank_account_accountancy_journal; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_bank_account
    ADD CONSTRAINT fk_bank_account_accountancy_journal FOREIGN KEY (fk_accountancy_journal) REFERENCES public.llx_accounting_journal(rowid) DEFERRABLE;


--
-- Name: llx_boxes fk_boxes_box_id; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_boxes
    ADD CONSTRAINT fk_boxes_box_id FOREIGN KEY (box_id) REFERENCES public.llx_boxes_def(rowid) DEFERRABLE;


--
-- Name: llx_c_regions fk_c_regions_fk_pays; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_regions
    ADD CONSTRAINT fk_c_regions_fk_pays FOREIGN KEY (fk_pays) REFERENCES public.llx_c_country(rowid) DEFERRABLE;


--
-- Name: llx_c_ziptown fk_c_ziptown_fk_county; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_ziptown
    ADD CONSTRAINT fk_c_ziptown_fk_county FOREIGN KEY (fk_county) REFERENCES public.llx_c_departements(rowid) DEFERRABLE;


--
-- Name: llx_c_ziptown fk_c_ziptown_fk_pays; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_ziptown
    ADD CONSTRAINT fk_c_ziptown_fk_pays FOREIGN KEY (fk_pays) REFERENCES public.llx_c_country(rowid) DEFERRABLE;


--
-- Name: llx_categorie_account fk_categorie_account_categorie_rowid; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_account
    ADD CONSTRAINT fk_categorie_account_categorie_rowid FOREIGN KEY (fk_categorie) REFERENCES public.llx_categorie(rowid) DEFERRABLE;


--
-- Name: llx_categorie_account fk_categorie_account_fk_account; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_account
    ADD CONSTRAINT fk_categorie_account_fk_account FOREIGN KEY (fk_account) REFERENCES public.llx_bank_account(rowid) DEFERRABLE;


--
-- Name: llx_categorie_actioncomm fk_categorie_actioncomm_categorie_rowid; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_actioncomm
    ADD CONSTRAINT fk_categorie_actioncomm_categorie_rowid FOREIGN KEY (fk_categorie) REFERENCES public.llx_categorie(rowid) DEFERRABLE;


--
-- Name: llx_categorie_actioncomm fk_categorie_actioncomm_fk_actioncomm; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_actioncomm
    ADD CONSTRAINT fk_categorie_actioncomm_fk_actioncomm FOREIGN KEY (fk_actioncomm) REFERENCES public.llx_actioncomm(id) DEFERRABLE;


--
-- Name: llx_categorie_contact fk_categorie_contact_categorie_rowid; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_contact
    ADD CONSTRAINT fk_categorie_contact_categorie_rowid FOREIGN KEY (fk_categorie) REFERENCES public.llx_categorie(rowid) DEFERRABLE;


--
-- Name: llx_categorie_contact fk_categorie_contact_fk_socpeople; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_contact
    ADD CONSTRAINT fk_categorie_contact_fk_socpeople FOREIGN KEY (fk_socpeople) REFERENCES public.llx_socpeople(rowid) DEFERRABLE;


--
-- Name: llx_categorie_fournisseur fk_categorie_fournisseur_categorie_rowid; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_fournisseur
    ADD CONSTRAINT fk_categorie_fournisseur_categorie_rowid FOREIGN KEY (fk_categorie) REFERENCES public.llx_categorie(rowid) DEFERRABLE;


--
-- Name: llx_categorie_fournisseur fk_categorie_fournisseur_fk_soc; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_fournisseur
    ADD CONSTRAINT fk_categorie_fournisseur_fk_soc FOREIGN KEY (fk_soc) REFERENCES public.llx_societe(rowid) DEFERRABLE;


--
-- Name: llx_categorie_member fk_categorie_member_categorie_rowid; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_member
    ADD CONSTRAINT fk_categorie_member_categorie_rowid FOREIGN KEY (fk_categorie) REFERENCES public.llx_categorie(rowid) DEFERRABLE;


--
-- Name: llx_categorie_member fk_categorie_member_member_rowid; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_member
    ADD CONSTRAINT fk_categorie_member_member_rowid FOREIGN KEY (fk_member) REFERENCES public.llx_adherent(rowid) DEFERRABLE;


--
-- Name: llx_categorie_product fk_categorie_product_categorie_rowid; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_product
    ADD CONSTRAINT fk_categorie_product_categorie_rowid FOREIGN KEY (fk_categorie) REFERENCES public.llx_categorie(rowid) DEFERRABLE;


--
-- Name: llx_categorie_product fk_categorie_product_product_rowid; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_product
    ADD CONSTRAINT fk_categorie_product_product_rowid FOREIGN KEY (fk_product) REFERENCES public.llx_product(rowid) DEFERRABLE;


--
-- Name: llx_categorie_project fk_categorie_project_categorie_rowid; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_project
    ADD CONSTRAINT fk_categorie_project_categorie_rowid FOREIGN KEY (fk_categorie) REFERENCES public.llx_categorie(rowid) DEFERRABLE;


--
-- Name: llx_categorie_project fk_categorie_project_fk_project_rowid; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_project
    ADD CONSTRAINT fk_categorie_project_fk_project_rowid FOREIGN KEY (fk_project) REFERENCES public.llx_projet(rowid) DEFERRABLE;


--
-- Name: llx_categorie_societe fk_categorie_societe_categorie_rowid; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_societe
    ADD CONSTRAINT fk_categorie_societe_categorie_rowid FOREIGN KEY (fk_categorie) REFERENCES public.llx_categorie(rowid) DEFERRABLE;


--
-- Name: llx_categorie_societe fk_categorie_societe_fk_soc; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_societe
    ADD CONSTRAINT fk_categorie_societe_fk_soc FOREIGN KEY (fk_soc) REFERENCES public.llx_societe(rowid) DEFERRABLE;


--
-- Name: llx_categorie_supplier_invoice fk_categorie_supplier_invoice_categorie_rowid; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_supplier_invoice
    ADD CONSTRAINT fk_categorie_supplier_invoice_categorie_rowid FOREIGN KEY (fk_categorie) REFERENCES public.llx_categorie(rowid) DEFERRABLE;


--
-- Name: llx_categorie_supplier_invoice fk_categorie_supplier_invoice_fk_supplier_invoice_rowid; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_supplier_invoice
    ADD CONSTRAINT fk_categorie_supplier_invoice_fk_supplier_invoice_rowid FOREIGN KEY (fk_supplier_invoice) REFERENCES public.llx_facture_fourn(rowid) DEFERRABLE;


--
-- Name: llx_categorie_supplier_order fk_categorie_supplier_order_categorie_rowid; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_supplier_order
    ADD CONSTRAINT fk_categorie_supplier_order_categorie_rowid FOREIGN KEY (fk_categorie) REFERENCES public.llx_categorie(rowid) DEFERRABLE;


--
-- Name: llx_categorie_supplier_order fk_categorie_supplier_order_fk_supplier_order_rowid; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_supplier_order
    ADD CONSTRAINT fk_categorie_supplier_order_fk_supplier_order_rowid FOREIGN KEY (fk_supplier_order) REFERENCES public.llx_commande_fournisseur(rowid) DEFERRABLE;


--
-- Name: llx_categorie_user fk_categorie_user_categorie_rowid; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_user
    ADD CONSTRAINT fk_categorie_user_categorie_rowid FOREIGN KEY (fk_categorie) REFERENCES public.llx_categorie(rowid) DEFERRABLE;


--
-- Name: llx_categorie_user fk_categorie_user_fk_user; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_user
    ADD CONSTRAINT fk_categorie_user_fk_user FOREIGN KEY (fk_user) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_categorie_lang fk_category_lang_fk_category; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_categorie_lang
    ADD CONSTRAINT fk_category_lang_fk_category FOREIGN KEY (fk_category) REFERENCES public.llx_categorie(rowid) DEFERRABLE;


--
-- Name: llx_commande fk_commande_fk_projet; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_commande
    ADD CONSTRAINT fk_commande_fk_projet FOREIGN KEY (fk_projet) REFERENCES public.llx_projet(rowid) DEFERRABLE;


--
-- Name: llx_commande fk_commande_fk_soc; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_commande
    ADD CONSTRAINT fk_commande_fk_soc FOREIGN KEY (fk_soc) REFERENCES public.llx_societe(rowid) DEFERRABLE;


--
-- Name: llx_commande fk_commande_fk_user_author; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_commande
    ADD CONSTRAINT fk_commande_fk_user_author FOREIGN KEY (fk_user_author) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_commande fk_commande_fk_user_cloture; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_commande
    ADD CONSTRAINT fk_commande_fk_user_cloture FOREIGN KEY (fk_user_cloture) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_commande fk_commande_fk_user_valid; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_commande
    ADD CONSTRAINT fk_commande_fk_user_valid FOREIGN KEY (fk_user_valid) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_commande_fournisseur fk_commande_fournisseur_fk_soc; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_commande_fournisseur
    ADD CONSTRAINT fk_commande_fournisseur_fk_soc FOREIGN KEY (fk_soc) REFERENCES public.llx_societe(rowid) DEFERRABLE;


--
-- Name: llx_commande_fournisseurdet fk_commande_fournisseurdet_fk_unit; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_commande_fournisseurdet
    ADD CONSTRAINT fk_commande_fournisseurdet_fk_unit FOREIGN KEY (fk_unit) REFERENCES public.llx_c_units(rowid) DEFERRABLE;


--
-- Name: llx_commandedet fk_commandedet_fk_commande; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_commandedet
    ADD CONSTRAINT fk_commandedet_fk_commande FOREIGN KEY (fk_commande) REFERENCES public.llx_commande(rowid) DEFERRABLE;


--
-- Name: llx_commandedet fk_commandedet_fk_commandefourndet; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_commandedet
    ADD CONSTRAINT fk_commandedet_fk_commandefourndet FOREIGN KEY (fk_commandefourndet) REFERENCES public.llx_commande_fournisseurdet(rowid) DEFERRABLE;


--
-- Name: llx_commandedet fk_commandedet_fk_unit; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_commandedet
    ADD CONSTRAINT fk_commandedet_fk_unit FOREIGN KEY (fk_unit) REFERENCES public.llx_c_units(rowid) DEFERRABLE;


--
-- Name: llx_contrat fk_contrat_fk_soc; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_contrat
    ADD CONSTRAINT fk_contrat_fk_soc FOREIGN KEY (fk_soc) REFERENCES public.llx_societe(rowid) DEFERRABLE;


--
-- Name: llx_contrat fk_contrat_user_author; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_contrat
    ADD CONSTRAINT fk_contrat_user_author FOREIGN KEY (fk_user_author) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_contratdet fk_contratdet_fk_contrat; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_contratdet
    ADD CONSTRAINT fk_contratdet_fk_contrat FOREIGN KEY (fk_contrat) REFERENCES public.llx_contrat(rowid) DEFERRABLE;


--
-- Name: llx_contratdet fk_contratdet_fk_product; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_contratdet
    ADD CONSTRAINT fk_contratdet_fk_product FOREIGN KEY (fk_product) REFERENCES public.llx_product(rowid) DEFERRABLE;


--
-- Name: llx_contratdet fk_contratdet_fk_unit; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_contratdet
    ADD CONSTRAINT fk_contratdet_fk_unit FOREIGN KEY (fk_unit) REFERENCES public.llx_c_units(rowid) DEFERRABLE;


--
-- Name: llx_delivery fk_delivery_fk_soc; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_delivery
    ADD CONSTRAINT fk_delivery_fk_soc FOREIGN KEY (fk_soc) REFERENCES public.llx_societe(rowid) DEFERRABLE;


--
-- Name: llx_delivery fk_delivery_fk_user_author; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_delivery
    ADD CONSTRAINT fk_delivery_fk_user_author FOREIGN KEY (fk_user_author) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_delivery fk_delivery_fk_user_valid; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_delivery
    ADD CONSTRAINT fk_delivery_fk_user_valid FOREIGN KEY (fk_user_valid) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_deliverydet fk_deliverydet_fk_delivery; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_deliverydet
    ADD CONSTRAINT fk_deliverydet_fk_delivery FOREIGN KEY (fk_delivery) REFERENCES public.llx_delivery(rowid) DEFERRABLE;


--
-- Name: llx_c_departements fk_departements_fk_region; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_departements
    ADD CONSTRAINT fk_departements_fk_region FOREIGN KEY (fk_region) REFERENCES public.llx_c_regions(code_region) DEFERRABLE;


--
-- Name: llx_ecm_directories fk_ecm_directories_fk_user_c; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_ecm_directories
    ADD CONSTRAINT fk_ecm_directories_fk_user_c FOREIGN KEY (fk_user_c) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_ecm_directories fk_ecm_directories_fk_user_m; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_ecm_directories
    ADD CONSTRAINT fk_ecm_directories_fk_user_m FOREIGN KEY (fk_user_m) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_element_categorie fk_element_categorie_fk_categorie; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_element_categorie
    ADD CONSTRAINT fk_element_categorie_fk_categorie FOREIGN KEY (fk_categorie) REFERENCES public.llx_categorie(rowid) DEFERRABLE;


--
-- Name: llx_element_contact fk_element_contact_fk_c_type_contact; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_element_contact
    ADD CONSTRAINT fk_element_contact_fk_c_type_contact FOREIGN KEY (fk_c_type_contact) REFERENCES public.llx_c_type_contact(rowid) DEFERRABLE;


--
-- Name: llx_emailcollector_emailcollectoraction fk_emailcollectoraction_fk_emailcollector; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_emailcollector_emailcollectoraction
    ADD CONSTRAINT fk_emailcollectoraction_fk_emailcollector FOREIGN KEY (fk_emailcollector) REFERENCES public.llx_emailcollector_emailcollector(rowid) DEFERRABLE;


--
-- Name: llx_emailcollector_emailcollectorfilter fk_emailcollectorfilter_fk_emailcollector; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_emailcollector_emailcollectorfilter
    ADD CONSTRAINT fk_emailcollectorfilter_fk_emailcollector FOREIGN KEY (fk_emailcollector) REFERENCES public.llx_emailcollector_emailcollector(rowid) DEFERRABLE;


--
-- Name: llx_product_stock fk_entrepot_entrepot_rowid; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_stock
    ADD CONSTRAINT fk_entrepot_entrepot_rowid FOREIGN KEY (fk_entrepot) REFERENCES public.llx_entrepot(rowid) DEFERRABLE;


--
-- Name: llx_expedition fk_expedition_fk_shipping_method; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_expedition
    ADD CONSTRAINT fk_expedition_fk_shipping_method FOREIGN KEY (fk_shipping_method) REFERENCES public.llx_c_shipment_mode(rowid) DEFERRABLE;


--
-- Name: llx_expedition fk_expedition_fk_soc; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_expedition
    ADD CONSTRAINT fk_expedition_fk_soc FOREIGN KEY (fk_soc) REFERENCES public.llx_societe(rowid) DEFERRABLE;


--
-- Name: llx_expedition fk_expedition_fk_user_author; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_expedition
    ADD CONSTRAINT fk_expedition_fk_user_author FOREIGN KEY (fk_user_author) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_expedition fk_expedition_fk_user_valid; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_expedition
    ADD CONSTRAINT fk_expedition_fk_user_valid FOREIGN KEY (fk_user_valid) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_expeditiondet_batch fk_expeditiondet_batch_fk_expeditiondet; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_expeditiondet_batch
    ADD CONSTRAINT fk_expeditiondet_batch_fk_expeditiondet FOREIGN KEY (fk_expeditiondet) REFERENCES public.llx_expeditiondet(rowid) DEFERRABLE;


--
-- Name: llx_expeditiondet fk_expeditiondet_fk_expedition; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_expeditiondet
    ADD CONSTRAINT fk_expeditiondet_fk_expedition FOREIGN KEY (fk_expedition) REFERENCES public.llx_expedition(rowid) DEFERRABLE;


--
-- Name: llx_facture fk_facture_fk_facture_source; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture
    ADD CONSTRAINT fk_facture_fk_facture_source FOREIGN KEY (fk_facture_source) REFERENCES public.llx_facture(rowid) DEFERRABLE;


--
-- Name: llx_facture fk_facture_fk_input_reason; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture
    ADD CONSTRAINT fk_facture_fk_input_reason FOREIGN KEY (fk_input_reason) REFERENCES public.llx_c_input_reason(rowid) DEFERRABLE;


--
-- Name: llx_facture fk_facture_fk_projet; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture
    ADD CONSTRAINT fk_facture_fk_projet FOREIGN KEY (fk_projet) REFERENCES public.llx_projet(rowid) DEFERRABLE;


--
-- Name: llx_facture fk_facture_fk_soc; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture
    ADD CONSTRAINT fk_facture_fk_soc FOREIGN KEY (fk_soc) REFERENCES public.llx_societe(rowid) DEFERRABLE;


--
-- Name: llx_facture fk_facture_fk_user_author; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture
    ADD CONSTRAINT fk_facture_fk_user_author FOREIGN KEY (fk_user_author) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_facture fk_facture_fk_user_valid; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture
    ADD CONSTRAINT fk_facture_fk_user_valid FOREIGN KEY (fk_user_valid) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_facture_fourn_det fk_facture_fourn_det_fk_facture; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_fourn_det
    ADD CONSTRAINT fk_facture_fourn_det_fk_facture FOREIGN KEY (fk_facture_fourn) REFERENCES public.llx_facture_fourn(rowid) DEFERRABLE;


--
-- Name: llx_facture_fourn_det fk_facture_fourn_det_fk_unit; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_fourn_det
    ADD CONSTRAINT fk_facture_fourn_det_fk_unit FOREIGN KEY (fk_unit) REFERENCES public.llx_c_units(rowid) DEFERRABLE;


--
-- Name: llx_facture_fourn_det_rec fk_facture_fourn_det_rec_fk_unit; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_fourn_det_rec
    ADD CONSTRAINT fk_facture_fourn_det_rec_fk_unit FOREIGN KEY (fk_unit) REFERENCES public.llx_c_units(rowid) DEFERRABLE;


--
-- Name: llx_facture_fourn fk_facture_fourn_fk_projet; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_fourn
    ADD CONSTRAINT fk_facture_fourn_fk_projet FOREIGN KEY (fk_projet) REFERENCES public.llx_projet(rowid) DEFERRABLE;


--
-- Name: llx_facture_fourn fk_facture_fourn_fk_soc; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_fourn
    ADD CONSTRAINT fk_facture_fourn_fk_soc FOREIGN KEY (fk_soc) REFERENCES public.llx_societe(rowid) DEFERRABLE;


--
-- Name: llx_facture_fourn fk_facture_fourn_fk_user_author; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_fourn
    ADD CONSTRAINT fk_facture_fourn_fk_user_author FOREIGN KEY (fk_user_author) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_facture_fourn fk_facture_fourn_fk_user_valid; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_fourn
    ADD CONSTRAINT fk_facture_fourn_fk_user_valid FOREIGN KEY (fk_user_valid) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_facture_fourn_rec fk_facture_fourn_rec_fk_projet; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_fourn_rec
    ADD CONSTRAINT fk_facture_fourn_rec_fk_projet FOREIGN KEY (fk_projet) REFERENCES public.llx_projet(rowid) DEFERRABLE;


--
-- Name: llx_facture_fourn_rec fk_facture_fourn_rec_fk_soc; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_fourn_rec
    ADD CONSTRAINT fk_facture_fourn_rec_fk_soc FOREIGN KEY (fk_soc) REFERENCES public.llx_societe(rowid) DEFERRABLE;


--
-- Name: llx_facture_fourn_rec fk_facture_fourn_rec_fk_user_author; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_fourn_rec
    ADD CONSTRAINT fk_facture_fourn_rec_fk_user_author FOREIGN KEY (fk_user_author) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_facture_rec fk_facture_rec_fk_projet; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_rec
    ADD CONSTRAINT fk_facture_rec_fk_projet FOREIGN KEY (fk_projet) REFERENCES public.llx_projet(rowid) DEFERRABLE;


--
-- Name: llx_facture_rec fk_facture_rec_fk_soc; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_rec
    ADD CONSTRAINT fk_facture_rec_fk_soc FOREIGN KEY (fk_soc) REFERENCES public.llx_societe(rowid) DEFERRABLE;


--
-- Name: llx_facture_rec fk_facture_rec_fk_user_author; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facture_rec
    ADD CONSTRAINT fk_facture_rec_fk_user_author FOREIGN KEY (fk_user_author) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_facturedet fk_facturedet_fk_facture; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facturedet
    ADD CONSTRAINT fk_facturedet_fk_facture FOREIGN KEY (fk_facture) REFERENCES public.llx_facture(rowid) DEFERRABLE;


--
-- Name: llx_facturedet fk_facturedet_fk_unit; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facturedet
    ADD CONSTRAINT fk_facturedet_fk_unit FOREIGN KEY (fk_unit) REFERENCES public.llx_c_units(rowid) DEFERRABLE;


--
-- Name: llx_facturedet_rec fk_facturedet_rec_fk_unit; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_facturedet_rec
    ADD CONSTRAINT fk_facturedet_rec_fk_unit FOREIGN KEY (fk_unit) REFERENCES public.llx_c_units(rowid) DEFERRABLE;


--
-- Name: llx_fichinter fk_fichinter_fk_soc; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_fichinter
    ADD CONSTRAINT fk_fichinter_fk_soc FOREIGN KEY (fk_soc) REFERENCES public.llx_societe(rowid) DEFERRABLE;


--
-- Name: llx_fichinter_rec fk_fichinter_rec_fk_projet; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_fichinter_rec
    ADD CONSTRAINT fk_fichinter_rec_fk_projet FOREIGN KEY (fk_projet) REFERENCES public.llx_projet(rowid) DEFERRABLE;


--
-- Name: llx_fichinter_rec fk_fichinter_rec_fk_user_author; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_fichinter_rec
    ADD CONSTRAINT fk_fichinter_rec_fk_user_author FOREIGN KEY (fk_user_author) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_fichinterdet fk_fichinterdet_fk_fichinter; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_fichinterdet
    ADD CONSTRAINT fk_fichinterdet_fk_fichinter FOREIGN KEY (fk_fichinter) REFERENCES public.llx_fichinter(rowid) DEFERRABLE;


--
-- Name: llx_paiement_facture fk_paiement_facture_fk_facture; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_paiement_facture
    ADD CONSTRAINT fk_paiement_facture_fk_facture FOREIGN KEY (fk_facture) REFERENCES public.llx_facture(rowid) DEFERRABLE;


--
-- Name: llx_paiement_facture fk_paiement_facture_fk_paiement; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_paiement_facture
    ADD CONSTRAINT fk_paiement_facture_fk_paiement FOREIGN KEY (fk_paiement) REFERENCES public.llx_paiement(rowid) DEFERRABLE;


--
-- Name: llx_payment_salary fk_payment_salary_user; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_payment_salary
    ADD CONSTRAINT fk_payment_salary_user FOREIGN KEY (fk_user) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_prelevement fk_prelevement_fk_prelevement_lignes; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_prelevement
    ADD CONSTRAINT fk_prelevement_fk_prelevement_lignes FOREIGN KEY (fk_prelevement_lignes) REFERENCES public.llx_prelevement_lignes(rowid) DEFERRABLE;


--
-- Name: llx_prelevement_lignes fk_prelevement_lignes_fk_prelevement_bons; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_prelevement_lignes
    ADD CONSTRAINT fk_prelevement_lignes_fk_prelevement_bons FOREIGN KEY (fk_prelevement_bons) REFERENCES public.llx_prelevement_bons(rowid) DEFERRABLE;


--
-- Name: llx_product fk_product_barcode_type; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product
    ADD CONSTRAINT fk_product_barcode_type FOREIGN KEY (fk_barcode_type) REFERENCES public.llx_c_barcode_type(rowid) DEFERRABLE;


--
-- Name: llx_product_batch fk_product_batch_fk_product_stock; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_batch
    ADD CONSTRAINT fk_product_batch_fk_product_stock FOREIGN KEY (fk_product_stock) REFERENCES public.llx_product_stock(rowid) DEFERRABLE;


--
-- Name: llx_product_customer_price fk_product_customer_price_fk_product; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_customer_price
    ADD CONSTRAINT fk_product_customer_price_fk_product FOREIGN KEY (fk_product) REFERENCES public.llx_product(rowid) DEFERRABLE;


--
-- Name: llx_product_customer_price fk_product_customer_price_fk_soc; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_customer_price
    ADD CONSTRAINT fk_product_customer_price_fk_soc FOREIGN KEY (fk_soc) REFERENCES public.llx_societe(rowid) DEFERRABLE;


--
-- Name: llx_product_customer_price fk_product_customer_price_fk_user; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_customer_price
    ADD CONSTRAINT fk_product_customer_price_fk_user FOREIGN KEY (fk_user) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_product fk_product_finished; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product
    ADD CONSTRAINT fk_product_finished FOREIGN KEY (finished) REFERENCES public.llx_c_product_nature(code) DEFERRABLE;


--
-- Name: llx_product fk_product_fk_country; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product
    ADD CONSTRAINT fk_product_fk_country FOREIGN KEY (fk_country) REFERENCES public.llx_c_country(rowid) DEFERRABLE;


--
-- Name: llx_product fk_product_fk_unit; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product
    ADD CONSTRAINT fk_product_fk_unit FOREIGN KEY (fk_unit) REFERENCES public.llx_c_units(rowid) DEFERRABLE;


--
-- Name: llx_product_fournisseur_price fk_product_fournisseur_price_barcode_type; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_fournisseur_price
    ADD CONSTRAINT fk_product_fournisseur_price_barcode_type FOREIGN KEY (fk_barcode_type) REFERENCES public.llx_c_barcode_type(rowid) DEFERRABLE;


--
-- Name: llx_product_fournisseur_price fk_product_fournisseur_price_fk_product; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_fournisseur_price
    ADD CONSTRAINT fk_product_fournisseur_price_fk_product FOREIGN KEY (fk_product) REFERENCES public.llx_product(rowid) DEFERRABLE;


--
-- Name: llx_product_fournisseur_price fk_product_fournisseur_price_fk_user; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_fournisseur_price
    ADD CONSTRAINT fk_product_fournisseur_price_fk_user FOREIGN KEY (fk_user) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_product_lang fk_product_lang_fk_product; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_lang
    ADD CONSTRAINT fk_product_lang_fk_product FOREIGN KEY (fk_product) REFERENCES public.llx_product(rowid) DEFERRABLE;


--
-- Name: llx_product_price_by_qty fk_product_price_by_qty_fk_product_price; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_price_by_qty
    ADD CONSTRAINT fk_product_price_by_qty_fk_product_price FOREIGN KEY (fk_product_price) REFERENCES public.llx_product_price(rowid) DEFERRABLE;


--
-- Name: llx_product_price fk_product_price_user_author; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_price
    ADD CONSTRAINT fk_product_price_user_author FOREIGN KEY (fk_product) REFERENCES public.llx_product(rowid) DEFERRABLE;


--
-- Name: llx_product_stock fk_product_product_rowid; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_product_stock
    ADD CONSTRAINT fk_product_product_rowid FOREIGN KEY (fk_product) REFERENCES public.llx_product(rowid) DEFERRABLE;


--
-- Name: llx_projet fk_projet_fk_soc; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_projet
    ADD CONSTRAINT fk_projet_fk_soc FOREIGN KEY (fk_soc) REFERENCES public.llx_societe(rowid) DEFERRABLE;


--
-- Name: llx_projet_task fk_projet_task_fk_projet; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_projet_task
    ADD CONSTRAINT fk_projet_task_fk_projet FOREIGN KEY (fk_projet) REFERENCES public.llx_projet(rowid) DEFERRABLE;


--
-- Name: llx_projet_task fk_projet_task_fk_user_creat; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_projet_task
    ADD CONSTRAINT fk_projet_task_fk_user_creat FOREIGN KEY (fk_user_creat) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_projet_task fk_projet_task_fk_user_valid; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_projet_task
    ADD CONSTRAINT fk_projet_task_fk_user_valid FOREIGN KEY (fk_user_valid) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_propal fk_propal_fk_projet; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_propal
    ADD CONSTRAINT fk_propal_fk_projet FOREIGN KEY (fk_projet) REFERENCES public.llx_projet(rowid) DEFERRABLE;


--
-- Name: llx_propal fk_propal_fk_soc; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_propal
    ADD CONSTRAINT fk_propal_fk_soc FOREIGN KEY (fk_soc) REFERENCES public.llx_societe(rowid) DEFERRABLE;


--
-- Name: llx_propal fk_propal_fk_user_author; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_propal
    ADD CONSTRAINT fk_propal_fk_user_author FOREIGN KEY (fk_user_author) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_propal fk_propal_fk_user_cloture; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_propal
    ADD CONSTRAINT fk_propal_fk_user_cloture FOREIGN KEY (fk_user_cloture) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_propal fk_propal_fk_user_signature; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_propal
    ADD CONSTRAINT fk_propal_fk_user_signature FOREIGN KEY (fk_user_signature) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_propal fk_propal_fk_user_valid; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_propal
    ADD CONSTRAINT fk_propal_fk_user_valid FOREIGN KEY (fk_user_valid) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_propaldet fk_propaldet_fk_propal; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_propaldet
    ADD CONSTRAINT fk_propaldet_fk_propal FOREIGN KEY (fk_propal) REFERENCES public.llx_propal(rowid) DEFERRABLE;


--
-- Name: llx_propaldet fk_propaldet_fk_unit; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_propaldet
    ADD CONSTRAINT fk_propaldet_fk_unit FOREIGN KEY (fk_unit) REFERENCES public.llx_c_units(rowid) DEFERRABLE;


--
-- Name: llx_reception fk_reception_fk_shipping_method; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_reception
    ADD CONSTRAINT fk_reception_fk_shipping_method FOREIGN KEY (fk_shipping_method) REFERENCES public.llx_c_shipment_mode(rowid) DEFERRABLE;


--
-- Name: llx_reception fk_reception_fk_soc; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_reception
    ADD CONSTRAINT fk_reception_fk_soc FOREIGN KEY (fk_soc) REFERENCES public.llx_societe(rowid) DEFERRABLE;


--
-- Name: llx_reception fk_reception_fk_user_author; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_reception
    ADD CONSTRAINT fk_reception_fk_user_author FOREIGN KEY (fk_user_author) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_reception fk_reception_fk_user_valid; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_reception
    ADD CONSTRAINT fk_reception_fk_user_valid FOREIGN KEY (fk_user_valid) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_receptiondet_batch fk_receptiondet_batch_fk_reception; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_receptiondet_batch
    ADD CONSTRAINT fk_receptiondet_batch_fk_reception FOREIGN KEY (fk_reception) REFERENCES public.llx_reception(rowid) DEFERRABLE;


--
-- Name: llx_resource fk_resource_fk_country; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_resource
    ADD CONSTRAINT fk_resource_fk_country FOREIGN KEY (fk_country) REFERENCES public.llx_c_country(rowid) DEFERRABLE;


--
-- Name: llx_societe_remise_except fk_soc_remise_fk_facture_line; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_remise_except
    ADD CONSTRAINT fk_soc_remise_fk_facture_line FOREIGN KEY (fk_facture_line) REFERENCES public.llx_facturedet(rowid) DEFERRABLE;


--
-- Name: llx_societe_remise_except fk_soc_remise_fk_invoice_supplier_line; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_remise_except
    ADD CONSTRAINT fk_soc_remise_fk_invoice_supplier_line FOREIGN KEY (fk_invoice_supplier_line) REFERENCES public.llx_facture_fourn_det(rowid) DEFERRABLE;


--
-- Name: llx_societe_remise_except fk_soc_remise_fk_soc; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_remise_except
    ADD CONSTRAINT fk_soc_remise_fk_soc FOREIGN KEY (fk_soc) REFERENCES public.llx_societe(rowid) DEFERRABLE;


--
-- Name: llx_societe_commerciaux fk_societe_commerciaux_fk_soc; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_commerciaux
    ADD CONSTRAINT fk_societe_commerciaux_fk_soc FOREIGN KEY (fk_soc) REFERENCES public.llx_societe(rowid) DEFERRABLE;


--
-- Name: llx_societe_commerciaux fk_societe_commerciaux_fk_user; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_commerciaux
    ADD CONSTRAINT fk_societe_commerciaux_fk_user FOREIGN KEY (fk_user) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_societe_contacts fk_societe_contacts_fk_c_type_contact; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_contacts
    ADD CONSTRAINT fk_societe_contacts_fk_c_type_contact FOREIGN KEY (fk_c_type_contact) REFERENCES public.llx_c_type_contact(rowid) DEFERRABLE;


--
-- Name: llx_societe_contacts fk_societe_contacts_fk_soc; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_contacts
    ADD CONSTRAINT fk_societe_contacts_fk_soc FOREIGN KEY (fk_soc) REFERENCES public.llx_societe(rowid) DEFERRABLE;


--
-- Name: llx_societe_contacts fk_societe_contacts_fk_socpeople; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_contacts
    ADD CONSTRAINT fk_societe_contacts_fk_socpeople FOREIGN KEY (fk_socpeople) REFERENCES public.llx_socpeople(rowid) DEFERRABLE;


--
-- Name: llx_societe_remise_except fk_societe_remise_fk_facture; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_remise_except
    ADD CONSTRAINT fk_societe_remise_fk_facture FOREIGN KEY (fk_facture) REFERENCES public.llx_facture(rowid) DEFERRABLE;


--
-- Name: llx_societe_remise_except fk_societe_remise_fk_facture_source; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_remise_except
    ADD CONSTRAINT fk_societe_remise_fk_facture_source FOREIGN KEY (fk_facture_source) REFERENCES public.llx_facture(rowid) DEFERRABLE;


--
-- Name: llx_societe_remise_except fk_societe_remise_fk_invoice_supplier; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_remise_except
    ADD CONSTRAINT fk_societe_remise_fk_invoice_supplier FOREIGN KEY (fk_invoice_supplier) REFERENCES public.llx_facture_fourn(rowid) DEFERRABLE;


--
-- Name: llx_societe_remise_except fk_societe_remise_fk_invoice_supplier_source; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_remise_except
    ADD CONSTRAINT fk_societe_remise_fk_invoice_supplier_source FOREIGN KEY (fk_invoice_supplier) REFERENCES public.llx_facture_fourn(rowid) DEFERRABLE;


--
-- Name: llx_societe_remise_except fk_societe_remise_fk_user; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_remise_except
    ADD CONSTRAINT fk_societe_remise_fk_user FOREIGN KEY (fk_user) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_socpeople fk_socpeople_fk_soc; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_socpeople
    ADD CONSTRAINT fk_socpeople_fk_soc FOREIGN KEY (fk_soc) REFERENCES public.llx_societe(rowid) DEFERRABLE;


--
-- Name: llx_socpeople fk_socpeople_user_creat_user_rowid; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_socpeople
    ADD CONSTRAINT fk_socpeople_user_creat_user_rowid FOREIGN KEY (fk_user_creat) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_supplier_proposaldet fk_supplier_proposaldet_fk_supplier_proposal; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_supplier_proposaldet
    ADD CONSTRAINT fk_supplier_proposaldet_fk_supplier_proposal FOREIGN KEY (fk_supplier_proposal) REFERENCES public.llx_supplier_proposal(rowid) DEFERRABLE;


--
-- Name: llx_supplier_proposaldet fk_supplier_proposaldet_fk_unit; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_supplier_proposaldet
    ADD CONSTRAINT fk_supplier_proposaldet_fk_unit FOREIGN KEY (fk_unit) REFERENCES public.llx_c_units(rowid) DEFERRABLE;


--
-- Name: llx_c_tva fk_tva_fk_department_buyer; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_c_tva
    ADD CONSTRAINT fk_tva_fk_department_buyer FOREIGN KEY (fk_department_buyer) REFERENCES public.llx_c_departements(rowid) DEFERRABLE;


--
-- Name: llx_user_employment fk_user_employment_fk_user; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_user_employment
    ADD CONSTRAINT fk_user_employment_fk_user FOREIGN KEY (fk_user) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_user_rights fk_user_rights_fk_user_user; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_user_rights
    ADD CONSTRAINT fk_user_rights_fk_user_user FOREIGN KEY (fk_user) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_usergroup_rights fk_usergroup_rights_fk_usergroup; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_usergroup_rights
    ADD CONSTRAINT fk_usergroup_rights_fk_usergroup FOREIGN KEY (fk_usergroup) REFERENCES public.llx_usergroup(rowid) DEFERRABLE;


--
-- Name: llx_usergroup_user fk_usergroup_user_fk_user; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_usergroup_user
    ADD CONSTRAINT fk_usergroup_user_fk_user FOREIGN KEY (fk_user) REFERENCES public.llx_user(rowid) DEFERRABLE;


--
-- Name: llx_usergroup_user fk_usergroup_user_fk_usergroup; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_usergroup_user
    ADD CONSTRAINT fk_usergroup_user_fk_usergroup FOREIGN KEY (fk_usergroup) REFERENCES public.llx_usergroup(rowid) DEFERRABLE;


--
-- Name: llx_societe_account llx_societe_account_fk_societe; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_account
    ADD CONSTRAINT llx_societe_account_fk_societe FOREIGN KEY (fk_soc) REFERENCES public.llx_societe(rowid) DEFERRABLE;


--
-- Name: llx_societe_rib llx_societe_rib_fk_societe; Type: FK CONSTRAINT; Schema: public; Owner: dolibarr
--

ALTER TABLE ONLY public.llx_societe_rib
    ADD CONSTRAINT llx_societe_rib_fk_societe FOREIGN KEY (fk_soc) REFERENCES public.llx_societe(rowid) DEFERRABLE;


--
-- PostgreSQL database dump complete
--

\unrestrict tukyZkWH5BAqPIppVjz8ocQtWFnF7wb4y8cAeSzBgXikPPwTQriU764kWmvj5mE

