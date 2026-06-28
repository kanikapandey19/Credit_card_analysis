

##account_statuses

CREATE TABLE IF NOT EXISTS public.account_statuses
(
    accountstatusid integer NOT NULL,
    statusname character varying(50) COLLATE pg_catalog."default",
    
)




##Account_types


    CREATE TABLE IF NOT EXISTS public.account_types
(
    accounttypeid integer NOT NULL,
    typename character varying(50) COLLATE pg_catalog."default",
    
)




##accounts
CREATE TABLE IF NOT EXISTS public.accounts
(
    accountid integer NOT NULL,
    customerid integer NOT NULL,
    accounttypeid integer NOT NULL,
    accountstatusid integer NOT NULL,
    balance numeric(18,2) NOT NULL,
    
)





##addresses
CREATE TABLE IF NOT EXISTS public.addresses
(
    addressid integer,
    street character varying(255) COLLATE pg_catalog."default",
    city character varying(100) COLLATE pg_catalog."default",
    country character varying(100) COLLATE pg_catalog."default"
)



##branches
CREATE TABLE IF NOT EXISTS public.branches
(
    branchid integer NOT NULL,
    branchname character varying(100) COLLATE pg_catalog."default" NOT NULL,
    addressid integer NOT NULL,
    
)




    
 ##customers
    CREATE TABLE IF NOT EXISTS public.customers
(
    customerid integer NOT NULL,
    firstname character varying(50) COLLATE pg_catalog."default",
    lastname character varying(50) COLLATE pg_catalog."default",
    addressid integer,
    customertypeid integer,
    
)


## customertypes
CREATE TABLE IF NOT EXISTS public.customertypes
(
    customertypeid integer NOT NULL,
    typename character varying(50) COLLATE pg_catalog."default" NOT NULL,
    
)



##loans
CREATE TABLE IF NOT EXISTS public.loans
(
    loanid integer NOT NULL,
    accountid integer,
    loanstatusid integer,
    principalamount numeric(12,2),
    interestrate numeric(6,4),
    
)


    
 ## transactions
 CREATE TABLE IF NOT EXISTS public.loanstatus
(
    loanstatusid integer NOT NULL,
    statusname character varying(50) COLLATE pg_catalog."default" NOT NULL,
    
)


    ##transactions
    CREATE TABLE IF NOT EXISTS public.transactions
(
    transactionid integer NOT NULL,
    accountoriginid integer NOT NULL,
    accountdestinationid integer NOT NULL,
    transactiontypeid integer NOT NULL,
    amount numeric(12,2) NOT NULL,
    branchid integer NOT NULL,
    description character varying(255) COLLATE pg_catalog."default",
    
)


##transactiontypes

CREATE TABLE IF NOT EXISTS public.transactiontypes
(
    transactiontypeid integer NOT NULL,
    typename character varying(50) COLLATE pg_catalog."default" NOT NULL,
    
)



