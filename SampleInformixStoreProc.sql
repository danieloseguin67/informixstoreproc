/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2022-05-12 9:19:33 PM                        */
/*==============================================================*/


if exists (select 1
          from sysobjects
          where  id = object_id('ecBackupPendingJrnl')
          and type in ('P','PC'))
   drop procedure ecBackupPendingJrnl
go

if exists (select 1
          from sysobjects
          where  id = object_id('ecFixMapping')
          and type in ('P','PC'))
   drop procedure ecFixMapping
go

if exists (select 1
          from sysobjects
          where  id = object_id('ecGLMigration')
          and type in ('P','PC'))
   drop procedure ecGLMigration
go

if exists (select 1
          from sysobjects
          where  id = object_id('ecJobScheduler')
          and type in ('P','PC'))
   drop procedure ecJobScheduler
go

if exists (select 1
          from sysobjects
          where  id = object_id('ecLoadHfinsGLBal')
          and type in ('P','PC'))
   drop procedure ecLoadHfinsGLBal
go

if exists (select 1
          from sysobjects
          where  id = object_id('ecMapStatCodes')
          and type in ('P','PC'))
   drop procedure ecMapStatCodes
go

if exists (select 1
          from sysobjects
          where  id = object_id('ecPrepRefunds')
          and type in ('P','PC'))
   drop procedure ecPrepRefunds
go

if exists (select 1
          from sysobjects
          where  id = object_id('ecPrepareCashForGP')
          and type in ('P','PC'))
   drop procedure ecPrepareCashForGP
go

if exists (select 1
          from sysobjects
          where  id = object_id('ecReSendGLTransactions')
          and type in ('P','PC'))
   drop procedure ecReSendGLTransactions
go

if exists (select 1
          from sysobjects
          where  id = object_id('ecReSendRefunds')
          and type in ('P','PC'))
   drop procedure ecReSendRefunds
go

if exists (select 1
          from sysobjects
          where  id = object_id('ecTableInstaller')
          and type in ('P','PC'))
   drop procedure ecTableInstaller
go

if exists (select 1
          from sysobjects
          where  id = object_id('ecVerifyPendingJournals')
          and type in ('P','PC'))
   drop procedure ecVerifyPendingJournals
go

if exists (select 1
          from sysobjects
          where  id = object_id('ecmovegldetail')
          and type in ('P','PC'))
   drop procedure ecmovegldetail
go

if exists (select 1
          from sysobjects
          where  id = object_id('ecrefreshnsarchive')
          and type in ('P','PC'))
   drop procedure ecrefreshnsarchive
go

if exists (select 1
          from sysobjects
          where  id = object_id('ecreqmovegldetail')
          and type in ('P','PC'))
   drop procedure ecreqmovegldetail
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PB_UPDATE_DATA') and o.name = 'FK_PB_UPDAT_REFERENCE_PB_UPDAT')
alter table PB_UPDATE_DATA
   drop constraint FK_PB_UPDAT_REFERENCE_PB_UPDAT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ecCustAttrib') and o.name = 'FK_ECCUSTAT_REFERENCE_ECATTRIB')
alter table ecCustAttrib
   drop constraint FK_ECCUSTAT_REFERENCE_ECATTRIB
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ecjrnlcode') and o.name = 'FK_ECJRNLCO_REFERENCE_ECAPPLCO')
alter table ecjrnlcode
   drop constraint FK_ECJRNLCO_REFERENCE_ECAPPLCO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('gl_update_data') and o.name = 'FK_GL_UPDAT_REFERENCE_GL_UPDAT')
alter table gl_update_data
   drop constraint FK_GL_UPDAT_REFERENCE_GL_UPDAT
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ecActiveJrnlUsed')
            and   type = 'V')
   drop view ecActiveJrnlUsed
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ecExceptionsCheck')
            and   type = 'V')
   drop view ecExceptionsCheck
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GLCONTROL')
            and   name  = 'CONTROL_IDX2'
            and   indid > 0
            and   indid < 255)
   drop index GLCONTROL.CONTROL_IDX2
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GLCONTROL')
            and   type = 'U')
   drop table GLCONTROL
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GLMASTER')
            and   name  = 'CC2_IDX3'
            and   indid > 0
            and   indid < 255)
   drop index GLMASTER.CC2_IDX3
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GLMASTER')
            and   name  = 'CC1_IDX3'
            and   indid > 0
            and   indid < 255)
   drop index GLMASTER.CC1_IDX3
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GLMASTER')
            and   name  = 'GLMASTER33'
            and   indid > 0
            and   indid < 255)
   drop index GLMASTER.GLMASTER33
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GLMASTER')
            and   name  = 'GLMASTER32'
            and   indid > 0
            and   indid < 255)
   drop index GLMASTER.GLMASTER32
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GLMASTER')
            and   name  = 'GLMASTER31'
            and   indid > 0
            and   indid < 255)
   drop index GLMASTER.GLMASTER31
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GLMASTER')
            and   name  = 'GLMASTER30'
            and   indid > 0
            and   indid < 255)
   drop index GLMASTER.GLMASTER30
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GLMASTER')
            and   name  = 'GLMASTER29'
            and   indid > 0
            and   indid < 255)
   drop index GLMASTER.GLMASTER29
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GLMASTER')
            and   name  = 'GLMASTER28'
            and   indid > 0
            and   indid < 255)
   drop index GLMASTER.GLMASTER28
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GLMASTER')
            and   name  = 'GLMASTER27'
            and   indid > 0
            and   indid < 255)
   drop index GLMASTER.GLMASTER27
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GLMASTER')
            and   name  = 'GLMASTER26'
            and   indid > 0
            and   indid < 255)
   drop index GLMASTER.GLMASTER26
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GLMASTER')
            and   name  = 'GLMASTER25'
            and   indid > 0
            and   indid < 255)
   drop index GLMASTER.GLMASTER25
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GLMASTER')
            and   name  = 'GLMASTER24'
            and   indid > 0
            and   indid < 255)
   drop index GLMASTER.GLMASTER24
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GLMASTER')
            and   name  = 'GLMASTER23'
            and   indid > 0
            and   indid < 255)
   drop index GLMASTER.GLMASTER23
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GLMASTER')
            and   type = 'U')
   drop table GLMASTER
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GL_UPDATE_CNTL')
            and   name  = 'GL_UPDATE_CNTL1'
            and   indid > 0
            and   indid < 255)
   drop index GL_UPDATE_CNTL.GL_UPDATE_CNTL1
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GL_UPDATE_CNTL')
            and   type = 'U')
   drop table GL_UPDATE_CNTL
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HCAPLOAD')
            and   type = 'U')
   drop table HCAPLOAD
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PB_UPDATE_CNTL')
            and   name  = 'PBUPDATECNTL_PK'
            and   indid > 0
            and   indid < 255)
   drop index PB_UPDATE_CNTL.PBUPDATECNTL_PK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PB_UPDATE_CNTL')
            and   name  = 'PB_UPDATE_CNTL3'
            and   indid > 0
            and   indid < 255)
   drop index PB_UPDATE_CNTL.PB_UPDATE_CNTL3
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PB_UPDATE_CNTL')
            and   type = 'U')
   drop table PB_UPDATE_CNTL
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PB_UPDATE_DATA')
            and   name  = 'PBUPDATEDATA_PK'
            and   indid > 0
            and   indid < 255)
   drop index PB_UPDATE_DATA.PBUPDATEDATA_PK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PB_UPDATE_DATA')
            and   name  = 'PB_UPDATE_DATA3'
            and   indid > 0
            and   indid < 255)
   drop index PB_UPDATE_DATA.PB_UPDATE_DATA3
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PB_UPDATE_DATA')
            and   type = 'U')
   drop table PB_UPDATE_DATA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ecAttribDef')
            and   name  = 'ecAttribDefPk'
            and   indid > 0
            and   indid < 255)
   drop index ecAttribDef.ecAttribDefPk
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ecAttribDef')
            and   type = 'U')
   drop table ecAttribDef
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ecControlr')
            and   name  = 'ecControlrPk'
            and   indid > 0
            and   indid < 255)
   drop index ecControlr.ecControlrPk
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ecControlr')
            and   type = 'U')
   drop table ecControlr
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ecCustAttrib')
            and   name  = 'ecCustAttribPk'
            and   indid > 0
            and   indid < 255)
   drop index ecCustAttrib.ecCustAttribPk
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ecCustAttrib')
            and   type = 'U')
   drop table ecCustAttrib
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ecCustLog')
            and   name  = 'ecCustLogPk'
            and   indid > 0
            and   indid < 255)
   drop index ecCustLog.ecCustLogPk
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ecCustLog')
            and   type = 'U')
   drop table ecCustLog
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ecHolidays')
            and   name  = 'ecHolidaysPk'
            and   indid > 0
            and   indid < 255)
   drop index ecHolidays.ecHolidaysPk
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ecHolidays')
            and   type = 'U')
   drop table ecHolidays
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ecSmartConnectLog')
            and   type = 'U')
   drop table ecSmartConnectLog
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ecStatsMapping')
            and   type = 'U')
   drop table ecStatsMapping
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ecapplcode')
            and   name  = 'APPLCODE2'
            and   indid > 0
            and   indid < 255)
   drop index ecapplcode.APPLCODE2
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ecapplcode')
            and   type = 'U')
   drop table ecapplcode
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ecgl00105')
            and   type = 'U')
   drop table ecgl00105
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ecgl10000')
            and   type = 'U')
   drop table ecgl10000
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ecgl20000')
            and   type = 'U')
   drop table ecgl20000
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ecgl30000')
            and   type = 'U')
   drop table ecgl30000
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ecglbalances')
            and   type = 'U')
   drop table ecglbalances
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ecgldetarc')
            and   name  = 'ecgldetarcpk'
            and   indid > 0
            and   indid < 255)
   drop index ecgldetarc.ecgldetarcpk
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ecgldetarc')
            and   name  = 'ecgldetarcdup'
            and   indid > 0
            and   indid < 255)
   drop index ecgldetarc.ecgldetarcdup
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ecgldetarc')
            and   type = 'U')
   drop table ecgldetarc
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ecglupdatedata')
            and   name  = 'ecglupdatedata_uidx'
            and   indid > 0
            and   indid < 255)
   drop index ecglupdatedata.ecglupdatedata_uidx
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ecglupdatedata')
            and   type = 'U')
   drop table ecglupdatedata
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ecgpcontrol')
            and   type = 'U')
   drop table ecgpcontrol
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ecgpjepending')
            and   type = 'U')
   drop table ecgpjepending
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ecjeupdatedata')
            and   name  = 'ecjeupdatedatapk'
            and   indid > 0
            and   indid < 255)
   drop index ecjeupdatedata.ecjeupdatedatapk
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ecjeupdatedata')
            and   type = 'U')
   drop table ecjeupdatedata
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ecjrnlcode')
            and   name  = 'ecjrnlcodepk'
            and   indid > 0
            and   indid < 255)
   drop index ecjrnlcode.ecjrnlcodepk
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ecjrnlcode')
            and   type = 'U')
   drop table ecjrnlcode
go

if exists (select 1
            from  sysobjects
           where  id = object_id('eckeyval')
            and   type = 'U')
   drop table eckeyval
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ecpbgpcash')
            and   name  = 'ecpbgpcash_u2'
            and   indid > 0
            and   indid < 255)
   drop index ecpbgpcash.ecpbgpcash_u2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ecpbgpcash')
            and   name  = 'ecpbgpcash_d1'
            and   indid > 0
            and   indid < 255)
   drop index ecpbgpcash.ecpbgpcash_d1
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ecpbgpcash')
            and   type = 'U')
   drop table ecpbgpcash
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ecpm10000')
            and   type = 'U')
   drop table ecpm10000
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ecpm20000')
            and   type = 'U')
   drop table ecpm20000
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ecpubsglmap')
            and   type = 'U')
   drop table ecpubsglmap
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ecpubsgperror')
            and   type = 'U')
   drop table ecpubsgperror
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ecrefundarc')
            and   type = 'U')
   drop table ecrefundarc
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ecrjnonretailer')
            and   type = 'U')
   drop table ecrjnonretailer
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ecrjretailer')
            and   type = 'U')
   drop table ecrjretailer
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('gl_update_data')
            and   name  = 'gl_update_data1'
            and   indid > 0
            and   indid < 255)
   drop index gl_update_data.gl_update_data1
go

if exists (select 1
            from  sysobjects
           where  id = object_id('gl_update_data')
            and   type = 'U')
   drop table gl_update_data
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('glsvdata')
            and   name  = 'ix_svdata4'
            and   indid > 0
            and   indid < 255)
   drop index glsvdata.ix_svdata4
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('glsvdata')
            and   name  = 'ix_svdata3'
            and   indid > 0
            and   indid < 255)
   drop index glsvdata.ix_svdata3
go

if exists (select 1
            from  sysobjects
           where  id = object_id('glsvdata')
            and   type = 'U')
   drop table glsvdata
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('pu_account')
            and   name  = 'ix_translo_elec2'
            and   indid > 0
            and   indid < 255)
   drop index pu_account.ix_translo_elec2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('pu_account')
            and   name  = 'ix_street2'
            and   indid > 0
            and   indid < 255)
   drop index pu_account.ix_street2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('pu_account')
            and   name  = 'ix_name2'
            and   indid > 0
            and   indid < 255)
   drop index pu_account.ix_name2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('pu_account')
            and   name  = 'ix_alpha2'
            and   indid > 0
            and   indid < 255)
   drop index pu_account.ix_alpha2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('pu_account')
            and   name  = 'ix287_92'
            and   indid > 0
            and   indid < 255)
   drop index pu_account.ix287_92
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('pu_account')
            and   name  = 'ix_thesiaddr2'
            and   indid > 0
            and   indid < 255)
   drop index pu_account.ix_thesiaddr2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('pu_account')
            and   name  = 'idx_acctpostalzip2'
            and   indid > 0
            and   indid < 255)
   drop index pu_account.idx_acctpostalzip2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('pu_account')
            and   name  = 'ix_account2'
            and   indid > 0
            and   indid < 255)
   drop index pu_account.ix_account2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('pu_account')
            and   name  = 'ix_cycle2'
            and   indid > 0
            and   indid < 255)
   drop index pu_account.ix_cycle2
go

if exists (select 1
            from  sysobjects
           where  id = object_id('pu_account')
            and   type = 'U')
   drop table pu_account
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('pu_acct_addr')
            and   name  = 'pk3acctaddr2'
            and   indid > 0
            and   indid < 255)
   drop index pu_acct_addr.pk3acctaddr2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('pu_acct_addr')
            and   name  = 'pk2acctaddr2'
            and   indid > 0
            and   indid < 255)
   drop index pu_acct_addr.pk2acctaddr2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('pu_acct_addr')
            and   name  = 'pk1acctaddr2'
            and   indid > 0
            and   indid < 255)
   drop index pu_acct_addr.pk1acctaddr2
go

if exists (select 1
            from  sysobjects
           where  id = object_id('pu_acct_addr')
            and   type = 'U')
   drop table pu_acct_addr
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('pu_stat_det')
            and   name  = 'ix_stat_det2'
            and   indid > 0
            and   indid < 255)
   drop index pu_stat_det.ix_stat_det2
go

if exists (select 1
            from  sysobjects
           where  id = object_id('pu_stat_det')
            and   type = 'U')
   drop table pu_stat_det
go

drop schema DBO
go

/*==============================================================*/
/* User: DBO                                                    */
/*==============================================================*/
create schema DBO
go

/*==============================================================*/
/* Table: GLCONTROL                                             */
/*==============================================================*/
create table GLCONTROL (
   VERSION_NO           char(15)             null,
   COMP_NO              smallint             not null,
   ACCOUNT_FORMAT       char(15)             not null,
   YEAREND_MONTH        smallint             not null,
   YEAR_FISCAL_MONTH    smallint             not null,
   LAST_YEAREND         datetime             not null,
   FUND_ACCOUNTING      char(1)              not null,
   ENCUMBRANCE_GL       char(1)              not null,
   EN_ADD_YTD           char(1)              not null,
   SURPLUS_ACCT         char(40)             null,
   SUSPENSE             char(40)             null,
   INTERFUND_ACCT       char(40)             null,
   NEXT_PSEUDO          int                  not null,
   FUND_LEVEL           smallint             null,
   CURRENT_MONTH        smallint             null,
   MAN_1_FORE           char(1)              null,
   MAN_2_FORE           char(1)              null,
   MAN_3_FORE           char(1)              null,
   MAN_4_FORE           char(1)              null,
   MAN_5_FORE           char(1)              null,
   MAN_6_FORE           char(1)              null,
   MAN_7_FORE           char(1)              null,
   MAN_8_FORE           char(1)              null,
   MAN_9_FORE           char(1)              null,
   MAN_10_FORE          char(1)              null,
   MAN_11_FORE          char(1)              null,
   MAN_12_FORE          char(1)              null,
   MAN_FORE_ACTIVE      smallint             null,
   COMP_FORE_METH       smallint             not null,
   YEARS_HISTORY        smallint             not null,
   OVERRIDE_PASS        char(6)              not null,
   LAST_SUBREC          smallint             null,
   NXT_GJ_NO            int                  null,
   NXT_GJ_LOGIN_NO      int                  null,
   NXT_RC_NO            int                  null,
   NXT_SR_NO            int                  null,
   NXT_RL_NO            int                  null,
   BUDGET_LEVEL         smallint             null
)
go

/*==============================================================*/
/* Index: CONTROL_IDX2                                          */
/*==============================================================*/
create unique index CONTROL_IDX2 on GLCONTROL (
COMP_NO ASC
)
go

/*==============================================================*/
/* Table: GLMASTER                                              */
/*==============================================================*/
create table GLMASTER (
   COMP_NO              SMALLINT             not null,
   C_ACCOUNT            CHAR(40)             null,
   N_ACCOUNT            CHAR(40)             null,
   PSEUDO_NO            INTEGER              null,
   DESCRIPTION          CHAR(25)             null,
   I_B_FLAG             CHAR(1)              null,
   GST_CODE             CHAR(2)              null,
   ACCOUNT_STATUS       CHAR(1)              null,
   S_R_CODE             CHAR(2)              null,
   S_R_ACCOUNT          CHAR(3)              null,
   S_R_PERCENT          DEC(5,2)             not null,
   PROJ_BUDGET          DEC(11,2)            not null,
   OPENING_BAL          DEC(11,2)            not null,
   MONTH_1_TRAN         DEC(11,2)            not null,
   MONTH_2_TRAN         DEC(11,2)            not null,
   MONTH_3_TRAN         DEC(11,2)            not null,
   MONTH_4_TRAN         DEC(11,2)            not null,
   MONTH_5_TRAN         DEC(11,2)            not null,
   MONTH_6_TRAN         DEC(11,2)            not null,
   MONTH_7_TRAN         DEC(11,2)            not null,
   MONTH_8_TRAN         DEC(11,2)            not null,
   MONTH_9_TRAN         DEC(11,2)            not null,
   MONTH_10_TRAN        DEC(11,2)            not null,
   MONTH_11_TRAN        DEC(11,2)            not null,
   MONTH_12_TRAN        DEC(11,2)            not null,
   MONTH_13_TRAN        DEC(11,2)            not null,
   MONTH_14_TRAN        DEC(11,2)            not null,
   MONTH_15_TRAN        DEC(11,2)            not null,
   MONTH_16_TRAN        DEC(11,2)            not null,
   MONTH_17_TRAN        DEC(11,2)            not null,
   MONTH_18_TRAN        DEC(11,2)            not null,
   MONTH_19_TRAN        DEC(11,2)            not null,
   MONTH_20_TRAN        DEC(11,2)            not null,
   MONTH_21_TRAN        DEC(11,2)            not null,
   MONTH_22_TRAN        DEC(11,2)            not null,
   MONTH_23_TRAN        DEC(11,2)            not null,
   MONTH_24_TRAN        DEC(11,2)            not null,
   MONTH_1_BUDGET       DEC(11,2)            not null,
   MONTH_2_BUDGET       DEC(11,2)            not null,
   MONTH_3_BUDGET       DEC(11,2)            not null,
   MONTH_4_BUDGET       DEC(11,2)            not null,
   MONTH_5_BUDGET       DEC(11,2)            not null,
   MONTH_6_BUDGET       DEC(11,2)            not null,
   MONTH_7_BUDGET       DEC(11,2)            not null,
   MONTH_8_BUDGET       DEC(11,2)            not null,
   MONTH_9_BUDGET       DEC(11,2)            not null,
   MONTH_10_BUDGET      DEC(11,2)            not null,
   MONTH_11_BUDGET      DEC(11,2)            not null,
   MONTH_12_BUDGET      DEC(11,2)            not null,
   MONTH_13_BUDGET      DEC(11,2)            not null,
   MONTH_14_BUDGET      DEC(11,2)            not null,
   MONTH_15_BUDGET      DEC(11,2)            not null,
   MONTH_16_BUDGET      DEC(11,2)            not null,
   MONTH_17_BUDGET      DEC(11,2)            not null,
   MONTH_18_BUDGET      DEC(11,2)            not null,
   MONTH_19_BUDGET      DEC(11,2)            not null,
   MONTH_20_BUDGET      DEC(11,2)            not null,
   MONTH_21_BUDGET      DEC(11,2)            not null,
   MONTH_22_BUDGET      DEC(11,2)            not null,
   MONTH_23_BUDGET      DEC(11,2)            not null,
   MONTH_24_BUDGET      DEC(11,2)            not null,
   C_COMMITTED          DEC(11,2)            not null,
   N_COMMITTED          DEC(11,2)            not null,
   REV_1_BUDGET         DEC(11,2)            not null,
   REV_2_BUDGET         DEC(11,2)            not null,
   REV_3_BUDGET         DEC(11,2)            not null,
   REV_4_BUDGET         DEC(11,2)            not null,
   REV_5_BUDGET         DEC(11,2)            not null,
   REV_6_BUDGET         DEC(11,2)            not null,
   REV_7_BUDGET         DEC(11,2)            not null,
   REV_8_BUDGET         DEC(11,2)            not null,
   REV_9_BUDGET         DEC(11,2)            not null,
   REV_10_BUDGET        DEC(11,2)            not null,
   REV_11_BUDGET        DEC(11,2)            not null,
   REV_12_BUDGET        DEC(11,2)            not null,
   REV_13_BUDGET        DEC(11,2)            not null,
   REV_14_BUDGET        DEC(11,2)            not null,
   REV_15_BUDGET        DEC(11,2)            not null,
   REV_16_BUDGET        DEC(11,2)            not null,
   REV_17_BUDGET        DEC(11,2)            not null,
   REV_18_BUDGET        DEC(11,2)            not null,
   REV_19_BUDGET        DEC(11,2)            not null,
   REV_20_BUDGET        DEC(11,2)            not null,
   REV_21_BUDGET        DEC(11,2)            not null,
   REV_22_BUDGET        DEC(11,2)            not null,
   REV_23_BUDGET        DEC(11,2)            not null,
   REV_24_BUDGET        DEC(11,2)            not null,
   MAN_1_FORECAST       DEC(11,2)            not null,
   MAN_2_FORECAST       DEC(11,2)            not null,
   MAN_3_FORECAST       DEC(11,2)            not null,
   MAN_4_FORECAST       DEC(11,2)            not null,
   MAN_5_FORECAST       DEC(11,2)            not null,
   MAN_6_FORECAST       DEC(11,2)            not null,
   MAN_7_FORECAST       DEC(11,2)            not null,
   MAN_8_FORECAST       DEC(11,2)            not null,
   MAN_9_FORECAST       DEC(11,2)            not null,
   MAN_10_FORECAST      DEC(11,2)            not null,
   MAN_11_FORECAST      DEC(11,2)            not null,
   MAN_12_FORECAST      DEC(11,2)            not null,
   MAN_13_FORECAST      DEC(11,2)            not null,
   MAN_14_FORECAST      DEC(11,2)            not null,
   MAN_15_FORECAST      DEC(11,2)            not null,
   MAN_16_FORECAST      DEC(11,2)            not null,
   MAN_17_FORECAST      DEC(11,2)            not null,
   MAN_18_FORECAST      DEC(11,2)            not null,
   MAN_19_FORECAST      DEC(11,2)            not null,
   MAN_20_FORECAST      DEC(11,2)            not null,
   MAN_21_FORECAST      DEC(11,2)            not null,
   MAN_22_FORECAST      DEC(11,2)            not null,
   MAN_23_FORECAST      DEC(11,2)            not null,
   MAN_24_FORECAST      DEC(11,2)            not null,
   C_OBJECT             SMALLINT             null,
   C_COST_CENTRE        CHAR(15)             null,
   N_OBJECT             SMALLINT             null,
   N_COST_CENTRE        CHAR(15)             null,
   FIR_CODE             CHAR(12)             null,
   BAL_C_YR             DEC(11,2)            not null,
   BAL_N_YR             DEC(11,2)            not null,
   C_NUM_SUBS           SMALLINT             not null,
   N_NUM_SUBS           SMALLINT             not null,
   ACCOUNT_N_STATUS     CHAR(1)              null
)
go

/*==============================================================*/
/* Index: GLMASTER23                                            */
/*==============================================================*/
create unique index GLMASTER23 on GLMASTER (
COMP_NO ASC,
C_ACCOUNT ASC
)
go

/*==============================================================*/
/* Index: GLMASTER24                                            */
/*==============================================================*/
create unique index GLMASTER24 on GLMASTER (
COMP_NO ASC,
FIR_CODE ASC,
N_ACCOUNT ASC
)
go

/*==============================================================*/
/* Index: GLMASTER25                                            */
/*==============================================================*/
create unique index GLMASTER25 on GLMASTER (
COMP_NO ASC,
N_ACCOUNT ASC
)
go

/*==============================================================*/
/* Index: GLMASTER26                                            */
/*==============================================================*/
create unique index GLMASTER26 on GLMASTER (
COMP_NO ASC,
PSEUDO_NO ASC
)
go

/*==============================================================*/
/* Index: GLMASTER27                                            */
/*==============================================================*/
create unique index GLMASTER27 on GLMASTER (
COMP_NO ASC,
C_OBJECT ASC,
C_COST_CENTRE ASC,
C_ACCOUNT ASC
)
go

/*==============================================================*/
/* Index: GLMASTER28                                            */
/*==============================================================*/
create unique index GLMASTER28 on GLMASTER (
COMP_NO ASC,
N_OBJECT ASC,
N_COST_CENTRE ASC,
N_ACCOUNT ASC
)
go

/*==============================================================*/
/* Index: GLMASTER29                                            */
/*==============================================================*/
create unique index GLMASTER29 on GLMASTER (
COMP_NO ASC,
S_R_CODE ASC,
S_R_ACCOUNT ASC,
C_ACCOUNT ASC
)
go

/*==============================================================*/
/* Index: GLMASTER30                                            */
/*==============================================================*/
create unique index GLMASTER30 on GLMASTER (
COMP_NO ASC,
S_R_CODE ASC,
S_R_ACCOUNT ASC,
N_ACCOUNT ASC
)
go

/*==============================================================*/
/* Index: GLMASTER31                                            */
/*==============================================================*/
create unique index GLMASTER31 on GLMASTER (
COMP_NO ASC,
FIR_CODE ASC,
C_ACCOUNT ASC
)
go

/*==============================================================*/
/* Index: GLMASTER32                                            */
/*==============================================================*/
create index GLMASTER32 on GLMASTER (
COMP_NO ASC,
N_NUM_SUBS ASC
)
go

/*==============================================================*/
/* Index: GLMASTER33                                            */
/*==============================================================*/
create index GLMASTER33 on GLMASTER (
COMP_NO ASC,
C_NUM_SUBS ASC
)
go

/*==============================================================*/
/* Index: CC1_IDX3                                              */
/*==============================================================*/
create index CC1_IDX3 on GLMASTER (
COMP_NO ASC,
C_COST_CENTRE ASC
)
go

/*==============================================================*/
/* Index: CC2_IDX3                                              */
/*==============================================================*/
create index CC2_IDX3 on GLMASTER (
COMP_NO ASC,
C_COST_CENTRE ASC,
C_OBJECT ASC
)
go

/*==============================================================*/
/* Table: GL_UPDATE_CNTL                                        */
/*==============================================================*/
create table GL_UPDATE_CNTL (
   COMP_NO              SMALLINT             not null,
   APPLCODE             CHAR(2)              not null,
   JOURNALCODE          CHAR(2)              not null,
   JRNL_NO              INTEGER              not null,
   POST_MONTH           CHAR(8)              null,
   RUN_DATE             DATETIME YEAR TO SECOND null,
   RUN_TIME             CHAR(8)              null,
   NUM_ROWS             SMALLINT             null,
   constraint PK_GL_UPDATE_CNTL primary key (COMP_NO, APPLCODE, JOURNALCODE, JRNL_NO)
)
go

/*==============================================================*/
/* Index: GL_UPDATE_CNTL1                                       */
/*==============================================================*/
create index GL_UPDATE_CNTL1 on GL_UPDATE_CNTL (
COMP_NO ASC,
APPLCODE ASC,
JOURNALCODE ASC,
JRNL_NO ASC,
POST_MONTH ASC
)
go

/*==============================================================*/
/* Table: HCAPLOAD                                              */
/*==============================================================*/
create table HCAPLOAD (
   SEQ_NO               numeric              identity,
   REC_TYPE             char(1)              null,
   UTILITY_TYPE         char(1)              null,
   ACCOUNT_NO           int                  null,
   ACCT_NAME            char(30)             null,
   ADDRESS_1            char(30)             null,
   ADDRESS_2            char(30)             null,
   ADDRESS_3            char(20)             null,
   CITY                 char(20)             null,
   PROVINCE             char(5)              null,
   POSTAL_ZIP           char(10)             null,
   POSTAL_MODE          char(4)              null,
   FINAL                char(1)              null,
   AMOUNT               decimal(12,2)        null,
   PSEUDO               int                  null,
   APPL_CODE            char(2)              null,
   JRNL_CODE            char(2)              null,
   JRNL_NO              int                  null,
   CHQ_DATE             datetime             null,
   COMMENT_             char(25)             null,
   SYSDATE_             datetime             null,
   SYSTIME              char(5)              null,
   SYSUSER              char(8)              null,
   LOADED_BY_AP         smallint             null,
   DIRECT_DEPOSIT       char(1)              null,
   BANK_TRANST          char(15)             null,
   BANK_ACCONT          char(15)             null,
   constraint PK_HCAPLOAD primary key nonclustered (SEQ_NO)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sys.sp_addextendedproperty 'MS_Description', 
   '
northstargpsupport@erthcorp.com

Refund Account failed to load in Great Plains

Good morning,

This email is to inforrm you the pubs refund account journals have NOT been loaded properly into Great plains .

Details about the process mapping failing:
Map ID:                  GlobalMapID 
Map Description:    GlobalMapDescription   
Last Error:              GlobalLastError 
Run Started on:     GlobalRunDate 
Run Finished on:   GlobalRunEnded 
Error Description:   GlobalRunErrors    

Your support Team will be investigating the problem promptly
and will find and resolve the problem

Your support team!
',
   'user', @CurrentUser, 'table', 'HCAPLOAD'
go

/*==============================================================*/
/* Table: PB_UPDATE_CNTL                                        */
/*==============================================================*/
create table PB_UPDATE_CNTL (
   COMP_NO              smallint             not null,
   APPLCODE             char(2)              not null,
   JOURNALCODE          char(2)              not null,
   JRNL_NO              int                  not null,
   POST_MONTH           char(8)              null,
   RUN_DATE             datetime             null,
   RUN_TIME             char(8)              null,
   NUM_ROWS             smallint             null,
   constraint PK_PB_UPDATE_CNTL primary key nonclustered (COMP_NO, APPLCODE, JOURNALCODE, JRNL_NO)
)
go

/*==============================================================*/
/* Index: PB_UPDATE_CNTL3                                       */
/*==============================================================*/
create index PB_UPDATE_CNTL3 on PB_UPDATE_CNTL (
COMP_NO ASC,
APPLCODE ASC,
JOURNALCODE ASC,
JRNL_NO ASC,
POST_MONTH ASC
)
go

/*==============================================================*/
/* Index: PBUPDATECNTL_PK                                       */
/*==============================================================*/
create unique index PBUPDATECNTL_PK on PB_UPDATE_CNTL (
COMP_NO ASC,
APPLCODE ASC,
JOURNALCODE ASC,
JRNL_NO ASC
)
go

/*==============================================================*/
/* Table: PB_UPDATE_DATA                                        */
/*==============================================================*/
create table PB_UPDATE_DATA (
   COMP_NO              smallint             not null,
   APPLCODE             char(2)              not null,
   JOURNALCODE          char(2)              not null,
   JRNL_NO              int                  not null,
   POST_MONTH           char(8)              null,
   SEQ_NUMBER           numeric              identity,
   GL_ACCOUNT           char(40)             null,
   PSEUDO_NO            int                  null,
   AMOUNT               decimal(11,2)        null,
   REFERENCE            char(10)             null,
   DESCRIPTION1         char(25)             null,
   DESCRIPTION2         char(25)             null,
   constraint PK_PB_UPDATE_DATA primary key nonclustered (COMP_NO, APPLCODE, JOURNALCODE, JRNL_NO, SEQ_NUMBER)
)
go

/*==============================================================*/
/* Index: PB_UPDATE_DATA3                                       */
/*==============================================================*/
create index PB_UPDATE_DATA3 on PB_UPDATE_DATA (
COMP_NO ASC,
APPLCODE ASC,
JOURNALCODE ASC,
JRNL_NO ASC,
POST_MONTH ASC,
SEQ_NUMBER ASC
)
go

/*==============================================================*/
/* Index: PBUPDATEDATA_PK                                       */
/*==============================================================*/
create unique index PBUPDATEDATA_PK on PB_UPDATE_DATA (
COMP_NO ASC,
APPLCODE ASC,
JOURNALCODE ASC,
JRNL_NO ASC,
SEQ_NUMBER ASC
)
go

/*==============================================================*/
/* Table: ecAttribDef                                           */
/*==============================================================*/
create table ecAttribDef (
   flag_id              int                  not null,
   description          char(60)             not null,
   constraint PK_ECATTRIBDEF primary key nonclustered (flag_id)
)
go


insert into ecAttribDef values (1,"OCEB Reporting Active");
insert into ecAttribDef values (2,"OCEB Reporting day to prepare");
insert into ecAttribDef values (3,"G/L Integration"); 
insert into ecAttribDef values (4,"OCEB Reporting month to prepare");
insert into ecAttribDef values (5,"Pubs - GP Integration");

/*==============================================================*/
/* Index: ecAttribDefPk                                         */
/*==============================================================*/
create unique index ecAttribDefPk on ecAttribDef (
flag_id ASC
)
go

/*==============================================================*/
/* Table: ecControlr                                            */
/*==============================================================*/
create table ecControlr (
   seq_no               int                  not null,
   asofdate             datetime             null,
   constraint PK_ECCONTROLR primary key nonclustered (seq_no)
)
go


-- set the asofdate if you want the job scheduler store procedure
-- to overwrite system date
insert into ecControlr values (1,null); 


/*==============================================================*/
/* Index: ecControlrPk                                          */
/*==============================================================*/
create unique index ecControlrPk on ecControlr (
seq_no ASC
)
go

/*==============================================================*/
/* Table: ecCustAttrib                                          */
/*==============================================================*/

-- cust_id for Pubs/Northstar GP Integration will be greater and equal to 100
-- ecaliber customers will be under 100
 
insert into ecCustAttrib values (101,1,'N');
insert into ecCustAttrib values (101,2,3);
insert into ecCustAttrib values (101,3,'N');
--only add record upon required
--insert into ecCustAttrib values (101,4,null);
insert into ecCustAttrib values (101,5,'Y'); 
create table ecCustAttrib (
   cust_id              int                  not null,
   flag_id              int                  not null,
   flag_value           char(100)            not null,
   constraint PK_ECCUSTATTRIB primary key nonclustered (cust_id, flag_id)
)
go

/*==============================================================*/
/* Index: ecCustAttribPk                                        */
/*==============================================================*/
create unique index ecCustAttribPk on ecCustAttrib (
cust_id ASC,
flag_id ASC
)
go

/*==============================================================*/
/* Table: ecCustLog                                             */
/*==============================================================*/
create table ecCustLog (
   cust_id              int                  not null,
   seq_id               int                  not null,
   msg_log              char(100)            not null,
   constraint PK_ECCUSTLOG primary key nonclustered (cust_id, seq_id)
)
go

/*==============================================================*/
/* Index: ecCustLogPk                                           */
/*==============================================================*/
create unique index ecCustLogPk on ecCustLog (
cust_id ASC,
seq_id ASC
)
go

/*==============================================================*/
/* Table: ecHolidays                                            */
/*==============================================================*/
create table ecHolidays (
   holiday_date         datetime             not null,
   holiday_type         char(1)              not null,
   constraint PK_ECHOLIDAYS primary key nonclustered (holiday_date)
)
go


insert into ecHolidays values ('09/01/2011','S');
insert into ecHolidays values ('10/14/2011','S');
insert into ecHolidays values ('12/24/2011','S');
insert into ecHolidays values ('12/25/2011','S');

/*==============================================================*/
/* Index: ecHolidaysPk                                          */
/*==============================================================*/
create unique index ecHolidaysPk on ecHolidays (
holiday_date ASC
)
go

/*==============================================================*/
/* Table: ecSmartConnectLog                                     */
/*==============================================================*/
create table ecSmartConnectLog (
   log_no               integer              identity,
   log_date             char(100)            null,
   log_userid           char(100)            null,
   log_companyid        char(100)            null,
   log_mapdescription   char(1000)           null,
   log_message          char(1000)           null,
   log_lasterror        char(1000)           null,
   log_globalid         char(1000)           null,
   log_purpose          char(100)            null,
   constraint PK_ECSMARTCONNECTLOG primary key (log_no)
)
go

/*==============================================================*/
/* Table: ecStatsMapping                                        */
/*==============================================================*/
create table ecStatsMapping (
   stat_code            char(6)              null,
   utility_type         char(1)              null,
   category             char(2)              null,
   old_pseudo           integer              null,
   new_pseudo           integer              null
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sys.sp_addextendedproperty 'MS_Description', 
   '
',
   'user', @CurrentUser, 'table', 'ecStatsMapping'
go



/*==============================================================*/
/* Table: ecapplcode                                            */
/*==============================================================*/
create table ecapplcode (
   applcode             char(2)              not null,
   description          char(30)             null,
   constraint PK_ECAPPLCODE primary key nonclustered (applcode)
)
go


inssert into ecapplcode values ('PB','Pubs/NorthStar CIS Application');

/*==============================================================*/
/* Index: APPLCODE2                                             */
/*==============================================================*/
create unique index APPLCODE2 on ecapplcode (
applcode ASC
)
go

/*==============================================================*/
/* Table: ecgl00105                                             */
/*==============================================================*/
create table ecgl00105 (
   ACTINDX              int                  not null,
   ACTNUMBR_1           char(7)              not null,
   ACTNUMBR_2           char(7)              not null,
   ACTNUMBR_3           char(7)              not null,
   ACTNUMBR_4           char(7)              not null,
   ACTNUMBR_5           char(7)              not null,
   ACTNUMBR_6           char(7)              not null,
   ACTNUMBR_7           char(7)              not null,
   ACTNUMST             char(129)            not null,
   DEX_ROW_ID           int                  null,
   constraint PKGL00105 primary key nonclustered (ACTINDX)
         WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
)
ON [PRIMARY]
go

/*==============================================================*/
/* Table: ecgl10000                                             */
/*==============================================================*/
create table ecgl10000 (
   BACHNUMB             char(15)             not null,
   BCHSOURC             char(15)             not null,
   JRNENTRY             int                  not null,
   RCTRXSEQ             numeric(19, 5)       not null,
   SOURCDOC             char(11)             not null,
   REFRENCE             char(31)             not null,
   TRXDATE              datetime             not null,
   RVRSNGDT             datetime             not null,
   RCRNGTRX             tinyint              not null,
   BALFRCLC             smallint             not null,
   PSTGSTUS             smallint             not null,
   LASTUSER             char(15)             not null,
   LSTDTEDT             datetime             not null,
   USWHPSTD             char(15)             not null,
   TRXTYPE              smallint             not null,
   SQNCLINE             numeric(19, 5)       not null,
   GLHDRMSG             binary(4)            not null,
   GLHDRMS2             binary(4)            not null,
   TRXSORCE             char(13)             not null,
   RVTRXSRC             char(13)             not null,
   SERIES               smallint             not null,
   ORPSTDDT             datetime             not null,
   ORTRXSRC             char(13)             not null,
   ORIGDTASERIES        smallint             not null,
   DTACONTROLNUM        char(21)             not null,
   DTATRXTYPE           smallint             not null,
   DTA_INDEX            numeric(19, 5)       not null,
   CURNCYID             char(15)             not null,
   CURRNIDX             smallint             not null,
   RATETPID             char(15)             not null,
   EXGTBLID             char(15)             not null,
   XCHGRATE             numeric(19, 7)       not null,
   EXCHDATE             datetime             not null,
   TIME1                datetime             not null,
   RTCLCMTD             smallint             not null,
   NOTEINDX             numeric(19, 5)       not null,
   GLHDRVAL             binary(4)            not null,
   PERIODID             smallint             not null,
   OPENYEAR             smallint             not null,
   CLOSEDYR             smallint             not null,
   HISTRX               tinyint              not null,
   REVPRDID             smallint             not null,
   REVYEAR              smallint             not null,
   REVCLYR              smallint             not null,
   REVHIST              tinyint              not null,
   ERRSTATE             int                  not null,
   ICTRX                tinyint              not null,
   ORCOMID              char(5)              not null,
   ORIGINJE             int                  not null,
   ICDISTS              tinyint              not null,
   PRNTSTUS             smallint             not null,
   DENXRATE             numeric(19, 7)       not null,
   MCTRXSTT             smallint             not null,
   DOCDATE              datetime             not null,
   TAX_DATE             datetime             not null,
   VOIDED               tinyint              not null,
   ORIGINAL_JE          int                  not null,
   ORIGINAL_JE_YEAR     smallint             not null,
   ORIGINAL_JE_SEQ_NU   numeric(19, 5)       not null,
   CORRECTING_TRX_TYP   smallint             not null,
   LEDGER_ID            smallint             not null,
   ADJUSTMENT_TRANSAC   tinyint              not null,
   DEX_ROW_TS           datetime             not null constraint DF__GL10000__DEX_ROW__540C7B00 default getutcdate(),
   DEX_ROW_ID           int                  null,
   constraint PKGL10000 primary key nonclustered (BCHSOURC, BACHNUMB, JRNENTRY)
         WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
   constraint CKT_ECGL10000 check (datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)),
   constraint RULE_1 check ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0))),
   constraint RULE_2 check ((datepart(hour,[LSTDTEDT])=(0) AND datepart(minute,[LSTDTEDT])=(0) AND datepart(second,[LSTDTEDT])=(0) AND datepart(millisecond,[LSTDTEDT])=(0))),
   constraint RULE_3 check ((datepart(hour,[ORPSTDDT])=(0) AND datepart(minute,[ORPSTDDT])=(0) AND datepart(second,[ORPSTDDT])=(0) AND datepart(millisecond,[ORPSTDDT])=(0))),
   constraint RULE_4 check ((datepart(hour,[RVRSNGDT])=(0) AND datepart(minute,[RVRSNGDT])=(0) AND datepart(second,[RVRSNGDT])=(0) AND datepart(millisecond,[RVRSNGDT])=(0))),
   constraint RULE_5 check ((datepart(hour,[Tax_Date])=(0) AND datepart(minute,[Tax_Date])=(0) AND datepart(second,[Tax_Date])=(0) AND datepart(millisecond,[Tax_Date])=(0))),
   constraint RULE_6 check ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900))),
   constraint RULE_7 check ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
)
ON [PRIMARY]
go

/*==============================================================*/
/* Table: ecgl20000                                             */
/*==============================================================*/
create table ecgl20000 (
   OPENYEAR             smallint             not null,
   JRNENTRY             int                  not null,
   RCTRXSEQ             numeric(19, 5)       not null,
   SOURCDOC             char(11)             not null,
   REFRENCE             char(31)             not null,
   DSCRIPTN             char(31)             not null,
   TRXDATE              datetime             not null,
   TRXSORCE             char(13)             not null,
   ACTINDX              int                  not null,
   POLLDTRX             tinyint              not null,
   LASTUSER             char(15)             not null,
   LSTDTEDT             datetime             not null,
   USWHPSTD             char(15)             not null,
   ORGNTSRC             char(15)             not null,
   ORGNATYP             smallint             not null,
   QKOFSET              smallint             not null,
   SERIES               smallint             not null,
   ORTRXTYP             smallint             not null,
   ORCTRNUM             char(21)             not null,
   ORMSTRID             char(31)             not null,
   ORMSTRNM             char(65)             not null,
   ORDOCNUM             char(21)             not null,
   ORPSTDDT             datetime             not null,
   ORTRXSRC             char(13)             not null,
   ORIGDTASERIES        smallint             not null,
   ORIGSEQNUM           int                  not null,
   SEQNUMBR             int                  not null,
   DTA_GL_STATUS        smallint             not null,
   DTA_INDEX            numeric(19, 5)       not null,
   CURNCYID             char(15)             not null,
   CURRNIDX             smallint             not null,
   RATETPID             char(15)             not null,
   EXGTBLID             char(15)             not null,
   XCHGRATE             numeric(19, 7)       not null,
   EXCHDATE             datetime             not null,
   TIME1                datetime             not null,
   RTCLCMTD             smallint             not null,
   NOTEINDX             numeric(19, 5)       not null,
   ICTRX                tinyint              not null,
   ORCOMID              char(5)              not null,
   ORIGINJE             int                  not null,
   PERIODID             smallint             not null,
   CRDTAMNT             numeric(19, 5)       not null,
   DEBITAMT             numeric(19, 5)       not null,
   ORCRDAMT             numeric(19, 5)       not null,
   ORDBTAMT             numeric(19, 5)       not null,
   DOCDATE              datetime             not null,
   PSTGNMBR             int                  not null,
   PPSGNMBR             int                  not null,
   DENXRATE             numeric(19, 7)       not null,
   MCTRXSTT             smallint             not null,
   CORRESPONDINGUNIT    char(5)              not null,
   VOIDED               tinyint              not null,
   BACK_OUT_JE          int                  not null,
   BACK_OUT_JE_YEAR     smallint             not null,
   CORRECTING_JE        int                  not null,
   CORRECTING_JE_YEAR   smallint             not null,
   ORIGINAL_JE          int                  not null,
   ORIGINAL_JE_SEQ_NU   numeric(19, 5)       not null,
   ORIGINAL_JE_YEAR     smallint             not null,
   LEDGER_ID            smallint             not null,
   ADJUSTMENT_TRANSAC   tinyint              not null,
   DEX_ROW_TS           datetime             not null constraint DF__GL20000__DEX_ROW__7BB05806 default getutcdate(),
   DEX_ROW_ID           int                  not null,
   constraint PKGL20000 primary key nonclustered (DEX_ROW_ID)
         WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
   constraint CKT_ECGL20000 check (datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)),
   constraint RULE_8 check ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0))),
   constraint RULE_9 check ((datepart(hour,[LSTDTEDT])=(0) AND datepart(minute,[LSTDTEDT])=(0) AND datepart(second,[LSTDTEDT])=(0) AND datepart(millisecond,[LSTDTEDT])=(0))),
   constraint RULE_10 check ((datepart(hour,[ORPSTDDT])=(0) AND datepart(minute,[ORPSTDDT])=(0) AND datepart(second,[ORPSTDDT])=(0) AND datepart(millisecond,[ORPSTDDT])=(0))),
   constraint RULE_11 check ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900))),
   constraint RULE_12 check ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
)
ON [PRIMARY]
go

/*==============================================================*/
/* Table: ecgl30000                                             */
/*==============================================================*/
create table ecgl30000 (
   HSTYEAR              smallint             not null,
   JRNENTRY             int                  not null,
   RCTRXSEQ             numeric(19, 5)       not null,
   SOURCDOC             char(11)             not null,
   REFRENCE             char(31)             not null,
   DSCRIPTN             char(31)             not null,
   TRXDATE              datetime             not null,
   ACTINDX              int                  not null,
   TRXSORCE             char(13)             not null,
   POLLDTRX             tinyint              not null,
   LASTUSER             char(15)             not null,
   LSTDTEDT             datetime             not null,
   USWHPSTD             char(15)             not null,
   ORGNTSRC             char(15)             not null,
   ORGNATYP             smallint             not null,
   QKOFSET              smallint             not null,
   SERIES               smallint             not null,
   ORTRXTYP             smallint             not null,
   ORCTRNUM             char(21)             not null,
   ORMSTRID             char(31)             not null,
   ORMSTRNM             char(65)             not null,
   ORDOCNUM             char(21)             not null,
   ORPSTDDT             datetime             not null,
   ORTRXSRC             char(13)             not null,
   ORIGDTASERIES        smallint             not null,
   ORIGSEQNUM           int                  not null,
   SEQNUMBR             int                  not null,
   DTA_GL_STATUS        smallint             not null,
   DTA_INDEX            numeric(19, 5)       not null,
   CURNCYID             char(15)             not null,
   CURRNIDX             smallint             not null,
   RATETPID             char(15)             not null,
   EXGTBLID             char(15)             not null,
   XCHGRATE             numeric(19, 7)       not null,
   EXCHDATE             datetime             not null,
   TIME1                datetime             not null,
   RTCLCMTD             smallint             not null,
   NOTEINDX             numeric(19, 5)       not null,
   ICTRX                tinyint              not null,
   ORCOMID              char(5)              not null,
   ORIGINJE             int                  not null,
   PERIODID             smallint             not null,
   CRDTAMNT             numeric(19, 5)       not null,
   DEBITAMT             numeric(19, 5)       not null,
   ORCRDAMT             numeric(19, 5)       not null,
   ORDBTAMT             numeric(19, 5)       not null,
   DOCDATE              datetime             not null,
   PSTGNMBR             int                  not null,
   PPSGNMBR             int                  not null,
   DENXRATE             numeric(19, 7)       not null,
   MCTRXSTT             smallint             not null,
   CORRESPONDINGUNIT    char(5)              not null,
   VOIDED               tinyint              not null,
   BACK_OUT_JE          int                  not null,
   BACK_OUT_JE_YEAR     smallint             not null,
   CORRECTING_JE        int                  not null,
   CORRECTING_JE_YEAR   smallint             not null,
   ORIGINAL_JE          int                  not null,
   ORIGINAL_JE_SEQ_NU   numeric(19, 5)       not null,
   ORIGINAL_JE_YEAR     smallint             not null,
   LEDGER_ID            smallint             not null,
   ADJUSTMENT_TRANSAC   tinyint              not null,
   DEX_ROW_TS           datetime             not null constraint DF__GL30000__DEX_ROW__4183B671 default getutcdate(),
   DEX_ROW_ID           int                  not null,
   constraint PKGL30000 primary key nonclustered (DEX_ROW_ID)
         WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
   constraint CKT_ECGL30000 check (datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)),
   constraint RULE_13 check ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0))),
   constraint RULE_14 check ((datepart(hour,[LSTDTEDT])=(0) AND datepart(minute,[LSTDTEDT])=(0) AND datepart(second,[LSTDTEDT])=(0) AND datepart(millisecond,[LSTDTEDT])=(0))),
   constraint RULE_15 check ((datepart(hour,[ORPSTDDT])=(0) AND datepart(minute,[ORPSTDDT])=(0) AND datepart(second,[ORPSTDDT])=(0) AND datepart(millisecond,[ORPSTDDT])=(0))),
   constraint RULE_16 check ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900))),
   constraint RULE_17 check ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
)
ON [PRIMARY]
go

/*==============================================================*/
/* Table: ecglbalances                                          */
/*==============================================================*/
create table ecglbalances (
   trans_date           date                 null,
   trans_description    char(60)             null,
   gl_account           char(40)             null,
   reference            CHAR(60)             null,
   debit_amt            decimal(12,2)        null,
   credit_amt           decimal(12,2)        null,
   mth_label            char(10)             null
)
go

/*==============================================================*/
/* Table: ecgldetarc                                            */
/*==============================================================*/
create table ecgldetarc (
   comp_no              smallint             not null,
   applcode             char(2)              not null,
   journalcode          char(2)              not null,
   jrnl_no              int                  not null,
   post_month           char(8)              null,
   seq_number           numeric              identity,
   gl_account           char(40)             null,
   pseudo_no            int                  null,
   amount               decimal(11,2)        null,
   reference            char(10)             null,
   description1         char(25)             null,
   description2         char(25)             null,
   controlamt           decimal(11,2)        null,
   archive_date         datetime             not null,
   archive_userid       char(10)             not null,
   constraint PK_ECGLDETARC primary key nonclustered (comp_no, applcode, journalcode, jrnl_no, seq_number)
)
go

/*==============================================================*/
/* Index: ecgldetarcdup                                         */
/*==============================================================*/
create index ecgldetarcdup on ecgldetarc (
comp_no ASC,
applcode ASC,
journalcode ASC,
jrnl_no ASC,
post_month ASC,
seq_number ASC
)
go

/*==============================================================*/
/* Index: ecgldetarcpk                                          */
/*==============================================================*/
create unique index ecgldetarcpk on ecgldetarc (
comp_no ASC,
applcode ASC,
journalcode ASC,
jrnl_no ASC,
seq_number ASC
)
go

/*==============================================================*/
/* Table: ecglupdatedata                                        */
/*==============================================================*/
create table ecglupdatedata (
   comp_no              SMALLINT             not null,
   applcode             CHAR(2)              not null,
   journalcode          CHAR(2)              not null,
   jrnl_no              INTEGER              not null,
   post_month           CHAR(8)              not null,
   seq_number           INTEGER              not null,
   gl_account           CHAR(40)             null,
   pseudo_no            INTEGER              null,
   amount               DEC(11,2)            null,
   reference            CHAR(10)             null,
   description1         CHAR(25)             null,
   description2         CHAR(25)             null,
   constraint PK_ECGLUPDATEDATA primary key (comp_no, applcode, journalcode, jrnl_no, post_month, seq_number)
)
go

/*==============================================================*/
/* Index: ecglupdatedata_uidx                                   */
/*==============================================================*/
create unique index ecglupdatedata_uidx on ecglupdatedata (
comp_no ASC,
applcode ASC,
journalcode ASC,
jrnl_no ASC,
post_month ASC,
seq_number ASC
)
go

/*==============================================================*/
/* Table: ecgpcontrol                                           */
/*==============================================================*/
create table ecgpcontrol (
   seq_no               int                  not null,
   controlacct          char(40)             not null,
   nsfacct              char(40)             null,
   controlpseudo        int                  not null,
   new_format           char(15)             null,
   default_apacct       char(40)             null,
   default_puracct      char(40)             null,
   retailer_apacct      char(40)             null,
   retailer_puracct     char(40)             null,
   constraint PK_ECGPCONTROL primary key nonclustered (seq_no)
)
go

insert into ecgpcontrol values (1,'2-1000-1005-101',null,2,'144300000000000','2-1000-2205-109','2-1000-1100-101','2-1000-2205-104','2-1000-1100-104');

/*==============================================================*/
/* Table: ecgpjepending                                         */
/*==============================================================*/
create table ecgpjepending (
   APPLCODE             CHAR(2)              not null,
   JOURNALCODE          CHAR(2)              not null,
   JRNL_NO              INTEGER              not null,
   POST_MONTH           CHAR(8)              not null,
   SEQ_NUMBER           NUMERIC              identity,
   GL_ACCOUNT           CHAR(40)             null,
   AMOUNT               DEC(11,2)            null,
   REFERENCE            CHAR(10)             null,
   DESCRIPTION1         CHAR(25)             null,
   DESCRIPTION2         CHAR(25)             null,
   constraint PK_ECGPJEPENDING primary key nonclustered (APPLCODE, JOURNALCODE, JRNL_NO, POST_MONTH, SEQ_NUMBER)
)
go

/*==============================================================*/
/* Table: ecjeupdatedata                                        */
/*==============================================================*/
create table ecjeupdatedata (
   comp_no              SMALLINT             not null,
   applcode             CHAR(2)              not null,
   journalcode          CHAR(2)              not null,
   jrnl_no              INTEGER              not null,
   post_month           CHAR(8)              not null,
   seq_number           INTEGER              not null,
   gl_account           CHAR(40)             null,
   pseudo_no            INTEGER              null,
   amount               DEC(11,2)            null,
   reference            CHAR(10)             null,
   description1         CHAR(25)             null,
   description2         CHAR(25)             null,
   constraint PK_ECJEUPDATEDATA primary key (comp_no, applcode, journalcode, jrnl_no, post_month, seq_number)
)
go

/*==============================================================*/
/* Index: ecjeupdatedatapk                                      */
/*==============================================================*/
create unique index ecjeupdatedatapk on ecjeupdatedata (
comp_no ASC,
applcode ASC,
journalcode ASC,
jrnl_no ASC,
post_month ASC,
seq_number ASC
)
go

/*==============================================================*/
/* Table: ecjrnlcode                                            */
/*==============================================================*/
create table ecjrnlcode (
   applcode             char(3)              not null,
   journalcode          char(2)              not null,
   description          char(30)             not null,
   constraint PK_ECJRNLCODE primary key nonclustered (applcode, journalcode)
)
go


insert into ecjrnlcode values ('PB','MP'.'Market participant');
insert into ecjrnlcode values ('PB','IS'.'Invoice Settlement');
insert into ecjrnlcode values ('PB','DD'.'Deposit Distribution');
insert into ecjrnlcode values ('PB','RJ'.'Refund Journal');
insert into ecjrnlcode values ('PB','OI'.'Overdue Interest');
insert into ecjrnlcode values ('PB','LP'.'Late Payment');
insert into ecjrnlcode values ('PB','EC'.'Extra Charge');
insert into ecjrnlcode values ('PB','CR'.'Cash Receipt');
insert into ecjrnlcode values ('PB','BJ'.'Billing Journal');
insert into ecjrnlcode values ('PB','AJ'.'Adjustment Journal');

-- Other journals to mapped in Great Plains Smart Connect
insert into ecjrnlcode values ('PB','DB'.'Delayed Billing');
insert into ecjrnlcode values ('PB','DJ'.'Deffered AR');
insert into ecjrnlcode values ('PB','BR'.'Billing Registration');
insert into ecjrnlcode values ('PB','LO'.'Loans');
insert into ecjrnlcode values ('PB','AC'.'Automatic Clear');
insert into ecjrnlcode values ('PB','BT'.'Balance Transfer');
insert into ecjrnlcode values ('PB','WO'.'Write Off');
insert into ecjrnlcode values ('PB','AM'.'Arrears Management');

/*==============================================================*/
/* Index: ecjrnlcodepk                                          */
/*==============================================================*/
create unique index ecjrnlcodepk on ecjrnlcode (
applcode ASC,
journalcode ASC
)
go

/*==============================================================*/
/* Table: eckeyval                                              */
/*==============================================================*/
create table eckeyval (
   keyname              char(30)             not null,
   keyvalue             char(100)            null,
   constraint PK_ECKEYVAL primary key (keyname)
)
go


-- use in refund transactions to check for long address in alternate address table
insert into eckeyval values ('uselongaddress','Y');

-- populate description using ticker code RJ
insert into eckeyval values ('useticker','Y');

-- non retailer type
insert into eckeyval values ('nonretailer','cambridge');

-- address_type to use
insert into eckeyval values ('addresstype','LONG MAIL');

-- default non retailer description
insert into eckeyval values ('dfltnonretdesc','Credit Account');

-- transform cash receipt exceptions as journal genernal entries
-- possible values = Y or N
insert into eckeyval values ('makeexceptje','Y');

/*==============================================================*/
/* Table: ecpbgpcash                                            */
/*==============================================================*/
create table ecpbgpcash (
   comp_no              smallint             not null,
   applcode             char(2)              not null,
   journalcode          char(2)              not null,
   jrnl_no              int                  not null,
   post_month           char(8)              null,
   seq_number           int                  not null,
   gl_account           char(40)             null,
   pseudo_no            int                  null,
   amount               decimal(11,2)        null,
   reference            char(10)             null,
   description1         char(25)             null,
   description2         char(25)             null,
   controlamt           decimal(11,2)        null,
   constraint PK_ECPBGPCASH primary key nonclustered (comp_no, applcode, journalcode, jrnl_no, seq_number)
)
go

/*==============================================================*/
/* Index: ecpbgpcash_d1                                         */
/*==============================================================*/
create index ecpbgpcash_d1 on ecpbgpcash (
comp_no ASC,
applcode ASC,
journalcode ASC,
jrnl_no ASC,
post_month ASC,
seq_number ASC
)
go

/*==============================================================*/
/* Index: ecpbgpcash_u2                                         */
/*==============================================================*/
create unique index ecpbgpcash_u2 on ecpbgpcash (
comp_no ASC,
applcode ASC,
journalcode ASC,
jrnl_no ASC,
seq_number ASC
)
go

/*==============================================================*/
/* Table: ecpm10000                                             */
/*==============================================================*/
create table ecpm10000 (
   BACHNUMB             char(15)             not null,
   BCHSOURC             char(15)             not null,
   VCHNUMWK             char(17)             not null,
   VENDORID             char(15)             not null,
   DOCNUMBR             char(21)             not null,
   DOCTYPE              smallint             not null,
   SOURCDOC             char(11)             not null,
   DOCAMNT              numeric(19, 5)       not null,
   DOCDATE              datetime             not null,
   PSTGDATE             datetime             not null,
   VADDCDPR             char(15)             not null,
   VADCDTRO             char(15)             not null,
   PYMTRMID             char(21)             not null,
   TAXSCHID             char(15)             not null,
   DUEDATE              datetime             not null,
   DSCDLRAM             numeric(19, 5)       not null,
   DISCDATE             datetime             not null,
   PRCHAMNT             numeric(19, 5)       not null,
   CHRGAMNT             numeric(19, 5)       not null,
   CASHAMNT             numeric(19, 5)       not null,
   CAMCBKID             char(15)             not null,
   CDOCNMBR             char(21)             not null,
   CAMTDATE             datetime             not null,
   CAMPMTNM             char(21)             not null,
   CHEKAMNT             numeric(19, 5)       not null,
   CHAMCBID             char(15)             not null,
   CHEKDATE             datetime             not null,
   CAMPYNBR             char(21)             not null,
   CRCRDAMT             numeric(19, 5)       not null,
   CCAMPYNM             char(21)             not null,
   CHEKNMBR             char(21)             not null,
   CARDNAME             char(15)             not null,
   CCRCTNUM             char(21)             not null,
   CRCARDDT             datetime             not null,
   CURNCYID             char(15)             not null,
   CHEKBKID             char(15)             not null,
   TRXDSCRN             char(31)             not null,
   UN1099AM             numeric(19, 5)       not null,
   TRDISAMT             numeric(19, 5)       not null,
   TAXAMNT              numeric(19, 5)       not null,
   FRTAMNT              numeric(19, 5)       not null,
   TEN99AMNT            numeric(19, 5)       not null,
   MSCCHAMT             numeric(19, 5)       not null,
   PORDNMBR             char(21)             not null,
   SHIPMTHD             char(15)             not null,
   DISAMTAV             numeric(19, 5)       not null,
   DISTKNAM             numeric(19, 5)       not null,
   APDSTKAM             numeric(19, 5)       not null,
   WROFAMNT             numeric(19, 5)       not null,
   CURTRXAM             numeric(19, 5)       not null,
   TXENGCLD             tinyint              not null,
   PMWRKMSG             binary(4)            not null,
   PMDSTMSG             binary(4)            not null,
   GSTDSAMT             numeric(19, 5)       not null,
   PGRAMSBJ             smallint             not null,
   PPSAMDED             numeric(19, 5)       not null,
   PPSTAXRT             smallint             not null,
   PSTGSTUS             smallint             not null,
   POSTED               tinyint              not null,
   APPLDAMT             numeric(19, 5)       not null,
   VCHRNMBR             char(21)             not null,
   CNTRLTYP             smallint             not null,
   MODIFDT              datetime             not null,
   MDFUSRID             char(15)             not null,
   POSTEDDT             datetime             not null,
   PTDUSRID             char(15)             not null,
   NOTEINDX             numeric(19, 5)       not null,
   BKTFRTAM             numeric(19, 5)       not null,
   BKTMSCAM             numeric(19, 5)       not null,
   BKTPURAM             numeric(19, 5)       not null,
   PCHSCHID             char(15)             not null,
   FRTSCHID             char(15)             not null,
   MSCSCHID             char(15)             not null,
   PRINTED              tinyint              not null,
   PRCTDISC             smallint             not null,
   RETNAGAM             numeric(19, 5)       not null,
   ICTRX                tinyint              not null,
   ICDISTS              tinyint              not null,
   PMICMSGS             binary(4)            not null,
   Tax_Date             datetime             not null,
   PRCHDATE             datetime             not null,
   CORRCTN              tinyint              not null,
   SIMPLIFD             tinyint              not null,
   CORRNXST             tinyint              not null,
   VCHRNCOR             char(21)             not null,
   PMWRKMS2             binary(4)            not null,
   BNKRCAMT             numeric(19, 5)       not null,
   APLYWITH             tinyint              not null,
   Electronic           tinyint              not null,
   ECTRX                tinyint              not null,
   DocPrinted           tinyint              not null,
   TaxInvReqd           tinyint              not null,
   BackoutTradeDisc     numeric(19, 5)       not null,
   CBVAT                tinyint              not null,
   TEN99TYPE            smallint             not null,
   TEN99BOXNUMBER       smallint             not null,
   DEX_ROW_TS           datetime             not null constraint DF__PM10000__DEX_ROW__5B052800 default getutcdate(),
   DEX_ROW_ID           int                  identity(1,1),
   constraint PKPM10000 primary key nonclustered (BCHSOURC, BACHNUMB, VCHNUMWK)
         WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
   constraint CKT_ECPM10000 check (datepart(hour,[CAMTDATE])=(0) AND datepart(minute,[CAMTDATE])=(0) AND datepart(second,[CAMTDATE])=(0) AND datepart(millisecond,[CAMTDATE])=(0))
)
ON [PRIMARY]
go

/*==============================================================*/
/* Table: ecpm20000                                             */
/*==============================================================*/
create table ecpm20000 (
   VCHRNMBR             char(21)             not null,
   VENDORID             char(15)             not null,
   DOCTYPE              smallint             not null,
   DOCDATE              datetime             not null,
   DOCNUMBR             char(21)             not null,
   DOCAMNT              numeric(19, 5)       not null,
   CURTRXAM             numeric(19, 5)       not null,
   DISTKNAM             numeric(19, 5)       not null,
   DISCAMNT             numeric(19, 5)       not null,
   DSCDLRAM             numeric(19, 5)       not null,
   BACHNUMB             char(15)             not null,
   TRXSORCE             char(13)             not null,
   BCHSOURC             char(15)             not null,
   DISCDATE             datetime             not null,
   DUEDATE              datetime             not null,
   PORDNMBR             char(21)             not null,
   TEN99AMNT            numeric(19, 5)       not null,
   WROFAMNT             numeric(19, 5)       not null,
   DISAMTAV             numeric(19, 5)       not null,
   TRXDSCRN             char(31)             not null,
   UN1099AM             numeric(19, 5)       not null,
   BKTPURAM             numeric(19, 5)       not null,
   BKTFRTAM             numeric(19, 5)       not null,
   BKTMSCAM             numeric(19, 5)       not null,
   VOIDED               tinyint              not null,
   HOLD                 tinyint              not null,
   CHEKBKID             char(15)             not null,
   DINVPDOF             datetime             not null,
   PPSAMDED             numeric(19, 5)       not null,
   PPSTAXRT             smallint             not null,
   PGRAMSBJ             smallint             not null,
   GSTDSAMT             numeric(19, 5)       not null,
   POSTEDDT             datetime             not null,
   PTDUSRID             char(15)             not null,
   MODIFDT              datetime             not null,
   MDFUSRID             char(15)             not null,
   PYENTTYP             smallint             not null,
   CARDNAME             char(15)             not null,
   PRCHAMNT             numeric(19, 5)       not null,
   TRDISAMT             numeric(19, 5)       not null,
   MSCCHAMT             numeric(19, 5)       not null,
   FRTAMNT              numeric(19, 5)       not null,
   TAXAMNT              numeric(19, 5)       not null,
   TTLPYMTS             numeric(19, 5)       not null,
   CURNCYID             char(15)             not null,
   PYMTRMID             char(21)             not null,
   SHIPMTHD             char(15)             not null,
   TAXSCHID             char(15)             not null,
   PCHSCHID             char(15)             not null,
   FRTSCHID             char(15)             not null,
   MSCSCHID             char(15)             not null,
   PSTGDATE             datetime             not null,
   DISAVTKN             numeric(19, 5)       not null,
   CNTRLTYP             smallint             not null,
   NOTEINDX             numeric(19, 5)       not null,
   PRCTDISC             smallint             not null,
   RETNAGAM             numeric(19, 5)       not null,
   ICTRX                tinyint              not null,
   Tax_Date             datetime             not null,
   PRCHDATE             datetime             not null,
   CORRCTN              tinyint              not null,
   SIMPLIFD             tinyint              not null,
   BNKRCAMT             numeric(19, 5)       not null,
   APLYWITH             tinyint              not null,
   Electronic           tinyint              not null,
   ECTRX                tinyint              not null,
   DocPrinted           tinyint              not null,
   TaxInvReqd           tinyint              not null,
   VNDCHKNM             char(65)             not null,
   BackoutTradeDisc     numeric(19, 5)       not null,
   CBVAT                tinyint              not null,
   VADCDTRO             char(15)             not null,
   TEN99TYPE            smallint             not null,
   TEN99BOXNUMBER       smallint             not null,
   DEX_ROW_TS           datetime             not null constraint DF__PM20000__DEX_ROW__6A276FFF default getutcdate(),
   DEX_ROW_ID           int                  identity(1,1),
   constraint PKPM20000 primary key nonclustered (DOCTYPE, VCHRNMBR)
         WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
   constraint CKT_ECPM20000 check (datepart(hour,[DINVPDOF])=(0) AND datepart(minute,[DINVPDOF])=(0) AND datepart(second,[DINVPDOF])=(0) AND datepart(millisecond,[DINVPDOF])=(0))
)
ON [PRIMARY]
go

/*==============================================================*/
/* Table: ecpubsglmap                                           */
/*==============================================================*/
create table ecpubsglmap (
   pubs_gl              char(40)             not null,
   gp_gl                char(40)             not null,
   constraint PK_ECPUBSGLMAP primary key nonclustered (pubs_gl)
)
go

/*==============================================================*/
/* Table: ecpubsgperror                                         */
/*==============================================================*/
create table ecpubsgperror (
   seq_no               numeric              identity,
   error_date           datetime             not null,
   error_msg            char(200)            not null,
   constraint PK_ECPUBSGPERROR primary key nonclustered (seq_no)
)
go

/*==============================================================*/
/* Table: ecrefundarc                                           */
/*==============================================================*/
create table ecrefundarc (
   seq_no               int                  not null,
   rec_type             char(1)              null,
   utility_type         char(1)              null,
   account_no           int                  null,
   acct_name            char(30)             null,
   address_1            char(30)             null,
   address_2            char(30)             null,
   address_3            char(20)             null,
   city                 char(20)             null,
   province             char(5)              null,
   postal_zip           char(10)             null,
   postal_mode          char(4)              null,
   final                char(1)              null,
   amount               decimal(12,2)        null,
   pseudo               int                  null,
   appl_code            char(2)              null,
   jrnl_code            char(2)              null,
   jrnl_no              int                  null,
   chq_date             datetime             null,
   comment_             char(25)             null,
   sysdate_             datetime             null,
   systime              char(5)              null,
   sysuser              char(8)              null,
   loaded_by_ap         smallint             null,
   direct_deposit       char(1)              null,
   bank_transt          char(15)             null,
   bank_accont          char(15)             null,
   archived_date        datetime             null,
   archived_by          char(10)             null,
   constraint PK_ECREFUNDARC primary key nonclustered (seq_no)
)
go

/*==============================================================*/
/* Table: ecrjnonretailer                                       */
/*==============================================================*/
create table ecrjnonretailer (
   seq_no               integer              null,
   account_no           integer              null,
   acct_name            char(30)             null,
   address_1            char(30)             null,
   address_2            char(30)             null,
   address_3            char(20)             null,
   city                 char(20)             null,
   province             char(5)              null,
   postal_zip           char(10)             null,
   postal_mode          char(4)              null,
   amount               decimal(12,2)        null,
   jrnl_no              integer              null,
   chq_date             datetime             null,
   glap                 char(40)             null,
   glpur                char(40)             null,
   description          char(60)             null,
   refund_type          char(10)             null,
   address_populated    char(30)             null,
   last_occupant_code   integer              null,
   vendorid             char(15)             null
)
go

/*==============================================================*/
/* Table: ecrjretailer                                          */
/*==============================================================*/
create table ecrjretailer (
   seq_no               integer              null,
   account_no           integer              null,
   acct_name            char(30)             null,
   address_1            char(30)             null,
   address_2            char(30)             null,
   address_3            char(20)             null,
   city                 char(20)             null,
   province             char(5)              null,
   postal_zip           char(10)             null,
   postal_mode          char(4)              null,
   amount               decimal(12,2)        null,
   jrnl_no              integer              null,
   chq_date             datetime             null,
   glap                 char(40)             null,
   glpur                char(40)             null,
   description          char(60)             null,
   refund_type          char(10)             null,
   address_populated    char(30)             null,
   last_occupant_code   integer              null,
   vendorid             char(15)             null
)
go

/*==============================================================*/
/* Table: gl_update_data                                        */
/*==============================================================*/
create table gl_update_data (
   comp_no              SMALLINT             not null,
   applcode             CHAR(2)              not null,
   journalcode          CHAR(2)              not null,
   jrnl_no              INTEGER              not null,
   post_month           CHAR(8)              not null,
   seq_number           SERIAL               not null,
   GL__COMP_NO          SMALLINT             null,
   GL__APPLCODE         CHAR(2)              null,
   GL__JOURNALCODE      CHAR(2)              null,
   GL__JRNL_NO          INTEGER              null,
   gl_account           CHAR(40)             null,
   pseudo_no            INTEGER              null,
   amount               DEC(11,2)            null,
   reference            CHAR(10)             null,
   description1         CHAR(25)             null,
   description2         CHAR(25)             null,
   constraint PK_GL_UPDATE_DATA primary key (comp_no, applcode, journalcode, jrnl_no, post_month, seq_number)
)
go

/*==============================================================*/
/* Index: gl_update_data1                                       */
/*==============================================================*/
create unique index gl_update_data1 on gl_update_data (
comp_no ASC,
applcode ASC,
journalcode ASC,
jrnl_no ASC,
post_month ASC,
seq_number ASC
)
go

/*==============================================================*/
/* Table: glsvdata                                              */
/*==============================================================*/
create table glsvdata (
   comp_no              smallint             not null,
   archive_date         datetime             null,
   archive_time         datetime hour to second null,
   sequence_            numeric              identity,
   applcode             char(2)              null,
   journalcode          char(2)              null,
   jrnl_no              integer              null,
   post_month           char(8)              null,
   run_date             date                 null,
   run_time             char(8)              null,
   gl_account           char(40)             null,
   pseudo_no            integer              null,
   amount               decimal(11,2)        null,
   reference            char(10)             null,
   description1         char(25)             null,
   description2         char(25)             null,
   proc_yn              char(1)              null
)
go

/*==============================================================*/
/* Index: ix_svdata3                                            */
/*==============================================================*/
create unique index ix_svdata3 on glsvdata (
sequence_ ASC
)
go

/*==============================================================*/
/* Index: ix_svdata4                                            */
/*==============================================================*/
create index ix_svdata4 on glsvdata (
archive_date ASC
)
go

/*==============================================================*/
/* Table: pu_account                                            */
/*==============================================================*/
create table pu_account (
   account_no           INTEGER              not null,
   occupant_code        SMALLINT             not null,
   name                 CHAR(30)             null,
   serv_street_no       DEC(5)               null,
   serv_street_mod      CHAR(1)              null,
   serv_street          CHAR(20)             null,
   serv_unit            CHAR(5)              null,
   serv_region          CHAR(15)             null,
   serv_city            CHAR(20)             null,
   serv_province        CHAR(5)              null,
   serv_postal_zip      CHAR(12)             null,
   lot_no               CHAR(4)              null,
   plan_no              CHAR(8)              null,
   mail_addr1           CHAR(60)             null,
   mail_addr2           CHAR(30)             null,
   mail_city            CHAR(20)             null,
   mail_province        CHAR(5)              null,
   mail_postal_zip      CHAR(12)             null,
   mail_postal_mode     CHAR(5)              null,
   prev_addr1           CHAR(60)             null,
   prev_addr2           CHAR(30)             null,
   prev_city            CHAR(20)             null,
   prev_province        CHAR(5)              null,
   prev_postal_zip      CHAR(12)             null,
   account_type         CHAR(20)             null,
   cycle_               SMALLINT             null,
   route                SMALLINT             null,
   walk                 SMALLINT             null,
   home_phone           CHAR(13)             null,
   business_phone       CHAR(13)             null,
   tenant_owner         CHAR(1)              null,
   bill_copies          SMALLINT             null,
   soc_security_no      CHAR(12)             null,
   positive_id          CHAR(25)             null,
   credit_card          CHAR(25)             null,
   living_unit_elec     SMALLINT             null,
   sic_elec             INTEGER              null,
   meter_loc_elec       CHAR(10)             null,
   large_user_elec      CHAR(1)              null,
   trans_loc_elec       CHAR(6)              null,
   meter_side_elec      CHAR(1)              null,
   trans_allow_elec     CHAR(1)              null,
   trans_loss_elec      CHAR(1)              null,
   serv_size_elec       CHAR(6)              null,
   cable_elec           CHAR(3)              null,
   entrance_elec        CHAR(6)              null,
   serv_type_elec       CHAR(1)              null,
   flat_consump_elec    INTEGER              null,
   flat_qty_elec        SMALLINT             null,
   flat_demand_elec     DEC(6,1)             null,
   capacity_ind         DEC(7,2)             null,
   water_heater_rent    SMALLINT             null,
   water_heater_flat    SMALLINT             null,
   water_heater_pur     SMALLINT             null,
   sentinel_light       SMALLINT             null,
   time_of_use          CHAR(1)              null,
   addl_units_wtr       SMALLINT             null,
   sewage_discount      DEC(5,2)             null,
   hydrants             SMALLINT             null,
   assess               INTEGER              null,
   bill_units_wtr       CHAR(1)              null,
   water_source         CHAR(10)             null,
   meter_loc_wtr        CHAR(10)             null,
   meter_book_wtr       CHAR(10)             null,
   read_comment1        CHAR(60)             null,
   read_comment2        CHAR(60)             null,
   indicator_no         SMALLINT             null,
   keys_required        CHAR(20)             null,
   warning_message      CHAR(60)             null,
   sic_post             CHAR(1)              null,
   landlord_no          INTEGER              null,
   debtor_no            INTEGER              null,
   network_cd_e         CHAR(10)             null,
   heat_source          CHAR(1)              null,
   network_cd_w         CHAR(10)             null,
   alpha_code           CHAR(10)             null,
   primary_line         CHAR(1)              null,
   correspondence       CHAR(1)              null,
   cent_meter_elec      CHAR(1)              null,
   cent_meter_water     CHAR(1)              null,
   nxt_name             CHAR(30)             null,
   actual_billed_date   DATETIME YEAR TO SECOND null,
   start_month          SMALLINT             null,
   reason_1             CHAR(25)             null,
   reason_2             CHAR(25)             null,
   discount_perc        SMALLINT             null,
   credit_rating        CHAR(1)              null,
   cr_rate_date         DATETIME YEAR TO SECOND null,
   remote               CHAR(1)              null,
   last_date_update     DATETIME YEAR TO SECOND null,
   date_created         DATETIME YEAR TO SECOND null,
   created_by           CHAR(8)              null,
   time_use_on          DATETIME YEAR TO SECOND null,
   time_use_off         DATETIME YEAR TO SECOND null,
   post_mod_rev         CHAR(1)              null,
   over_ride_ins        CHAR(1)              null,
   over_ride_dvr        CHAR(1)              null,
   constraint PK_PU_ACCOUNT primary key (account_no, occupant_code)
)
go

/*==============================================================*/
/* Index: ix_cycle2                                             */
/*==============================================================*/
create unique index ix_cycle2 on pu_account (
cycle_ ASC,
route ASC,
walk ASC,
account_no ASC,
occupant_code ASC
)
go

/*==============================================================*/
/* Index: ix_account2                                           */
/*==============================================================*/
create unique index ix_account2 on pu_account (
account_no ASC,
occupant_code ASC
)
go

/*==============================================================*/
/* Index: idx_acctpostalzip2                                    */
/*==============================================================*/
create index idx_acctpostalzip2 on pu_account (
mail_postal_zip ASC
)
go

/*==============================================================*/
/* Index: ix_thesiaddr2                                         */
/*==============================================================*/
create index ix_thesiaddr2 on pu_account (
serv_street_no ASC,
serv_street ASC,
serv_city ASC,
read_comment1 ASC,
soc_security_no ASC
)
go

/*==============================================================*/
/* Index: ix287_92                                              */
/*==============================================================*/
create index ix287_92 on pu_account (
debtor_no ASC
)
go

/*==============================================================*/
/* Index: ix_alpha2                                             */
/*==============================================================*/
create index ix_alpha2 on pu_account (
alpha_code ASC
)
go

/*==============================================================*/
/* Index: ix_name2                                              */
/*==============================================================*/
create index ix_name2 on pu_account (
name ASC
)
go

/*==============================================================*/
/* Index: ix_street2                                            */
/*==============================================================*/
create index ix_street2 on pu_account (
serv_street ASC,
serv_street_no ASC
)
go

/*==============================================================*/
/* Index: ix_translo_elec2                                      */
/*==============================================================*/
create index ix_translo_elec2 on pu_account (
trans_loc_elec ASC
)
go

/*==============================================================*/
/* Table: pu_acct_addr                                          */
/*==============================================================*/
create table pu_acct_addr (
   debtor_no            INTEGER              null,
   account_no           INTEGER              null,
   occupant_code        SMALLINT             null,
   seq_id               INTEGER              null,
   address_type         CHAR(20)             null,
   name_1               CHAR(40)             null,
   name_2               CHAR(40)             null,
   address_1            CHAR(40)             null,
   address_2            CHAR(40)             null,
   city                 CHAR(30)             null,
   prov_state           CHAR(5)              null,
   postal_zip           CHAR(10)             null,
   effective_from       DATETIME YEAR TO SECOND null,
   effective_to         DATETIME YEAR TO SECOND null,
   rollnumber           CHAR(30)             null,
   owner_no             INTEGER              null
)
go

/*==============================================================*/
/* Index: pk1acctaddr2                                          */
/*==============================================================*/
create index pk1acctaddr2 on pu_acct_addr (
account_no ASC,
occupant_code ASC,
seq_id ASC
)
go

/*==============================================================*/
/* Index: pk2acctaddr2                                          */
/*==============================================================*/
create index pk2acctaddr2 on pu_acct_addr (
debtor_no ASC,
seq_id ASC
)
go

/*==============================================================*/
/* Index: pk3acctaddr2                                          */
/*==============================================================*/
create index pk3acctaddr2 on pu_acct_addr (
rollnumber ASC,
owner_no ASC
)
go

/*==============================================================*/
/* Table: pu_stat_det                                           */
/*==============================================================*/
create table pu_stat_det (
   utility_type         CHAR(1)              not null,
   stat_code            CHAR(6)              not null,
   cat_code             CHAR(2)              not null,
   cat_pseudo           INTEGER              null
)
go

/*==============================================================*/
/* Index: ix_stat_det2                                          */
/*==============================================================*/
create unique index ix_stat_det2 on pu_stat_det (
stat_code ASC,
cat_code ASC
)
go

/*==============================================================*/
/* View: ecActiveJrnlUsed                                       */
/*==============================================================*/
create view ecActiveJrnlUsed as
select
go

/*==============================================================*/
/* View: ecExceptionsCheck                                      */
/*==============================================================*/
create view ecExceptionsCheck as
select journalcode, jrnl_no, seq_number, post_month, gl_account, pseudo_no,amount,reference,description1,description2
from gl_update_data
where description2 = 'EXCEPTION'
or description2 = 'duppostedcurr'
or description2 = 'dupnotposted'
or description2 = 'duppostedprior'
or description2 = 'invalidgl'
go

alter table PB_UPDATE_DATA
   add constraint FK_PB_UPDAT_REFERENCE_PB_UPDAT foreign key (COMP_NO, APPLCODE, JOURNALCODE, JRNL_NO)
      references PB_UPDATE_CNTL (COMP_NO, APPLCODE, JOURNALCODE, JRNL_NO)
go

alter table ecCustAttrib
   add constraint FK_ECCUSTAT_REFERENCE_ECATTRIB foreign key (flag_id)
      references ecAttribDef (flag_id)
go

alter table ecjrnlcode
   add constraint FK_ECJRNLCO_REFERENCE_ECAPPLCO foreign key (applcode)
      references ecapplcode (applcode)
go

alter table gl_update_data
   add constraint FK_GL_UPDAT_REFERENCE_GL_UPDAT foreign key (GL__COMP_NO, GL__APPLCODE, GL__JOURNALCODE, GL__JRNL_NO)
      references GL_UPDATE_CNTL (COMP_NO, APPLCODE, JOURNALCODE, JRNL_NO)
go


create procedure ecBackupPendingJrnl as

begin

   declare @l_compno smallint,
           @l_appl char(2),
           @l_journalcode char(2),
           @l_journalno integer,
           @l_postmonth char(8),
           @l_seqno integer,
           @l_glaccount char(40),
           @l_pseudo integer,
           @l_amount decimal(11,2),
           @l_ref char(10),
           @l_desc1 char(25),
           @l_desc2 char(25),
           @l_controlamt decimal(11,2);
           
   truncate table ecglupdatedata;
  
   declare curs_master cursor for
      select comp_no,applcode,journalcode,jrnl_no,post_month,seq_number,gl_account,pseudo_no,amount,reference,description1,description2
          from gl_update_data 
          order by comp_no,applcode,journalcode,jrnl_no,post_month,seq_number ;
   open curs_master;
   fetch next from curs_master into @l_compno,@l_appl,@l_journalcode,@l_journalno,@l_postmonth,@l_seqno,@l_glaccount,@l_pseudo,@l_amount,@l_ref,@l_desc1,@l_desc2 ;
   while @@fetch_status = 0
   begin
       
       insert into ecglupdatedata values (@l_compno,@l_appl,@l_journalcode,@l_journalno,@l_postmonth,@l_seqno,@l_glaccount,@l_pseudo,@l_amount,@l_ref,@l_desc1,@l_desc2);
              
       fetch next from curs_master into @l_compno,@l_appl,@l_journalcode,@l_journalno,@l_postmonth,@l_seqno,@l_glaccount,@l_pseudo,@l_amount,@l_ref,@l_desc1,@l_desc2 ;
          
   end;
   close curs_master;
   deallocate curs_master;

end
go


create procedure ecFixMapping  

as 

begin

   declare @l_today date,
           @l_old1 char(40),
           @l_old2 char(40),
           @l_new char(40);
             
   declare curs_master cursor for
      select pubs_gl, gp_gl
      from ecpubsglmap ;
   open curs_master;
   fetch next from curs_master into @l_old1, @l_new ;   
   while @@fetch_status = 0
   begin

      set @l_old2 = null;
      
      if len(@l_old1) = 5 set @l_old2 = '000' + @l_old1;
      if len(@l_old1) = 6 set @l_old2 = '00' + @l_old1;
      if len(@l_old1) = 7 set @l_old2 = '0' + @l_old1;

      if @l_old2 is not null 
      begin
         update ecpubsglmap set pubs_gl = @l_old2 where pubs_gl = @l_old1;
      end;
            
      fetch next from curs_master into @l_old1, @l_new ;   

   end;
   close curs_master;
   deallocate curs_master;
      
end;
go


create procedure ecGLMigration  

as 

begin

   declare @l_today date,
           @l_errmsg char(100),
           @l_pubsgln char(40),
           @l_gpgl char(40),
           @l_count smallint,
           @l_pseudo integer,
           @l_pubsglc char(40),
           @l_numsubs smallint,
           @l_used smallint,
           @l_newsurplus char(40),
           @l_newsuspense char(40),
           @l_newinterfund char(40),
           @l_orgsurplus char(40),
           @l_orgsuspense char(40),
           @l_newformat char(15),
           @l_description char(40),
           @l_orginterfund char(40),
           @l_newpseudo integer;
             
   set @l_today = getdate();

   truncate table ecpubsgperror;
   
   declare curs_master cursor for
      select pseudo_no, n_account, c_account,  n_num_subs
      from glmaster 
      where c_account is not null 
      and n_account is not null
      order by pseudo_no ;
   open curs_master;
   fetch next from curs_master into @l_pseudo, @l_pubsgln, @l_pubsglc, @l_numsubs;   
   while @@fetch_status = 0
   begin
      if @l_numsubs > 0
         begin
            -- GL accounts with number of subs greater than zero are controlled accounts
            -- they can be removed from glmaster table
            delete from glmaster where pseudo_no = @l_pseudo;
            set @l_errmsg = 'Account ' + @l_pseudo + ' has subs, so deleting from glmaster';
            insert into ecpubsgperror (error_date,error_msg) values (@l_today,@l_errmsg);
         end;
      else
         begin
            select @l_count = count(*)
               from ecpubsglmap
               where pubs_gl = @l_pubsgln ; 
            if @l_count = 0
               begin
                  set @l_errmsg = 'NorthStar GL Account not found in GreatPlains GL Translation Table : ' + @l_pubsgln;
                  insert into ecpubsgperror (error_date,error_msg) values (@l_today,@l_errmsg);
                  delete from glmaster where pseudo_no = @l_pseudo;
               end;
            else
               begin
                  select @l_gpgl = gp_gl
                     from ecpubsglmap
                     where pubs_gl = @l_pubsgln;
                  select @l_count = count(*)
                     from glmaster
                     where n_account = @l_gpgl ;                   
                  if @l_count > 0
                  begin
                     select @l_newpseudo = pseudo_no 
                        from glmaster
                        where n_account = @l_gpgl ;
                     set @l_errmsg = 'GP GL Account already mapped in NorthStar ' + rtrim(@l_gpgl) + ' Need to replace ' + STR(@l_pseudo) + ' with ' + str(@l_newpseudo);
                     insert into ecpubsgperror (error_date,error_msg) values (@l_today,@l_errmsg);
                     delete from glmaster where pseudo_no = @l_pseudo;
                     update pu_stat_det set cat_pseudo = @l_newpseudo where cat_pseudo = @l_pseudo ;
                  end;
                  else
                  begin
                     update glmaster
                         set c_account = @l_gpgl,
                             n_account = @l_gpgl               
                         where pseudo_no = @l_pseudo;
                  end;
               end; 
         end;
         
      fetch next from curs_master into @l_pseudo, @l_pubsgln, @l_pubsglc, @l_numsubs;  

   end;
   close curs_master;
   deallocate curs_master;

   set @l_errmsg = 'Update glcontrol table';
   insert into ecpubsgperror (error_date,error_msg) values (@l_today,@l_errmsg);
            
   -- update glcontrol table
   select @l_orgsurplus=surplus_acct, @l_orgsuspense=suspense, @l_orginterfund=interfund_acct
       from glcontrol
       where comp_no = 1 ;
   select @l_newsurplus=gp_gl
       from ecpubsglmap
       where pubs_gl = @l_orgsurplus ;
   select @l_newsuspense=gp_gl
       from ecpubsglmap
       where pubs_gl = @l_orgsuspense ;
   select @l_newinterfund=gp_gl
       from ecpubsglmap
       where pubs_gl = @l_orginterfund ;

   update glcontrol
      set surplus_acct = @l_newsurplus,
          suspense = @l_newsuspense,
          interfund_acct = @l_newinterfund
      where comp_no =  1;

   select @l_newformat=new_format
      from ecgpcontrol
      where seq_no =  1;
  
   update glcontrol
      set account_format = @l_newformat
      where comp_no = 1 ;
      
end;
go


create procedure ecmovegldetail @p_user char(10) 

as 

begin

   declare @l_today date = getdate(),
           @l_time datetime = getdate(), 
           @l_strtime char(8),
           @l_found smallint,
           @l_nsmaxseq integer,
           @l_errmsg char(100),
           @l_count smallint,
           @l_compno smallint,
           @l_appl char(2),
           @l_journalcode char(2),
           @l_journalno integer,
           @l_postmonth char(8),
           @l_seqno integer,
           @l_glaccount char(40),
           @l_pseudo integer,
           @l_amount decimal(11,2),
           @l_ref char(10),
           @l_desc1 char(25),
           @l_desc2 char(25),
           @l_controlamt decimal(11,2);
   
   -- field from hcapload table
   declare @a_seq_no               INTEGER,
           @a_rec_type             CHAR(1),
           @a_utility_type         CHAR(1),
           @a_account_no           INTEGER,
           @a_acct_name            CHAR(30),
           @a_address_1            CHAR(30),
           @a_address_2            CHAR(30),
           @a_address_3            CHAR(20),
           @a_city                 CHAR(20),
           @a_province             CHAR(5),
           @a_postal_zip           CHAR(10),
           @a_postal_mode          CHAR(4),
           @a_final                CHAR(1),
           @a_amount               DEC(12,2),
           @a_pseudo               INTEGER,
           @a_appl_code            CHAR(2),
           @a_jrnl_code            CHAR(2),
           @a_jrnl_no              INTEGER,
           @a_chq_date             DATETIME,
           @a_comment_             CHAR(25),
           @a_sysdate_             DATETIME,
           @a_systime              CHAR(5),
           @a_sysuser              CHAR(8),
           @a_loaded_by_ap         SMALLINT,
           @a_direct_deposit       CHAR(1),
           @a_bank_transt          CHAR(15),
           @a_bank_accont          CHAR(15),

   -- prepare glsvdata record
   @h_compno               integer,
   @h_archive_date         datetime,
   @h_archive_time         datetime,
   @h_sequence_            integer,
   @h_applcode             char(2),
   @h_journalcode          char(2),
   @h_jrnl_no              integer,
   @h_post_month           char(8),
   @h_run_date             datetime,
   @h_run_time             char(8),
   @h_gl_account           char(40),
   @h_pseudo_no            integer,
   @h_amount               decimal(11,2),
   @h_reference            char(10),
   @h_description1         char(25),
   @h_description2         char(25),
   @h_proc_yn              char(1),
   
   @l_clrjrnlcode          char(2),
   @l_clrjrnlno            integer;
   
   print 'Begin NorthStar archiving process...';
 
   set @l_strtime  = substring(convert(varchar(30),@l_time,120),12,20);
  
   select @l_nsmaxseq = lastserial
      from serialreg
      where tablename = 'glsvdata' ;
   if @l_nsmaxseq is null
   begin
      set @l_nsmaxseq = 1;  
   end;
   else
   begin
      set @l_nsmaxseq = @l_nsmaxseq + 1;
   end;
        
   print 'Archiving all non C/R from gl_update_data table...';
   declare curs_clrnoncr cursor for
          select distinct comp_no,applcode,journalcode,jrnl_no
          from gl_update_data
          where applcode = 'PB' 
          and journalcode <> 'CR'
          order by comp_no,applcode,journalcode,jrnl_no ;
   open curs_clrnoncr;
   fetch next from curs_clrnoncr into @l_compno,@l_appl,@l_journalcode,@l_journalno ;
   while @@fetch_status = 0
   begin
       delete from ecgldetarc where comp_no=@l_compno and applcode=@l_appl and journalcode=@l_journalcode and jrnl_no=@l_journalno ;
       delete from glsvdata where comp_no=@l_compno and applcode=@l_appl and journalcode=@l_journalcode and jrnl_no=@l_journalno ;
       fetch next from curs_clrnoncr into @l_compno,@l_appl,@l_journalcode,@l_journalno ;
   end;
   close curs_clrnoncr;
   deallocate curs_clrnoncr;
   declare curs_updatedata cursor for
      select comp_no,applcode,journalcode,jrnl_no,post_month,seq_number,gl_account,pseudo_no,amount,reference,description1,description2
           from gl_update_data 
           where applcode = 'PB' 
           and journalcode <> 'CR'
           and (description2 is null or description2='' or description2=' ')
           order by comp_no,applcode,journalcode,jrnl_no,post_month,seq_number ;
   set @l_found=0;
   open curs_updatedata;
   fetch next from curs_updatedata into @l_compno,@l_appl,@l_journalcode,@l_journalno,@l_postmonth,@l_seqno,@l_glaccount,@l_pseudo,@l_amount,@l_ref,@l_desc1,@l_desc2;
   while @@fetch_status = 0
   begin
       insert into ecgldetarc values (@l_compno,@l_appl,@l_journalcode,@l_journalno,@l_postmonth,@l_glaccount,@l_pseudo,@l_amount,@l_ref,@l_desc1, @l_desc2,0,@l_today,@p_user);
       set @h_compno = @l_compno;
       set @h_archive_date = @l_today;
       set @h_archive_time = @l_time;
       set @h_sequence_ = @l_nsmaxseq;
       set @h_applcode = @l_appl;
       set @h_journalcode = @l_journalcode;
       set @h_jrnl_no = @l_journalno;
       set @h_post_month = @l_postmonth;
       set @h_run_date = @l_today;
       set @h_run_time = @l_strtime;
       set @h_gl_account = @l_glaccount;
       set @h_pseudo_no = @l_pseudo;
       set @h_amount = @l_amount;
       set @h_reference = @l_ref;
       set @h_description1 = @l_desc1;
       set @h_description2 = 'ecaliber'
       set @h_proc_yn = 'Y';
       insert into glsvdata values (@h_compno,@h_archive_date,@h_archive_time,@h_sequence_,@h_applcode,@h_journalcode,@h_jrnl_no,@h_post_month,
                                    @h_run_date,@h_run_time,@h_gl_account,@h_pseudo_no,@h_amount,@h_reference,@h_description1,@h_description2,@h_proc_yn);
       set @l_nsmaxseq = @l_nsmaxseq + 1;
              
       fetch next from curs_updatedata into @l_compno,@l_appl,@l_journalcode,@l_journalno,@l_postmonth,@l_seqno,@l_glaccount,@l_pseudo,@l_amount,@l_ref,@l_desc1,@l_desc2;
       set @l_found=1;
   end;
   close curs_updatedata;
   deallocate curs_updatedata;
   if @l_found = 1 
   begin    
      set @l_nsmaxseq = @l_nsmaxseq - 1;
      update serialreg 
         set lastserial = @l_nsmaxseq
         where tablename = 'glsvdata' ;
   end;
      
   -- clear all GL data as they have been copied into archive table
   declare curs_clrmaster cursor for
      select journalcode,jrnl_no from gl_update_data where description2 is null or description2 = ' ' ;
   open curs_clrmaster ;
   fetch curs_clrmaster into @l_clrjrnlcode, @l_clrjrnlno ;
   while @@fetch_status = 0
   begin
      delete from gl_update_cntl where journalcode = @l_clrjrnlcode and jrnl_no = @l_clrjrnlno ;
      fetch curs_clrmaster into @l_clrjrnlcode, @l_clrjrnlno ;
   end;
   close curs_clrmaster;
   deallocate curs_clrmaster;
   delete from gl_update_data where description2 is null or description2 = ' ';
   
   -- transfer hcapload table to it's archive table
   print 'Archving all A/P refunds in NorthStar...';
   declare curs_hcapload cursor for
       select seq_no, rec_type, utility_type, account_no, acct_name,
              address_1, address_2, address_3, city, province, postal_zip,  postal_mode,
              final, amount, pseudo, appl_code, jrnl_code, jrnl_no, chq_date, comment_,
              sysdate_, systime, sysuser, loaded_by_ap, direct_deposit, bank_transt,
              bank_accont
       from hcapload ;
   open curs_hcapload;
   fetch next from curs_hcapload into @a_seq_no, @a_rec_type, @a_utility_type, @a_account_no, @a_acct_name,
                                      @a_address_1, @a_address_2, @a_address_3, @a_city, @a_province, @a_postal_zip,  @a_postal_mode,
                                      @a_final, @a_amount, @a_pseudo, @a_appl_code, @a_jrnl_code, @a_jrnl_no, @a_chq_date, @a_comment_,
                                      @a_sysdate_, @a_systime, @a_sysuser, @a_loaded_by_ap, @a_direct_deposit, @a_bank_transt,
                                      @a_bank_accont;
   while @@fetch_status = 0
   begin
       select count(*)
          from ecrefundarc
          where seq_no = @a_seq_no ;
       if @@ROWCOUNT > 0
          delete from ecrefundarc where seq_no = @a_seq_no ;
       insert into ecrefundarc values (@a_seq_no, @a_rec_type, @a_utility_type, @a_account_no, @a_acct_name,
                                       @a_address_1, @a_address_2, @a_address_3, @a_city, @a_province, @a_postal_zip,  @a_postal_mode,
                                       @a_final, @a_amount, @a_pseudo, @a_appl_code, @a_jrnl_code, @a_jrnl_no, @a_chq_date, @a_comment_,
                                       @a_sysdate_ , @a_systime, @a_sysuser, @a_loaded_by_ap, @a_direct_deposit, @a_bank_transt,
                                       @a_bank_accont,@l_today,@p_user);
       fetch next from curs_hcapload into @a_seq_no, @a_rec_type, @a_utility_type, @a_account_no, @a_acct_name,
                                          @a_address_1, @a_address_2, @a_address_3, @a_city, @a_province, @a_postal_zip,  @a_postal_mode,
                                          @a_final, @a_amount, @a_pseudo, @a_appl_code, @a_jrnl_code, @a_jrnl_no, @a_chq_date, @a_comment_,
                                          @a_sysdate_, @a_systime, @a_sysuser, @a_loaded_by_ap, @a_direct_deposit, @a_bank_transt,
                                          @a_bank_accont;
   end;
   close curs_hcapload;
   deallocate curs_hcapload;
      
   delete from hcapload where 1=1;
   delete from ecrjnonretailer where 1=1;
   delete from ecrjretailer where 1=1;
   
   --clear CR journals :  
   print 'Archiving all C/R from NorthStar...';
   declare curs_clrcr cursor for
          select distinct comp_no,applcode,journalcode,jrnl_no
          from ecpbgpcash
          order by comp_no,applcode,journalcode,jrnl_no ;
   open curs_clrcr;
   fetch next from curs_clrcr into @l_compno,@l_appl,@l_journalcode,@l_journalno ;
   while @@fetch_status = 0
   begin
       delete from ecgldetarc where comp_no=@l_compno and applcode=@l_appl and journalcode=@l_journalcode and jrnl_no=@l_journalno ;
       delete from glsvdata where comp_no=@l_compno and applcode=@l_appl and journalcode=@l_journalcode and jrnl_no=@l_journalno ;
       fetch next from curs_clrcr into @l_compno,@l_appl,@l_journalcode,@l_journalno ;
   end;
   close curs_clrcr;
   deallocate curs_clrcr;
   declare curs_cashreceipt cursor for
          select comp_no,applcode,journalcode,jrnl_no,post_month,seq_number,gl_account,pseudo_no,amount,reference,description1,description2,controlamt
          from ecpbgpcash
          order by comp_no,applcode,journalcode,jrnl_no,post_month,seq_number ;
   open curs_cashreceipt;
   fetch next from curs_cashreceipt into @l_compno,@l_appl,@l_journalcode,@l_journalno,@l_postmonth,@l_seqno,@l_glaccount,@l_pseudo,@l_amount,@l_ref,@l_desc1,@l_desc2,@l_controlamt ;
   set @l_found=0;
   set @l_nsmaxseq = @l_nsmaxseq + 1;
   while @@fetch_status = 0
   begin
       insert into ecgldetarc values (@l_compno,@l_appl,@l_journalcode,@l_journalno,@l_postmonth,@l_glaccount,@l_pseudo,@l_amount,@l_ref,@l_desc1, @l_desc2, @l_controlamt, @l_today, @p_user);
       
       set @h_compno = @l_compno;
       set @h_archive_date = @l_today;
       set @h_archive_time = @l_time;
       set @h_sequence_ = @l_nsmaxseq;
       set @h_applcode = @l_appl;
       set @h_journalcode = @l_journalcode;
       set @h_jrnl_no = @l_journalno;
       set @h_post_month = @l_postmonth;
       set @h_run_date = @l_today;
       set @h_run_time = @l_strtime;
       set @h_gl_account = @l_glaccount;
       set @h_pseudo_no = @l_pseudo;
       set @h_amount = @l_amount;
       set @h_reference = @l_ref;
       set @h_description1 = @l_desc1;
       set @h_description2 = 'ecaliber'
       set @h_proc_yn = 'Y';
       
       insert into glsvdata values (@h_compno,@h_archive_date,@h_archive_time,@h_sequence_,@h_applcode,@h_journalcode,@h_jrnl_no,@h_post_month,
                                    @h_run_date,@h_run_time,@h_gl_account,@h_pseudo_no,@h_amount,@h_reference,@h_description1,@h_description2,@h_proc_yn);
       set @l_nsmaxseq = @l_nsmaxseq + 1;
       
       fetch next from curs_cashreceipt into @l_compno,@l_appl,@l_journalcode,@l_journalno,@l_postmonth,@l_seqno,@l_glaccount,@l_pseudo,@l_amount,@l_ref,@l_desc1,@l_desc2,@l_controlamt ;

       set @l_found=1;
              
   end;
   close curs_cashreceipt;
   deallocate curs_cashreceipt;
   
   delete from ecpbgpcash where 1=1;

   print 'Archiving general journal entries...';
   declare curs_clrgj cursor for
          select distinct comp_no,applcode,journalcode,jrnl_no
          from ecjeupdatedata
          order by comp_no,applcode,journalcode,jrnl_no ;
   open curs_clrgj;
   fetch next from curs_clrgj into @l_compno,@l_appl,@l_journalcode,@l_journalno ;
   while @@fetch_status = 0
   begin
       delete from ecgldetarc where comp_no=@l_compno and applcode=@l_appl and journalcode=@l_journalcode and jrnl_no=@l_journalno ;
       delete from glsvdata where comp_no=@l_compno and applcode=@l_appl and journalcode=@l_journalcode and jrnl_no=@l_journalno ; 
       fetch next from curs_clrgj into @l_compno,@l_appl,@l_journalcode,@l_journalno ;
   end;
   close curs_clrgj;
   deallocate curs_clrgj;
   declare curs_gj cursor for
      select comp_no,applcode,journalcode,jrnl_no,post_month,seq_number,gl_account,pseudo_no,amount,reference,description1,description2
           from ecjeupdatedata 
           order by comp_no,applcode,journalcode,jrnl_no,post_month,seq_number ;
   set @l_found=0;
   open curs_gj;
   fetch next from curs_gj into @l_compno,@l_appl,@l_journalcode,@l_journalno,@l_postmonth,@l_seqno,@l_glaccount,@l_pseudo,@l_amount,@l_ref,@l_desc1,@l_desc2;
   while @@fetch_status = 0
   begin
          
       set @l_desc2 = null;
       
       insert into ecgldetarc values (@l_compno,@l_appl,@l_journalcode,@l_journalno,@l_postmonth,@l_glaccount,@l_pseudo,@l_amount,@l_ref,@l_desc1, @l_desc2,0,@l_today,@p_user);

       set @h_compno = @l_compno;
       set @h_archive_date = @l_today;
       set @h_archive_time = @l_time;
       set @h_sequence_ = @l_nsmaxseq;
       set @h_applcode = @l_appl;
       set @h_journalcode = @l_journalcode;
       set @h_jrnl_no = @l_journalno;
       set @h_post_month = @l_postmonth;
       set @h_run_date = @l_today;
       set @h_run_time = @l_strtime;
       set @h_gl_account = @l_glaccount;
       set @h_pseudo_no = @l_pseudo;
       set @h_amount = @l_amount;
       set @h_reference = @l_ref;
       set @h_description1 = @l_desc1;
       set @h_description2 = 'ecaliber'
       set @h_proc_yn = 'Y';
       
       insert into glsvdata values (@h_compno,@h_archive_date,@h_archive_time,@h_sequence_,@h_applcode,@h_journalcode,@h_jrnl_no,@h_post_month,
                                    @h_run_date,@h_run_time,@h_gl_account,@h_pseudo_no,@h_amount,@h_reference,@h_description1,@h_description2,@h_proc_yn);
       set @l_nsmaxseq = @l_nsmaxseq + 1;
       
       set @l_found=1;
              
       fetch next from curs_gj into @l_compno,@l_appl,@l_journalcode,@l_journalno,@l_postmonth,@l_seqno,@l_glaccount,@l_pseudo,@l_amount,@l_ref,@l_desc1,@l_desc2; 
       
   end;
   close curs_gj;
   deallocate curs_gj;
   delete from ecjeupdatedata where 1=1;
       
   if @l_found=1
   begin  
      set @l_nsmaxseq = @l_nsmaxseq - 1;
      update serialreg 
         set lastserial = @l_nsmaxseq
         where tablename = 'glsvdata' ;
   end;
       
end
go


create procedure ecJobScheduler  @p_custid integer

as 

begin

   declare   @l_ocebactive char(1),
             @l_ocebday smallint,
             @l_ocebmth smallint,
             @l_ocebyear smallint,
             @l_today date,
             @l_rundate date,
             @l_integration char(1),
             @l_mthword char(3),
             @l_count integer,
             @l_seqid integer,
             @l_ok smallint,
             @l_yes smallint,
             @l_postmonth char(8),
             @l_cmd char(100),
             @c_today char(10),
             @l_asofdate date,
             @l_yr smallint,
             @l_mth smallint,
             @l_day smallint,
             @l_msg char(100),
             @l_gpintegration char(1),
             @l_skip smallint;
   
set @l_seqid = 1;

-- clear the customer log
delete from ecCustLog where cust_id = @p_custid;

-- get today's date
select @l_asofdate=asofdate
   from ecControlr
   where seq_no = 1;
if @l_asofdate is null
   begin
   set @l_today = getdate();
   end;
else 
   begin
   set @l_today = @l_asofdate;
   end;

-- check to see if customer is integrated with GP
select @l_gpintegration=flag_value
   from ecCustAttrib
   where cust_id = @p_custid and flag_id = 5;
if @l_gpintegration = 'Y'
   begin
   insert into ecCustLog values (@p_custid, @l_seqid,'Archive and clear Pubs Data for GP Integration ran as requested');
   set @l_seqid = @l_seqid + 1;
   -- used to archive G: and AP pending data and to clear active tables
   execute dbo.ecmovegldetail 'root' ;
   end;
else
   begin
      insert into ecCustLog values (@p_custid, @l_seqid, 'Archive and clear Pubs Data for GP Integration did not run as requested');
      set @l_seqid = @l_seqid + 1;
   end;
   
end;
go


create procedure ecLoadHfinsGLBal()

   define l_glacct char(40);
   define l_debit decimal(12,2);
   define l_credit decimal(12,2);
   define l_jrnlno integer;
   define l_postmonth char(8);
   define l_desc1 char(30);
   define l_desc2 char(30);
   define l_reference char(30);
   define l_amount decimal(12,2);
    
   let l_jrnlno = 1;
   let l_reference = null;
   let l_desc1 = "Hfins Balance Import";
   let l_desc2 = null;
    
       -- reset GPjepending table
   delete from GPjepending  where 1=1;
       
   -- create journal for month 1
   let l_postmonth = "JUL/2011" ;
   foreach select gl_account, debit_amt debit, credit_amt credit
           into l_glacct, l_debit, l_credit
           from ecglbalances
           where mth_label = l_postmonth
       if round(l_debit) = 0 then
          let l_amount = l_credit * -1;
       else
          let l_amount = l_debit;
       end if;
       insert into ecgpjepending values ("GL","GJ",l_jrnlno,l_postmonth,0,l_glacct,l_amount,l_reference,l_desc1,l_desc2);
   end foreach;
             
   -- create journal for montth 2
   let l_jrnlno = l_jrnlno + 1;
   let l_postmonth = "AUG/2011" ;
   foreach select gl_account, debit_amt debit, credit_amt credit
           into l_glacct, l_debit, l_credit
           from ecglbalances
           where mth_label = l_postmonth
       if round(l_debit) = 0 then
          let l_amount = l_credit * -1;
       else
          let l_amount = l_debit;
       end if;
       insert into ecgpjepending values ("GL","GJ",l_jrnlno,l_postmonth,0,l_glacct,l_amount,l_reference,l_desc1,l_desc2);
   end foreach;
   
   -- create journal for month 3
   let l_jrnlno = l_jrnlno + 1;
   let l_postmonth = "SEP/2011" ;
   foreach select gl_account, debit_amt debit, credit_amt credit
           into l_glacct, l_debit, l_credit
           from ecglbalances
           where mth_label = l_postmonth
       if round(l_debit) = 0 then
          let l_amount = l_credit * -1;
       else
          let l_amount = l_debit;
       end if;
       insert into ecgpjepending values ("GL","GJ",l_jrnlno,l_postmonth,0,l_glacct,l_amount,l_reference,l_desc1,l_desc2);
   end foreach;

end procedure;
go


create procedure ecMapStatCodes 

as

declare @l_statcode char(6),
        @l_utility char(1),
        @l_category char(2),
        @l_old integer,
        @l_new integer;

begin

   declare curs_master cursor for
      select stat_code, utility_type, category, old_pseudo, new_pseudo
      from ecStatsMapping
      order by stat_code, utility_type, category, old_pseudo;
    open curs_master;
    fetch next from curs_master into @l_statcode, @l_utility, @l_category, @l_old, @l_new ;
    while @@fetch_status = 0
    begin
       print 'updating pseudo ' + @l_statcode + '-' + @l_utility + '-'  + @l_category + '-' + str(@l_old) + ' to ' + str(@l_new);
       update pu_stat_det
          set cat_pseudo = @l_new
          where stat_code = @l_statcode 
          and utility_type = @l_utility
          and cat_code = @l_category
          and cat_pseudo = @l_old ;  
       fetch next from curs_master into @l_statcode, @l_utility, @l_category, @l_old, @l_new ;  
    end;
    close curs_master;
    deallocate curs_master;

end
go


create procedure ecPrepRefunds 

as

begin

 
  -- Script:  ecPrepRefunds
  -- Author:  Daniel O. Seguin
  -- Date:    2012/01/18 
  
  declare @l_seqno integer,
          @l_useoccupant integer,
          @l_addresspop char(30),
          @l_useaddresstype char(20),
          @l_final char(1),
          @l_dfltnonretdesc char(60),
          @l_account integer,
          @l_acctname char(30),
          @l_address1 char(30),
          @l_address2 char(30),
          @l_address3 char(20),
          @l_city char(20),
          @l_prov char(5),
          @l_pcode char(10),
          @l_pmode char(4),
          @l_amount decimal(12,2),
          @l_jrnlno integer,
          @l_chqdate date,
          @l_glap char(40),
          @l_glpur char(40),
          @l_dfltap char(40),
          @l_dfltpur char(40),
          @l_retap char(40),
          @l_retpur char(40),
          @l_description char(60),
          @l_count integer,
          @l_longaddr char(1),
          @l_usetickler char(1),
          @l_ticklermsg char(50),
          @l_nonretailmethod char(10),
          @l_tickermsg char(50),
          @l_maxoccupant integer,
          @l_remote char(1),
          @l_shipname1 char(40),
          @l_shipname2 char(40),
          @l_subaddr1 char(40),
          @l_subaddr2 char(40),
          @l_subaddr3 char(40),
          @l_subcity char(30),
          @l_subprov char(5),
          @l_subzip char(10),
          @l_refundtype char(10),
          @l_servstrno integer,
          @l_servstrname char(20),
          @l_strunit char(5),
          @l_strcity char(20),
          @strregion char(15),
          @strprov char(5),
          @strzip char(12),
          @l_vendorid char(15);
  
  select @l_longaddr=keyvalue
     from eckeyval
     where keyname = 'uselongaddress' ;
  if @l_longaddr is null
  begin
     set @l_longaddr = 'N';
  end;

  select @l_usetickler=keyvalue
     from eckeyval
     where keyname = 'useticker' ;
  if @l_usetickler is null
  begin
     set @l_usetickler = 'N';
  end;

  select @l_nonretailmethod=keyvalue
     from eckeyval
     where keyname = 'nonretailer' ;
  if @l_nonretailmethod is null
  begin
     set @l_nonretailmethod = 'DEFAULT';
  end;
  
  select @l_useaddresstype=keyvalue
     from eckeyval
     where keyname = 'addresstype' ;
  if @l_longaddr is null
  begin
     set @l_useaddresstype = 'DEFAULT';
     set @l_longaddr = 'N';
  end;
  
  select @l_dfltnonretdesc=keyvalue
     from eckeyval
     where keyname = 'dfltnonretdesc' ;
  if @l_dfltnonretdesc is null
  begin
     set @l_dfltnonretdesc = 'Credit Account';
  end;
    
  -- get default AP and Purchase GL Accounts
  select @l_dfltap = default_apacct, @l_dfltpur = default_puracct, @l_retap = retailer_apacct, @l_retpur = retailer_puracct
     from ecgpcontrol
     where seq_no = 1;
  if @l_dfltap is null or @l_dfltpur is null or @l_retap is null or @l_retpur is null
  begin
     print 'Default GL Accounts not defined in CIStoGP Interface Control';
     return;
  end;
  
  -- prepare retailer refunds
  truncate table ecrjretailer;
  declare curs_retailer cursor for
     select max(seq_no) as seq_no, account_no, acct_name, address_1, address_2,
           address_3, city, province, postal_zip, postal_mode, sum(amount) as amount,
           jrnl_no, chq_date
           from hcapload
           where account_no in
           (select account_no
           from purtlrsh 
           where rtlrid like 'ER%'
           )
           group by account_no, acct_name, address_1, address_2, address_3, city, province,
           postal_zip,postal_mode, jrnl_no, chq_date ;
 open curs_retailer;
 fetch next from curs_retailer into @l_seqno, @l_account, @l_acctname, @l_address1, @l_address2, @l_address3,
                                    @l_city, @l_prov, @l_pcode,@l_pmode, @l_amount, @l_jrnlno, @l_chqdate ;
 while @@fetch_status = 0 
 begin

       -- get AP GL Account
       select @l_count = count(*)
          from gl_update_data
          where applcode = 'PB' 
          and journalcode = 'RJ'
          and jrnl_no = @l_jrnlno 
          and amount < 0 ;
       if @l_count > 1
       begin
          set @l_glap = @l_retap;
       end;
       else
       begin
          select distinct @l_glap = gl_account
            from gl_update_data
            where applcode = 'PB' 
            and journalcode = 'RJ'
            and jrnl_no = @l_jrnlno 
            and amount < 0 ;
            if @l_glap is null
            begin
               set @l_glap = @l_retap;
            end;
       end;
       
       -- get PURCHASE GL Account
       select @l_count = count(*)
          from gl_update_data
          where applcode = 'PB' 
          and journalcode = 'RJ'
          and jrnl_no = @l_jrnlno 
          and amount > 0 ;
       if @l_count > 1
       begin
          set @l_glpur = @l_retpur;
       end;
       else
       begin
          select distinct @l_glpur = gl_account
            from gl_update_data
            where applcode = 'PB' 
            and journalcode = 'RJ'
            and jrnl_no = @l_jrnlno 
            and amount > 0 ;
            if @l_glpur is null
            begin
               set @l_glpur = @l_retpur;
            end;
       end;
       
       if @l_glpur is null or @l_glap is null break;
     
       set @l_description = 'NS AP-RETAILER REFUND RJ' + str(@l_jrnlno);
       set @l_refundtype = 'DFLT';
       set @l_addresspop = 'mailingaddress';
             
       select @l_maxoccupant=max(occupant_code) 
          from pu_account
          where account_no = @l_account;
       if @l_maxoccupant is null 
       begin
          set @l_maxoccupant = 0;
       end;
       if @l_maxoccupant < 10
       begin
          set @l_vendorid = trim(str(l_account)) + "0" + trim(str(l_maxoccupant));
       end;
       else
       begin
          set @l_vendorid = trim(str(l_account)) + trim(str(l_maxoccupant));
       end;
   
       insert into ecrjretailer values (@l_seqno,@l_account,@l_acctname,@l_address1,@l_address2,@l_address3,@l_city,@l_prov,
                                           @l_pcode,@l_pmode,@l_amount,@l_jrnlno,@l_chqdate,@l_glap,@l_glpur,@l_description,@l_refundtype,@l_addresspop,@l_maxoccupant,@l_vendorid);
       
       fetch next from curs_retailer into @l_seqno, @l_account, @l_acctname, @l_address1, @l_address2, @l_address3,
                                           @l_city, @l_prov, @l_pcode,@l_pmode, @l_amount, @l_jrnlno, @l_chqdate ;

 end;
 close curs_retailer;
 deallocate curs_retailer;

  -- prepare non retailer refunds
  truncate table ecrjnonretailer;
  declare curs_nonretailer cursor for
     select max(seq_no) as seq_no, account_no, acct_name, address_1, address_2,
           address_3, city, province, postal_zip, postal_mode, sum(amount) as amount,
           jrnl_no, chq_date, final
           from hcapload
           where account_no not in
           (select account_no
           from purtlrsh 
           where rtlrid not like 'ER%'
           )
           group by account_no, acct_name, address_1, address_2, address_3, city, province,
           postal_zip,postal_mode, jrnl_no, chq_date, final ;
 open curs_nonretailer;
 fetch next from curs_nonretailer into @l_seqno, @l_account, @l_acctname, @l_address1, @l_address2, @l_address3,
                                    @l_city, @l_prov, @l_pcode,@l_pmode, @l_amount, @l_jrnlno, @l_chqdate, @l_final ;
 while @@fetch_status = 0 
 begin

      -- get AP GL Account
      select @l_count = count(*)
          from gl_update_data
          where applcode = 'PB' 
          and journalcode = 'RJ'
          and jrnl_no = @l_jrnlno 
          and amount < 0 ;
       if @l_count > 1
       begin
          set @l_glap = @l_dfltap;
       end;
       else
       begin
          select distinct @l_glap = gl_account
            from gl_update_data
            where applcode = 'PB' 
            and journalcode = 'RJ'
            and jrnl_no = @l_jrnlno 
            and amount < 0 ;
          if @l_glap is null
          begin
            set @l_glap = @l_dfltap;
          end;
       end;
       
       -- get PURCHASE GL Account
       select @l_count = count(*)
          from gl_update_data
          where applcode = 'PB' 
          and journalcode = 'RJ'
          and jrnl_no = @l_jrnlno 
          and amount > 0 ;
       if @l_count > 1
       begin
          set @l_glpur = @l_dfltpur;
       end;
       else
       begin
          select distinct @l_glpur = gl_account
            from gl_update_data
            where applcode = 'PB' 
            and journalcode = 'RJ'
            and jrnl_no = @l_jrnlno 
            and amount > 0 ;
          if @l_glpur is null
          begin
             set @l_glpur = @l_dfltpur;
          end;
       end;
    
       if @l_glpur is null or @l_glap is null break;
       
       if @l_longaddr = 'Y'
       begin
          -- overwrite the mailing address with the LONG MAILING ADDRESS address type if available for account and occupant
          select @l_maxoccupant=max(occupant_code) 
              from pu_account
              where account_no = @l_account;
          if @l_final = '1' 
          begin
             -- since this account is final account, get the long address record for the previous occupant
             set @l_useoccupant = @l_maxoccupant - 1;          
          end;
          else
          begin
             set @l_useoccupant = @l_maxoccupant;
          end;
          
          -- reset the alternate address
          set @l_subaddr1 = null;
          set @l_subaddr2 = null;
          set @l_subcity = null;
          set @l_subprov = null;
          set @l_subzip = null;
          
          select @l_shipname1=name_1, @l_shipname2=name_2, @l_subaddr1=address_1, @l_subaddr2=address_2, @l_subcity=city, @l_subprov=prov_state, @l_subzip=postal_zip
             from pu_acct_addr
             where account_no = @l_account and occupant_code = @l_useoccupant and address_type = @l_useaddresstype ;
          if @l_subaddr1 is not null 
          begin
              -- substitute the mailind address from hcapload table with this alternate address
              set @l_acctname = @l_shipname1;
              set @l_address1 = @l_shipname2;
              set @l_address2 = @l_subaddr1;
              set @l_address3 = @l_subaddr2;
              set @l_city = @l_subcity;
              set @l_prov = @l_subprov;
              set @l_pcode = @l_subzip;
              set @l_addresspop = 'longaddress';
          end;
          else
          begin
             set @l_addresspop = 'mailingaddress';
          end;
       end;
       
       if @l_usetickler = 'Y'
       begin
             if @l_nonretailmethod = 'cambridge' 
             begin
                -- get service address and remote flag from pu_account for the latest occupant_code
                select @l_maxoccupant=max(occupant_code) 
                   from pu_account
                   where account_no = @l_account;
                select @l_remote=remote, @l_servstrno=serv_street_no, @l_servstrname=serv_street, @l_strunit=serv_unit, @l_strcity=serv_city, @strregion=serv_region, @strprov=serv_province, @strzip=serv_postal_zip
                    from pu_account
                    where account_no = @l_account 
                    and occupant_code = @l_maxoccupant ;
                if @l_remote = 'F' or @l_remote = 'M' 
                begin
                   set @l_refundtype = 'GEN'
                end;
                else
                begin
                   set @l_refundtype = 'CIS'
                end;
                if @l_refundtype = 'GEN' 
                begin
                   set @l_description = '-Generation- ' + ltrim(str(@l_servstrno)) + ' ' + @l_servstrname;
                end;
                else
                begin
                   declare curs_getticklers cursor for
                      select description
                      from tick_list
                      where code = 'RJ' and account_no=@l_account and s_date <= @l_chqdate and e_date >= @l_chqdate ;
                   open curs_getticklers;
                   fetch next from curs_getticklers into @l_tickermsg;
                   while @@fetch_status = 0 
                   begin
                      -- For each RJ tickler there should be only one per account for given start and end date
                      -- but to prevent sub query error returning two rows a loop is used
                      -- to get only the first record found                    
                      break;
                   end;
                   close curs_getticklers
                   deallocate curs_getticklers
  
                   if @l_tickermsg is null
                   begin
                      set @l_description = @l_dfltnonretdesc;
                   end;
                   else
                   begin
                      set @l_description = @l_tickermsg;                 
                   end;
                   
                end;
             end;
             else
             begin
                set @l_refundtype = 'DFLT';
                set @l_description = 'Non Retailer refund';
                set @l_maxoccupant = 0;
             end;
          end;
       else
       begin
           if @l_nonretailmethod = 'DEFAULT'
           begin
              set @l_refundtype = 'DFLT';
              set @l_description = 'Non Retailer refund';
              set @l_maxoccupant = 0;
           end;             
       end;
       
       if @l_maxoccupant < 10
       begin
          set @l_vendorid = trim(str(l_account)) + "0" + trim(str(l_ooccupant));
       end;
       else
       begin
          set @l_vendorid = trim(str(l_account)) + trim(str(l_ooccupant));
       end;

       insert into ecrjnonretailer values (@l_seqno,@l_account,@l_acctname,@l_address1,@l_address2,@l_address3,@l_city,@l_prov,
                                           @l_pcode,@l_pmode,@l_amount,@l_jrnlno,@l_chqdate,@l_glap,@l_glpur,@l_description,@l_refundtype,@l_addresspop,@l_maxoccupant,@l_vendorid);
       
       fetch next from curs_nonretailer into @l_seqno, @l_account, @l_acctname, @l_address1, @l_address2, @l_address3,
                                             @l_city, @l_prov, @l_pcode,@l_pmode, @l_amount, @l_jrnlno, @l_chqdate, @l_final ;

 end;
 close curs_nonretailer;
 deallocate curs_nonretailer;
  
end;
go


create procedure ecPrepareCashForGP 

as

begin

   declare @l_count smallint,
           @l_procexceptions char(1),
           @l_jeptr integer,
           @l_ctrlamt decimal(11,2),
           @l_compno smallint,
           @l_applcode char(2),
           @l_jourcode char(2),
           @l_journo integer,
           @l_postmonth char(8),
           @l_seqno integer,
           @l_glacct char(40),
           @l_pseudo integer,
           @l_amount decimal(11,2),
           @l_ref char(10),
           @l_desc1 char(25),
           @l_desc2 char(25),
           @l_controlacct char(40),
           @l_controlpseudo integer,
           @l_cashinserted smallint;
      
   truncate table ecpbgpcash;
   truncate table ecjeupdatedata;
   
   select @l_procexceptions=keyvalue 
      from eckeyval
      where keyname = 'makeexceptje' ;
   if @l_procexceptions is null
   begin
      set @l_procexceptions = 'N';
   end;
         
   -- get the GL control account alias the cash GL Account
   select @l_controlacct=controlacct, @l_controlpseudo=controlpseudo
      from ecgpcontrol
      where seq_no = 1;
   if @l_controlacct is null return;

   -- only grab the credit amounts from pubs /  northstar
   
   set @l_seqno = 1;
   set @l_jeptr = 1;
   
   declare curs_master cursor for 
      select comp_no, applcode, journalcode, jrnl_no, post_month, gl_account, pseudo_no, sum(amount), reference, description1, description2
      from gl_update_data
      where applcode = 'PB'
      and journalcode = 'CR'
      and gl_account <> @l_controlacct
      and (description2 is null or description2 = '')
      group by comp_no, applcode, journalcode, jrnl_no, post_month, gl_account, pseudo_no, reference, description1, description2 
      order by comp_no, applcode, journalcode, jrnl_no, post_month, gl_account, pseudo_no, reference, description1, description2 ;
   open curs_master;
   fetch next from curs_master into @l_compno, @l_applcode, @l_jourcode, @l_journo, @l_postmonth, @l_glacct, @l_pseudo, @l_amount, @l_ref, @l_desc1, @l_desc2 ;
   while @@fetch_status = 0
   begin 
      if @l_amount <> 0
      begin       
         if @l_amount > 0
         begin 
            -- we have another debit amount, so send to exception         
            if @l_procexceptions = 'Y'
            begin 
               update gl_update_data
                  set description2 = "MOVETOGJ"
                  where comp_no = @l_compno
                  and applcode = @l_applcode
                  and journalcode = @l_jourcode
                  and jrnl_no = @l_journo;
               continue foreach;
            end;
            else
            begin
               update gl_update_data
                  set description2 = 'EXCEPTION'
                  where comp_no = @l_compno
                  and applcode = @l_applcode
                  and journalcode = @l_jourcode
                  and jrnl_no = @l_journo;
               continue foreach;
            end;
         else
         begin
            set @l_ctrlamt = null;
            select @l_ctrlamt=amount
               from gl_update_data
               where applcode = @l_applcode
               and journalcode = @l_jourcode
               and jrnl_no = @l_journo
               and gl_account = @l_controlacct
               and amount > 0 ;
            if @l_ctrlamt is null
            begin 
               if @l_procexceptions = 'Y'
               begin       
                  update gl_update_data
                     set description2 = 'MOVETOGJ'
                     where comp_no = @l_compno
                     and applcode = @l_applcode
                     and journalcode = @l_jourcode
                     and jrnl_no = @l_journo;
               end;
               else
               begin
                  update gl_update_data
                     set description2 = 'EXCEPTION'
                     where comp_no = @l_compno
                     and applcode = @l_applcode
                     and journalcode = @l_jourcode
                     and jrnl_no = @l_journo;
               end;
            end;
            else
            begin
               insert into ecpbgpcash values (@l_compno,@l_applcode,@l_jourcode,@l_journo, @l_postmonth, @l_seqno, @l_glacct, @l_pseudo, @l_amount, @l_ref, @l_desc1, @l_desc2, @l_ctrlamt); 
               set @l_seqno = @l_seqno + 1;
            end;
         end;
      end;
      fetch next from curs_master into @l_compno, @l_applcode, @l_jourcode, @l_journo, @l_postmonth, @l_glacct, @l_pseudo, @l_amount, @l_ref, @l_desc1, @l_desc2 ;
   end;
   close curs_master;
   deallocate curs_master;

   -- insert in the control amount in the Cash GL Account
   declare curs_control cursor for
      select comp_no, applcode, journalcode, jrnl_no, post_month, gl_account, pseudo_no, amount, reference, description1, description2
      from gl_update_data
      where applcode = 'PB'
      and journalcode = 'CR'
      and gl_account = @l_controlacct 
      and (description2 is null or description2 = ' ')
      order by comp_no, applcode, journalcode, jrnl_no, post_month, gl_account, pseudo_no, reference, description1, description2 ;
  open curs_control;
  fetch next from curs_control into @l_compno, @l_applcode, @l_jourcode, @l_journo, @l_postmonth, @l_glacct, @l_pseudo, @l_amount, @l_ref, @l_desc1, @l_desc2 ;
  while @@fetch_status = 0
  begin
     if @l_amount <> 0
     begin
        insert into ecpbgpcash values (@l_compno,@l_applcode,@l_jourcode,@l_journo, @l_postmonth, @l_seqno, @l_glacct, @l_pseudo, @l_amount, @l_ref, 'CASH RECEIPTS', 'CONTROL AMOUNT', 0); 
        set @l_seqno = @l_seqno + 1;
     end;;
     fetch next from curs_control into @l_compno, @l_applcode, @l_jourcode, @l_journo, @l_postmonth, @l_glacct, @l_pseudo, @l_amount, @l_ref, @l_desc1, @l_desc2 ;
  end;
  close curs_control;
  deallocate curs_control; 
  
  set @l_jeptr = 0;
  declare curs_movegj cursor for 
      select comp_no, applcode, journalcode, jrnl_no, post_month, gl_account, pseudo_no, amount, reference, description1, description2
      from gl_update_data
      where description2 = 'MOVETOGJ'
      order by comp_no, applcode, journalcode, jrnl_no, post_month, gl_account, pseudo_no, reference, description1, description2 ;
   open curs_movegj;
   fetch next from curs_movegj into @l_compno, @l_applcode, @l_jourcode, @l_journo, @l_postmonth, @l_glacct, @l_pseudo, @l_amount, @l_ref, @l_desc1, @l_desc2 ;
   while @@fetch_status = 0
   begin 
        if l_glacct = l_controlacct
           begin
              let l_desc2 = "BANKREC"; 
           end;
        else
           begin
              let l_desc2 = "EXCEPTIONS";
           end;
        insert into ecjeupdatedata values (@l_compno, @l_applcode, @l_jourcode, @l_journo, @l_postmonth, @l_jeptr, @l_glacct, @l_pseudo, @l_amount, @l_ref, @l_desc1, @l_desc2);
        set @l_jeptr = @l_jeptr + 1;
        fetch next from curs_movegj into @l_compno, @l_applcode, @l_jourcode, @l_journo, @l_postmonth, @l_glacct, @l_pseudo, @l_amount, @l_ref, @l_desc1, @l_desc2 ;
   end;
  close curs_movegj;
  deallocate curs_movegj;  
  delete from gl_update_data where description2 = 'MOVETOGJ' ;
  
end;
go


create procedure ecReSendGLTransactions @p_journalcode char(2), @p_jrnlno integer as

begin

   -- gl_update_data table record
   declare @l_compno smallint,
           @l_appl char(2),
           @l_journalcode char(2),
           @l_journalno integer = null,
           @l_postmonth char(8) = null,
           @l_seqno integer = 0,
           @l_glaccount char(40) = null,
           @l_pseudo integer = null,
           @l_amount decimal(11,2) = 0,
           @l_ref char(10) = null,
           @l_desc1 char(25) = null,
           @l_desc2 char(25) = null; 
    
   declare curs_master cursor for 
           select comp_no, applcode, journalcode,jrnl_no,post_month,seq_number,gl_account,pseudo_no,amount,reference,description1,description2
           from ecgldetarc
           where comp_no = 1
           and applcode = 'PB'
           and journalcode = @p_journalcode
           and jrnl_no = @p_jrnlno
           and (description2 <> 'EXCEPTION' or description2 is null) ;
   open curs_master;
   fetch next from curs_master into @l_compno,@l_appl,@l_journalcode,@l_journalno,@l_postmonth,@l_seqno,@l_glaccount,@l_pseudo,@l_amount,@l_ref,@l_desc1,@l_desc2 ;
   while @@FETCH_STATUS = 0
   begin
      if @l_desc2 = 'CONTROL AMOUNT' 
      begin
         set @l_desc2 = null;
      end;
      insert into gl_update_data values (@l_compno,@l_appl,@l_journalcode,@l_journalno,@l_postmonth,@l_seqno,@l_glaccount,@l_pseudo,@l_amount,@l_ref,@l_desc1,@l_desc2);
      fetch next from curs_master into @l_compno,@l_appl,@l_journalcode,@l_journalno,@l_postmonth,@l_seqno,@l_glaccount,@l_pseudo,@l_amount,@l_ref,@l_desc1,@l_desc2 ;
   end;
   close curs_master;
   deallocate curs_master

end
go


create procedure ecReSendRefunds  @p_jrnlno integer, @p_type char(2)

as 

begin

   -- field from hcapload table
   declare @a_seq_no               INTEGER,
           @a_rec_type             CHAR(1),
           @a_utility_type         CHAR(1),
           @a_account_no           INTEGER,
           @a_acct_name            CHAR(30),
           @a_address_1            CHAR(30),
           @a_address_2            CHAR(30),
           @a_address_3            CHAR(20),
           @a_city                 CHAR(20),
           @a_province             CHAR(5),
           @a_postal_zip           CHAR(10),
           @a_postal_mode          CHAR(4),
           @a_final                CHAR(1),
           @a_amount               DEC(12,2),
           @a_pseudo               INTEGER,
           @a_appl_code            CHAR(2),
           @a_jrnl_code            CHAR(2),
           @a_jrnl_no              INTEGER,
           @a_chq_date             DATETIME,
           @a_comment_             CHAR(25),
           @a_sysdate_             DATETIME,
           @a_systime              CHAR(5),
           @a_sysuser              CHAR(8),
           @a_loaded_by_ap         SMALLINT,
           @a_direct_deposit       CHAR(1),
           @a_bank_transt          CHAR(15),
           @a_bank_accont          CHAR(15),  
   
   -- gl_update_data table record
           @l_compno smallint,
           @l_appl char(2),
           @l_journalcode char(2),
           @l_journalno integer,
           @l_postmonth char(8),
           @l_seqno integer,
           @l_glaccount char(40),
           @l_pseudo integer,
           @l_amount decimal(11,2),
           @l_ref char(10),
           @l_desc1 char(25),
           @l_desc2 char(25); 
   
   if @p_type = 'AP'
   begin   
      -- this journal is for accounts that required a AP payable transaction
      declare curs_ap cursor for
         select seq_no, rec_type, utility_type, account_no, acct_name,
                address_1, address_2, address_3, city, province, postal_zip,  postal_mode,
                final, amount, pseudo, appl_code, jrnl_code, jrnl_no, chq_date, comment_,
                sysdate_, systime, sysuser, loaded_by_ap, direct_deposit, bank_transt,
                bank_accont
         FROM ecrefundarc where jrnl_no = @p_jrnlno and amount > 0 ;
      open curs_ap;
      fetch next from curs_ap into @a_seq_no, @a_rec_type, @a_utility_type, @a_account_no, @a_acct_name,
               @a_address_1, @a_address_2, @a_address_3, @a_city, @a_province, @a_postal_zip,  @a_postal_mode,
               @a_final, @a_amount, @a_pseudo, @a_appl_code, @a_jrnl_code, @a_jrnl_no, @a_chq_date, @a_comment_,
               @a_sysdate_, @a_systime, @a_sysuser, @a_loaded_by_ap, @a_direct_deposit, @a_bank_transt,
               @a_bank_accont ;
      while @@fetch_status = 0
      begin          
          insert into hcapload values (@a_seq_no, @a_rec_type, @a_utility_type, @a_account_no, @a_acct_name,
               @a_address_1, @a_address_2, @a_address_3, @a_city, @a_province, @a_postal_zip,  @a_postal_mode,
               @a_final, @a_amount, @a_pseudo, @a_appl_code, @a_jrnl_code, @a_jrnl_no, @a_chq_date, @a_comment_,
               @a_sysdate_, @a_systime, @a_sysuser, @a_loaded_by_ap, @a_direct_deposit, @a_bank_transt,
               @a_bank_accont);
          fetch next from curs_ap into @a_seq_no, @a_rec_type, @a_utility_type, @a_account_no, @a_acct_name,
                  @a_address_1, @a_address_2, @a_address_3, @a_city, @a_province, @a_postal_zip,  @a_postal_mode,
                  @a_final, @a_amount, @a_pseudo, @a_appl_code, @a_jrnl_code, @a_jrnl_no, @a_chq_date, @a_comment_,
                  @a_sysdate_, @a_systime, @a_sysuser, @a_loaded_by_ap, @a_direct_deposit, @a_bank_transt,
                  @a_bank_accont ;
      end;
      close curs_ap;
      deallocate curs_ap;
   end;
   
   else
   
   begin
      -- this journal is for accounts that just needed GL AR Accounts corrected
      declare curs_ar cursor for
          select comp_no,applcode,journalcode,jrnl_no,post_month,seq_number,gl_account,pseudo_no,amount,reference,description1,description2
          from ecgldetarc
          where comp_no = 1
          and applcode = 'PB'
          and journalcode = 'RJ'
          and jrnl_no = @p_jrnlno ;
      open curs_ar;
      fetch next from curs_ar into @l_compno,@l_appl,@l_journalcode,@l_journalno,@l_postmonth,@l_seqno,@l_glaccount,@l_pseudo,@l_amount,@l_ref,@l_desc1,@l_desc2 ;
      while @@fetch_status = 0
      begin
          insert into gl_update_data values (@l_compno,@l_appl,@l_journalcode,@l_journalno,@l_postmonth,@l_seqno,@l_glaccount,@l_pseudo,@l_amount,@l_ref,@l_desc1,@l_desc2);
          fetch next from curs_ar into @l_compno,@l_appl,@l_journalcode,@l_journalno,@l_postmonth,@l_seqno,@l_glaccount,@l_pseudo,@l_amount,@l_ref,@l_desc1,@l_desc2 ;
      end;
      close curs_ar;
      deallocate curs_ar;
   end;
   
end;
go


create procedure ecTableInstaller @p_custid integer as

declare @l_count integer;

begin

-- create tables used by job scheduler and great plains integration

create table ecControlr (
   seq_no               integer                         not null,
   asofdate             date
);
create unique  index ecControlrPk on ecControlr (
        seq_no               ASC
);
-- set the asofdate if you want the job scheduler store procedure
-- to overwrite system date
insert into ecControlr values (1,null); 

create table ecAttribDef (
   flag_id              integer                         not null,
   description          char(60)                        not null
);
create unique  index ecAttribDefPk on ecAttribDef (
        flag_id              ASC
);
insert into ecAttribDef values (1,'OCEB Reporting Active');
insert into ecAttribDef values (2,'OCEB Reporting day to prepare');
insert into ecAttribDef values (3,'G/L Integration'); 
insert into ecAttribDef values (4,'OCEB Reporting month to prepare');
insert into ecAttribDef values (5,'Pubs - GP Integration');

create table ecCustAttrib (
   cust_id              integer                         not null,
   flag_id              integer                         not null,
   flag_value           char(100)                       not null
);
create unique  index ecCustAttribPk on ecCustAttrib (
        cust_id              ASC,
        flag_id              ASC
);
insert into ecCustAttrib values (101,1,'N');
insert into ecCustAttrib values (101,2,3);
insert into ecCustAttrib values (101,3,'N');
--only add record upon required
--insert into ecCustAttrib values (101,4,null);
insert into ecCustAttrib values (101,5,'Y'); 

create table ecCustLog (
   cust_id              integer                         not null,
   seq_id               integer                         not null,
   msg_log              char(100)                       not null
);
create unique  index ecCustLogPk on ecCustLog (
        cust_id              ASC,
        seq_id               ASC
);

create table ecOcebMaster (
   account_no           integer                         not null,
   occupant_code        smallint                        not null,
   bill_code            char(6)                         not null,
   category             char(2)                         not null,
   no_units             smallint                        not null,
   retailerid           char(15)                        not null,
   canrev               smallint                        not null,
   usagebilled          decimal(18,2)                   not null,
   amountbilled         decimal(12,2)                   not null,
   post_month           char(8)                         not null
);
create   index ecOcebMasterFk1 on ecOcebMaster (
        post_month           ASC
);
create unique  index ecOcebMasterPk on ecOcebMaster (
        account_no           ASC,
        occupant_code        ASC,
        bill_code            ASC,
        category             ASC,
        no_units             ASC,
        retailerid           ASC,
        canrev               ASC,
        post_month           ASC
);

create table ecHolidays (
   holiday_date         datetime             not null,
   holiday_type         char(1)              not null,
   constraint PK_ECHOLIDAYS primary key nonclustered (holiday_date)
)
insert into ecHolidays values ('09/01/2011','S');
insert into ecHolidays values ('10/14/2011','S');
insert into ecHolidays values ('12/24/2011','S');
insert into ecHolidays values ('12/25/2011','S');
create unique index ecHolidaysPk on ecHolidays (
holiday_date ASC
);

create table ecgpcontrol (
   seq_no               int                  not null,
   controlacct          char(40)             not null,
   nsfacct              char(40)             null,
   controlpseudo        int                  not null,
   new_format           char(15)             null,
   default_apacct       char(40)             null,
   default_puracct      char(40)             null,
   retailer_apacct      char(40)             null,
   retailer_puracct     char(40)             null,
   constraint PK_ECGPCONTROL primary key nonclustered (seq_no)
);
insert into ecgpcontrol values (1,'2-1000-1005-101',null,2,'144300000000000','2-1000-2205-109','2-1000-1100-101','2-1000-2205-104','2-1000-1100-104');

create table ecpbgpcash (
   comp_no              smallint             not null,
   applcode             char(2)              not null,
   journalcode          char(2)              not null,
   jrnl_no              int                  not null,
   post_month           char(8)              null,
   seq_number           int                  not null,
   gl_account           char(40)             null,
   pseudo_no            int                  null,
   amount               decimal(11,2)        null,
   reference            char(10)             null,
   description1         char(25)             null,
   description2         char(25)             null,
   controlamt           decimal(11,2)        null,
   constraint PK_ECPBGPCASH primary key nonclustered (comp_no, applcode, journalcode, jrnl_no, seq_number)
);
create index ecpbgpcash_d1 on ecpbgpcash (
comp_no ASC,
applcode ASC,
journalcode ASC,
jrnl_no ASC,
post_month ASC,
seq_number ASC
);
create unique index ecpbgpcash_u2 on ecpbgpcash (
comp_no ASC,
applcode ASC,
journalcode ASC,
jrnl_no ASC,
seq_number ASC
);

create table ecgldetarc (
   comp_no              smallint             not null,
   applcode             char(2)              not null,
   journalcode          char(2)              not null,
   jrnl_no              int                  not null,
   post_month           char(8)              null,
   seq_number           numeric              identity,
   gl_account           char(40)             null,
   pseudo_no            int                  null,
   amount               decimal(11,2)        null,
   reference            char(10)             null,
   description1         char(25)             null,
   description2         char(25)             null,
   controlamt           decimal(11,2)        null,
   archive_date         datetime             not null,
   archive_userid       char(10)             not null,
   constraint PK_ECGLDETARC primary key nonclustered (comp_no, applcode, journalcode, jrnl_no, seq_number)
);
create index ecgldetarcdup on ecgldetarc (
comp_no ASC,
applcode ASC,
journalcode ASC,
jrnl_no ASC,
post_month ASC,
seq_number ASC
);
create unique index ecgldetarcpk on ecgldetarc (
comp_no ASC,
applcode ASC,
journalcode ASC,
jrnl_no ASC,
seq_number ASC
);

create table ecrefundarc (
   seq_no               int                  not null,
   rec_type             char(1)              null,
   utility_type         char(1)              null,
   account_no           int                  null,
   acct_name            char(30)             null,
   address_1            char(30)             null,
   address_2            char(30)             null,
   address_3            char(20)             null,
   city                 char(20)             null,
   province             char(5)              null,
   postal_zip           char(10)             null,
   postal_mode          char(4)              null,
   final                char(1)              null,
   amount               decimal(12,2)        null,
   pseudo               int                  null,
   appl_code            char(2)              null,
   jrnl_code            char(2)              null,
   jrnl_no              int                  null,
   chq_date             datetime             null,
   comment_             char(25)             null,
   sysdate_             datetime             null,
   systime              char(5)              null,
   sysuser              char(8)              null,
   loaded_by_ap         smallint             null,
   direct_deposit       char(1)              null,
   bank_transt          char(15)             null,
   bank_accont          char(15)             null,
   archived_date        datetime             null,
   archived_by          char(10)             null,
   constraint PK_ECREFUNDARC primary key nonclustered (seq_no)
);

create table ecpubsgperror (
   seq_no               numeric              identity,
   error_date           datetime             not null,
   error_msg            char(100)            not null,
   constraint PK_ECPUBSGPERROR primary key nonclustered (seq_no)
);

create table ecpubsglmap (
   pubs_gl              char(40)             not null,
   gp_gl                char(40)             not null,
   constraint PK_ECPUBSGLMAP primary key nonclustered (pubs_gl)
);

create table GPJEPENDING (
   APPLCODE             CHAR(2)              not null,
   JOURNALCODE          CHAR(2)              not null,
   JRNL_NO              INTEGER              not null,
   POST_MONTH           CHAR(8)              not null,
   SEQ_NUMBER           NUMERIC              identity,
   GL_ACCOUNT           CHAR(40)             null,
   AMOUNT               DEC(11,2)            null,
   REFERENCE            CHAR(10)             null,
   DESCRIPTION1         CHAR(25)             null,
   DESCRIPTION2         CHAR(25)             null,
   constraint PK_GPJEPENDING primary key nonclustered (APPLCODE, JOURNALCODE, JRNL_NO, POST_MONTH, SEQ_NUMBER)
);
 
create table ecrjnonretailer (
   seq_no               integer              null,
   account_no           integer              null,
   acct_name            char(30)             null,
   address_1            char(30)             null,
   address_2            char(30)             null,
   address_3            char(20)             null,
   city                 char(20)             null,
   province             char(5)              null,
   postal_zip           char(10)             null,
   postal_mode          char(4)              null,
   amount               decimal(12,2)        null,
   jrnl_no              integer              null,
   chq_date             datetime             null,
   glap                 char(40)             null,
   glpur                char(40)             null
);
create table ecrjretailer (
   seq_no               integer              null,
   account_no           integer              null,
   acct_name            char(30)             null,
   address_1            char(30)             null,
   address_2            char(30)             null,
   address_3            char(20)             null,
   city                 char(20)             null,
   province             char(5)              null,
   postal_zip           char(10)             null,
   postal_mode          char(4)              null,
   amount               decimal(12,2)        null,
   jrnl_no              integer              null,
   chq_date             datetime             null,
   glap                 char(40)             null,
   glpur                char(40)             null
);
  
  
create table ecgl00105 (
   ACTINDX              int                  not null,
   ACTNUMBR_1           char(7)              not null,
   ACTNUMBR_2           char(7)              not null,
   ACTNUMBR_3           char(7)              not null,
   ACTNUMBR_4           char(7)              not null,
   ACTNUMBR_5           char(7)              not null,
   ACTNUMBR_6           char(7)              not null,
   ACTNUMBR_7           char(7)              not null,
   ACTNUMST             char(129)            not null,
   DEX_ROW_ID           int                  null,
   constraint PKGL00105 primary key nonclustered (ACTINDX)
         WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
)
ON [PRIMARY] ;

create table ecgl10000 (
   BACHNUMB             char(15)             not null,
   BCHSOURC             char(15)             not null,
   JRNENTRY             int                  not null,
   RCTRXSEQ             numeric(19, 5)       not null,
   SOURCDOC             char(11)             not null,
   REFRENCE             char(31)             not null,
   TRXDATE              datetime             not null,
   RVRSNGDT             datetime             not null,
   RCRNGTRX             tinyint              not null,
   BALFRCLC             smallint             not null,
   PSTGSTUS             smallint             not null,
   LASTUSER             char(15)             not null,
   LSTDTEDT             datetime             not null,
   USWHPSTD             char(15)             not null,
   TRXTYPE              smallint             not null,
   SQNCLINE             numeric(19, 5)       not null,
   GLHDRMSG             binary(4)            not null,
   GLHDRMS2             binary(4)            not null,
   TRXSORCE             char(13)             not null,
   RVTRXSRC             char(13)             not null,
   SERIES               smallint             not null,
   ORPSTDDT             datetime             not null,
   ORTRXSRC             char(13)             not null,
   ORIGDTASERIES        smallint             not null,
   DTACONTROLNUM        char(21)             not null,
   DTATRXTYPE           smallint             not null,
   DTA_INDEX            numeric(19, 5)       not null,
   CURNCYID             char(15)             not null,
   CURRNIDX             smallint             not null,
   RATETPID             char(15)             not null,
   EXGTBLID             char(15)             not null,
   XCHGRATE             numeric(19, 7)       not null,
   EXCHDATE             datetime             not null,
   TIME1                datetime             not null,
   RTCLCMTD             smallint             not null,
   NOTEINDX             numeric(19, 5)       not null,
   GLHDRVAL             binary(4)            not null,
   PERIODID             smallint             not null,
   OPENYEAR             smallint             not null,
   CLOSEDYR             smallint             not null,
   HISTRX               tinyint              not null,
   REVPRDID             smallint             not null,
   REVYEAR              smallint             not null,
   REVCLYR              smallint             not null,
   REVHIST              tinyint              not null,
   ERRSTATE             int                  not null,
   ICTRX                tinyint              not null,
   ORCOMID              char(5)              not null,
   ORIGINJE             int                  not null,
   ICDISTS              tinyint              not null,
   PRNTSTUS             smallint             not null,
   DENXRATE             numeric(19, 7)       not null,
   MCTRXSTT             smallint             not null,
   DOCDATE              datetime             not null,
   TAX_DATE             datetime             not null,
   VOIDED               tinyint              not null,
   ORIGINAL_JE          int                  not null,
   ORIGINAL_JE_YEAR     smallint             not null,
   ORIGINAL_JE_SEQ_NU   numeric(19, 5)       not null,
   CORRECTING_TRX_TYP   smallint             not null,
   LEDGER_ID            smallint             not null,
   ADJUSTMENT_TRANSAC   tinyint              not null,
   DEX_ROW_TS           datetime             not null constraint DF__GL10000__DEX_ROW__540C7B00 default getutcdate(),
   DEX_ROW_ID           int                  null,
   constraint PKGL10000 primary key nonclustered (BCHSOURC, BACHNUMB, JRNENTRY)
         WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
   constraint CKT_ECGL10000 check (datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)),
   constraint RULE_1 check ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0))),
   constraint RULE_2 check ((datepart(hour,[LSTDTEDT])=(0) AND datepart(minute,[LSTDTEDT])=(0) AND datepart(second,[LSTDTEDT])=(0) AND datepart(millisecond,[LSTDTEDT])=(0))),
   constraint RULE_3 check ((datepart(hour,[ORPSTDDT])=(0) AND datepart(minute,[ORPSTDDT])=(0) AND datepart(second,[ORPSTDDT])=(0) AND datepart(millisecond,[ORPSTDDT])=(0))),
   constraint RULE_4 check ((datepart(hour,[RVRSNGDT])=(0) AND datepart(minute,[RVRSNGDT])=(0) AND datepart(second,[RVRSNGDT])=(0) AND datepart(millisecond,[RVRSNGDT])=(0))),
   constraint RULE_5 check ((datepart(hour,[Tax_Date])=(0) AND datepart(minute,[Tax_Date])=(0) AND datepart(second,[Tax_Date])=(0) AND datepart(millisecond,[Tax_Date])=(0))),
   constraint RULE_6 check ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900))),
   constraint RULE_7 check ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
)
ON [PRIMARY];

create table ecgl20000 (
   OPENYEAR             smallint             not null,
   JRNENTRY             int                  not null,
   RCTRXSEQ             numeric(19, 5)       not null,
   SOURCDOC             char(11)             not null,
   REFRENCE             char(31)             not null,
   DSCRIPTN             char(31)             not null,
   TRXDATE              datetime             not null,
   TRXSORCE             char(13)             not null,
   ACTINDX              int                  not null,
   POLLDTRX             tinyint              not null,
   LASTUSER             char(15)             not null,
   LSTDTEDT             datetime             not null,
   USWHPSTD             char(15)             not null,
   ORGNTSRC             char(15)             not null,
   ORGNATYP             smallint             not null,
   QKOFSET              smallint             not null,
   SERIES               smallint             not null,
   ORTRXTYP             smallint             not null,
   ORCTRNUM             char(21)             not null,
   ORMSTRID             char(31)             not null,
   ORMSTRNM             char(65)             not null,
   ORDOCNUM             char(21)             not null,
   ORPSTDDT             datetime             not null,
   ORTRXSRC             char(13)             not null,
   ORIGDTASERIES        smallint             not null,
   ORIGSEQNUM           int                  not null,
   SEQNUMBR             int                  not null,
   DTA_GL_STATUS        smallint             not null,
   DTA_INDEX            numeric(19, 5)       not null,
   CURNCYID             char(15)             not null,
   CURRNIDX             smallint             not null,
   RATETPID             char(15)             not null,
   EXGTBLID             char(15)             not null,
   XCHGRATE             numeric(19, 7)       not null,
   EXCHDATE             datetime             not null,
   TIME1                datetime             not null,
   RTCLCMTD             smallint             not null,
   NOTEINDX             numeric(19, 5)       not null,
   ICTRX                tinyint              not null,
   ORCOMID              char(5)              not null,
   ORIGINJE             int                  not null,
   PERIODID             smallint             not null,
   CRDTAMNT             numeric(19, 5)       not null,
   DEBITAMT             numeric(19, 5)       not null,
   ORCRDAMT             numeric(19, 5)       not null,
   ORDBTAMT             numeric(19, 5)       not null,
   DOCDATE              datetime             not null,
   PSTGNMBR             int                  not null,
   PPSGNMBR             int                  not null,
   DENXRATE             numeric(19, 7)       not null,
   MCTRXSTT             smallint             not null,
   CORRESPONDINGUNIT    char(5)              not null,
   VOIDED               tinyint              not null,
   BACK_OUT_JE          int                  not null,
   BACK_OUT_JE_YEAR     smallint             not null,
   CORRECTING_JE        int                  not null,
   CORRECTING_JE_YEAR   smallint             not null,
   ORIGINAL_JE          int                  not null,
   ORIGINAL_JE_SEQ_NU   numeric(19, 5)       not null,
   ORIGINAL_JE_YEAR     smallint             not null,
   LEDGER_ID            smallint             not null,
   ADJUSTMENT_TRANSAC   tinyint              not null,
   DEX_ROW_TS           datetime             not null constraint DF__GL20000__DEX_ROW__7BB05806 default getutcdate(),
   DEX_ROW_ID           int                  not null,
   constraint PKGL20000 primary key nonclustered (DEX_ROW_ID)
         WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
   constraint CKT_ECGL20000 check (datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)),
   constraint RULE_8 check ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0))),
   constraint RULE_9 check ((datepart(hour,[LSTDTEDT])=(0) AND datepart(minute,[LSTDTEDT])=(0) AND datepart(second,[LSTDTEDT])=(0) AND datepart(millisecond,[LSTDTEDT])=(0))),
   constraint RULE_10 check ((datepart(hour,[ORPSTDDT])=(0) AND datepart(minute,[ORPSTDDT])=(0) AND datepart(second,[ORPSTDDT])=(0) AND datepart(millisecond,[ORPSTDDT])=(0))),
   constraint RULE_11 check ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900))),
   constraint RULE_12 check ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
)
ON [PRIMARY];

create table ecgl30000 (
   HSTYEAR              smallint             not null,
   JRNENTRY             int                  not null,
   RCTRXSEQ             numeric(19, 5)       not null,
   SOURCDOC             char(11)             not null,
   REFRENCE             char(31)             not null,
   DSCRIPTN             char(31)             not null,
   TRXDATE              datetime             not null,
   ACTINDX              int                  not null,
   TRXSORCE             char(13)             not null,
   POLLDTRX             tinyint              not null,
   LASTUSER             char(15)             not null,
   LSTDTEDT             datetime             not null,
   USWHPSTD             char(15)             not null,
   ORGNTSRC             char(15)             not null,
   ORGNATYP             smallint             not null,
   QKOFSET              smallint             not null,
   SERIES               smallint             not null,
   ORTRXTYP             smallint             not null,
   ORCTRNUM             char(21)             not null,
   ORMSTRID             char(31)             not null,
   ORMSTRNM             char(65)             not null,
   ORDOCNUM             char(21)             not null,
   ORPSTDDT             datetime             not null,
   ORTRXSRC             char(13)             not null,
   ORIGDTASERIES        smallint             not null,
   ORIGSEQNUM           int                  not null,
   SEQNUMBR             int                  not null,
   DTA_GL_STATUS        smallint             not null,
   DTA_INDEX            numeric(19, 5)       not null,
   CURNCYID             char(15)             not null,
   CURRNIDX             smallint             not null,
   RATETPID             char(15)             not null,
   EXGTBLID             char(15)             not null,
   XCHGRATE             numeric(19, 7)       not null,
   EXCHDATE             datetime             not null,
   TIME1                datetime             not null,
   RTCLCMTD             smallint             not null,
   NOTEINDX             numeric(19, 5)       not null,
   ICTRX                tinyint              not null,
   ORCOMID              char(5)              not null,
   ORIGINJE             int                  not null,
   PERIODID             smallint             not null,
   CRDTAMNT             numeric(19, 5)       not null,
   DEBITAMT             numeric(19, 5)       not null,
   ORCRDAMT             numeric(19, 5)       not null,
   ORDBTAMT             numeric(19, 5)       not null,
   DOCDATE              datetime             not null,
   PSTGNMBR             int                  not null,
   PPSGNMBR             int                  not null,
   DENXRATE             numeric(19, 7)       not null,
   MCTRXSTT             smallint             not null,
   CORRESPONDINGUNIT    char(5)              not null,
   VOIDED               tinyint              not null,
   BACK_OUT_JE          int                  not null,
   BACK_OUT_JE_YEAR     smallint             not null,
   CORRECTING_JE        int                  not null,
   CORRECTING_JE_YEAR   smallint             not null,
   ORIGINAL_JE          int                  not null,
   ORIGINAL_JE_SEQ_NU   numeric(19, 5)       not null,
   ORIGINAL_JE_YEAR     smallint             not null,
   LEDGER_ID            smallint             not null,
   ADJUSTMENT_TRANSAC   tinyint              not null,
   DEX_ROW_TS           datetime             not null constraint DF__GL30000__DEX_ROW__4183B671 default getutcdate(),
   DEX_ROW_ID           int                  not null,
   constraint PKGL30000 primary key nonclustered (DEX_ROW_ID)
         WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
   constraint CKT_ECGL30000 check (datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)),
   constraint RULE_13 check ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0))),
   constraint RULE_14 check ((datepart(hour,[LSTDTEDT])=(0) AND datepart(minute,[LSTDTEDT])=(0) AND datepart(second,[LSTDTEDT])=(0) AND datepart(millisecond,[LSTDTEDT])=(0))),
   constraint RULE_15 check ((datepart(hour,[ORPSTDDT])=(0) AND datepart(minute,[ORPSTDDT])=(0) AND datepart(second,[ORPSTDDT])=(0) AND datepart(millisecond,[ORPSTDDT])=(0))),
   constraint RULE_16 check ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900))),
   constraint RULE_17 check ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
)
ON [PRIMARY];

create table ecStatsMapping (
   stat_code            char(6)              null,
   utility_type         char(1)              null,
   category             char(2)              null,
   old_pseudo           integer              null,
   new_pseudo           integer              null
);
  
end
go


create procedure ecVerifyPendingJournals 

as

begin

   declare @l_count integer,
           @l_checked smallint,
           @l_today date = getdate(),
           @l_glacct char(40),
           @l_journalcode char(2),
           @l_searchstr char(30),
           @l_jrnlno integer;
   
   -- check journal codes and numbers to make sure not already pusched
      
   declare curs_pending cursor for
       select distinct journalcode, jrnl_no from gl_update_data 
       where (description2 is null or description2 = '') 
       order by jrnl_no;
    open curs_pending;
    fetch next from curs_pending into @l_journalcode, @l_jrnlno ; 
    while @@fetch_status = 0 
    begin

       set @l_checked=0;
       
       print 'Check 1';
       -- check if journal is already pending to be posted
       if @l_journalcode = 'CR' 
          begin
          set @l_searchstr = 'NS CR' + ltrim(str(@l_jrnlno)) + '%';
          end;
       else
          begin
          set @l_searchstr = 'NS ' + ltrim(@l_journalcode) + '%';
          end;
       select @l_count = count(*)
          from ecgl10000
          where REFRENCE like @l_searchstr
          and BACHNUMB = ltrim(str(@l_jrnlno)) ;
       if @l_count > 0 
       begin
          update gl_update_data
             set description2 = 'dupnotposted'
             where journalcode = @l_journalcode and jrnl_no = @l_jrnlno ;
          set @l_checked = 1;
       end;
       
       print 'Check 2';
       -- check if journal is already posted in current year
       if @l_checked = 0
       begin
          set @l_searchstr = 'NS ' + ltrim(@l_journalcode) + '%';
          select @l_count = count(*)
             from ecgl20000
             where REFRENCE like @l_searchstr
             and ORDOCNUM = ltrim(str(@l_jrnlno)) ;
          if @l_count > 0 
          begin
             update gl_update_data
                set description2 = 'duppostedcurr'
                where journalcode = @l_journalcode and jrnl_no = @l_jrnlno ;
             set @l_checked = 1;
          end;
       end;

       print 'Check 4';
       -- check if journal is already in unposted payable transactions PM10000
       if @l_checked = 0
       begin
          set @l_searchstr = 'REFUNDS_' + ltrim(@l_journalcode) + '%';
          select @l_count = count(*)
             from ecpm10000
             where BACHNUMB like @l_searchstr ;
          if @l_count > 0 
          begin
             update gl_update_data
                set description2 = 'rjdupnotpostedcurr'
                where journalcode = @l_journalcode and jrnl_no = @l_jrnlno ;
              set @l_checked = 1;
          end;
       end;

       print 'Check 5';
       -- check if journal is already in posted payable transactions PM20000
       if @l_checked = 0
       begin
          set @l_searchstr = 'REFUNDS_' + ltrim(@l_journalcode) + '%';
          select @l_count = count(*)
             from ecpm20000
             where BACHNUMB like @l_searchstr ;
          if @l_count > 0 
          begin
             update gl_update_data
                set description2 = 'rjduppostedcurr'
                where journalcode = @l_journalcode and jrnl_no = @l_jrnlno ;
              set @l_checked = 1;
          end;
       end;
       
       print 'Checking for leap year';
       -- verify leap year issue : do not allwo journals to be pushed into GP on February 29th
       if @l_checked = 0
       begin
          if month(@l_today) = 2 and day(@l_today) = 29
          begin
             print 'Journal in leap year... so no pushing to GP Allowed';
             update gl_update_data
                set description2 = 'leapyear'
                where journalcode = @l_journalcode and jrnl_no = @l_jrnlno ;    
          end;
       end;
    
       fetch next from curs_pending into @l_journalcode, @l_jrnlno ; 

    end;
    close curs_pending;
    deallocate curs_pending;
 
    -- verify GL Accounts in pending table

    print 'Check 6';
    declare curs_checkgl cursor for
       select distinct gl_account, journalcode, jrnl_no from gl_update_data 
       where (description2 is null or description2 = '' or description2 = ' ') 
       order by journalcode, jrnl_no;
    open curs_checkgl;
    fetch next from curs_checkgl into @l_glacct, @l_journalcode, @l_jrnlno ;
    while @@fetch_status = 0 
    begin
       select @l_count = count(*)
          from ecgl00105
          where ACTNUMST = @l_glacct;
       --print 'count = ' + str(@l_count);
       --print 'journal = ' + @l_journalcode;
       --print 'number = ' + str(@l_jrnlno);
       --print 'gl = ' + @l_glacct;
       if @l_count = 0
       begin
          update gl_update_data
            set description2 = 'invalidgl'
            where journalcode = @l_journalcode and jrnl_no = @l_jrnlno ;
       end;
       fetch next from curs_checkgl into @l_glacct, @l_journalcode, @l_jrnlno ;
    end;
    close curs_checkgl;
    deallocate curs_checkgl;
    
end
go


create procedure ecrefreshnsarchive @p_user char(10) 

as 

begin

   declare @l_today date = getdate(),
           @l_time datetime = getdate(), 
           @l_strtime char(8),
           @l_nsmaxseq integer,
           @l_errmsg char(100),
           @l_count smallint,
           @l_compno smallint,
           @l_appl char(2),
           @l_journalcode char(2),
           @l_journalno integer,
           @l_postmonth char(8),
           @l_seqno integer,
           @l_glaccount char(40),
           @l_pseudo integer,
           @l_amount decimal(11,2),
           @l_ref char(10),
           @l_desc1 char(25),
           @l_desc2 char(25),
           @l_controlamt decimal(11,2),
           @l_arcdate datetime,
           @l_arcuser char(10);
   
   -- field from hcapload table
   declare @a_seq_no               INTEGER,
           @a_rec_type             CHAR(1),
           @a_utility_type         CHAR(1),
           @a_account_no           INTEGER,
           @a_acct_name            CHAR(30),
           @a_address_1            CHAR(30),
           @a_address_2            CHAR(30),
           @a_address_3            CHAR(20),
           @a_city                 CHAR(20),
           @a_province             CHAR(5),
           @a_postal_zip           CHAR(10),
           @a_postal_mode          CHAR(4),
           @a_final                CHAR(1),
           @a_amount               DEC(12,2),
           @a_pseudo               INTEGER,
           @a_appl_code            CHAR(2),
           @a_jrnl_code            CHAR(2),
           @a_jrnl_no              INTEGER,
           @a_chq_date             DATETIME,
           @a_comment_             CHAR(25),
           @a_sysdate_             DATETIME,
           @a_systime              CHAR(5),
           @a_sysuser              CHAR(8),
           @a_loaded_by_ap         SMALLINT,
           @a_direct_deposit       CHAR(1),
           @a_bank_transt          CHAR(15),
           @a_bank_accont          CHAR(15),

   -- prepare glsvdata record
   @h_compno              integer,
   @h_archive_date         datetime,
   @h_archive_time         datetime,
   @h_sequence_            integer,
   @h_applcode             char(2),
   @h_journalcode          char(2),
   @h_jrnl_no              integer,
   @h_post_month           char(8),
   @h_run_date             datetime,
   @h_run_time             char(8),
   @h_gl_account           char(40),
   @h_pseudo_no            integer,
   @h_amount               decimal(11,2),
   @h_reference            char(10),
   @h_description1         char(25),
   @h_description2         char(25),
   @h_proc_yn              char(1);
   
   print 'Begin refresh of NorthStar GL archives table...';
 
   set @l_strtime  = substring(convert(varchar(30),@l_time,120),12,20);
   
   select @l_nsmaxseq = lastserial
      from serialreg
      where tablename = 'glsvdata' ;
   if @l_nsmaxseq is null
   begin
      set @l_nsmaxseq = 1;  
   end;
   else
   begin
      set @l_nsmaxseq = @l_nsmaxseq + 1;
   end;
        
   declare curs_master cursor for
      select comp_no,applcode,journalcode,jrnl_no,post_month,seq_number,gl_account,pseudo_no,amount,reference,description1,description2, archive_date, archive_userid
           from ecgldetarc 
           order by comp_no,applcode,journalcode,jrnl_no,post_month,seq_number ;
   open curs_master;
   fetch next from curs_master into @l_compno,@l_appl,@l_journalcode,@l_journalno,@l_postmonth,@l_seqno,@l_glaccount,@l_pseudo,@l_amount,@l_ref,@l_desc1,@l_desc2,@l_arcdate,@l_arcuser ;
   while @@fetch_status = 0
   begin
       
       set @h_compno = @l_compno;
       set @h_archive_date = @l_arcdate;
       set @h_archive_time = @l_time;
       set @h_sequence_ = @l_nsmaxseq;
       set @h_applcode = @l_appl;
       set @h_journalcode = @l_journalcode;
       set @h_jrnl_no = @l_journalno;
       set @h_post_month = @l_postmonth;
       set @h_run_date = @l_today;
       set @h_run_time = @l_strtime;
       set @h_gl_account = @l_glaccount;
       set @h_pseudo_no = @l_pseudo;
       set @h_amount = @l_amount;
       set @h_reference = @l_ref;
       set @h_description1 = @l_desc1;
       set @h_description2 = 'ecaliber';
       set @h_proc_yn = 'Y';
       
       insert into glsvdata values (@h_compno,@h_archive_date,@h_archive_time,@h_sequence_,@h_applcode,@h_journalcode,@h_jrnl_no,@h_post_month,
                                    @h_run_date,@h_run_time,@h_gl_account,@h_pseudo_no,@h_amount,@h_reference,@h_description1,@h_description2,@h_proc_yn);
       set @l_nsmaxseq = @l_nsmaxseq + 1;
              
       fetch next from curs_master into @l_compno,@l_appl,@l_journalcode,@l_journalno,@l_postmonth,@l_seqno,@l_glaccount,@l_pseudo,@l_amount,@l_ref,@l_desc1,@l_desc2,@l_arcdate,@l_arcuser ;
       
   end;
   close curs_master;
   deallocate curs_master;
   
   set @l_nsmaxseq = @l_nsmaxseq - 1;
   update serialreg 
      set lastserial = @l_nsmaxseq
      where tablename = 'glsvdata' ;

   print 'Finish refresh of NorthStar GL archives table...';
   
end
go


create procedure ecreqmovegldetail  @p_user char(10), @p_jrnltype char(4), @p_jrnlno integer

as 

begin

   declare   @l_today date,
             @l_errmsg char(100),
             @l_count smallint,
             @l_compno smallint,
             @l_appl char(2),
             @l_journalcode char(2),
             @l_journalno integer,
             @l_postmonth char(8),
             @l_seqno integer,
             @l_glaccount char(40),
             @l_pseudo integer,
             @l_amount decimal(11,2),
             @l_ref char(10),
             @l_desc1 char(25),
             @l_desc2 char(25),
             @l_controlamt decimal(11,2),
             @l_jrnltype char(2),
   
   -- field from hcapload table
             @a_seq_no               INTEGER,
             @a_rec_type             CHAR(1),
             @a_utility_type         CHAR(1),
             @a_account_no           INTEGER,
             @a_acct_name            CHAR(30),
             @a_address_1            CHAR(30),
             @a_address_2            CHAR(30),
             @a_address_3            CHAR(20),
             @a_city                 CHAR(20),
             @a_province             CHAR(5),
             @a_postal_zip           CHAR(10),
             @a_postal_mode          CHAR(4),
             @a_final                CHAR(1),
             @a_amount               DEC(12,2),
             @a_pseudo               INTEGER,
             @a_appl_code            CHAR(2),
             @a_jrnl_code            CHAR(2),
             @a_jrnl_no              INTEGER,
             @a_chq_date             DATETIME,
             @a_comment_             CHAR(25),
             @a_sysdate_             DATETIME,
             @a_systime              CHAR(5),
             @a_sysuser              CHAR(8),
             @a_loaded_by_ap         SMALLINT,
             @a_direct_deposit       CHAR(1),
             @a_bank_transt          CHAR(15),
             @a_bank_accont          CHAR(15);

   set @l_today = getdate();

   if @p_jrnltype <> 'RJAP' and @p_jrnltype <> 'CR'
   begin
   
      if @p_jrnltype = 'RJAR' 
         begin
            set @l_jrnltype = 'RJ';
         end;
      else
         begin
         set @l_jrnltype = @p_jrnltype;
         end;
      
      declare curs_master cursor for 
         select comp_no,applcode,journalcode,jrnl_no,post_month,seq_number,gl_account,pseudo_no,amount,reference,description1,description2
         from gl_update_data 
         where applcode = 'PB' and journalcode <> 'CR'
         and journalcode = @l_jrnltype
         and jrnl_no = @p_jrnlno
         order by comp_no,applcode,journalcode,jrnl_no,post_month,seq_number
      open curs_master;
      fetch next from curs_master into @l_compno,@l_appl,@l_journalcode,@l_journalno,@l_postmonth,@l_seqno,@l_glaccount,@l_pseudo,@l_amount,@l_ref,@l_desc1,@l_desc2;
      while @@fetch_status = 0
      begin
         select count(*)
            from ecgldetarc 
            where comp_no=@l_compno and applcode=@l_appl and journalcode=@l_journalcode and jrnl_no=@l_journalno and seq_number = @l_seqno;
         if @@rowcount > 0 
         begin
             delete from ecgldetarc where comp_no=@l_compno and applcode=@l_appl and journalcode=@l_journalcode and jrnl_no=@l_journalno and seq_number = @l_seqno;
         end;
         insert into ecgldetarc values (@l_compno,@l_appl,@l_journalcode,@l_journalno,@l_postmonth,@l_glaccount,@l_pseudo,@l_amount,@l_ref,@l_desc1,@l_desc2,0,@l_today,@p_user);
         fetch next from curs_master into @l_compno,@l_appl,@l_journalcode,@l_journalno,@l_postmonth,@l_seqno,@l_glaccount,@l_pseudo,@l_amount,@l_ref,@l_desc1,@l_desc2;
      end;
      close curs_master;
      deallocate curs_master;
      delete from gl_update_data where journalcode <> 'CR' and journalcode = @l_jrnltype and jrnl_no = @p_jrnlno and (description2 is null or description2 = ' ')
   end;
   
   if @p_jrnltype = 'RJAP'
   begin
      -- transfer hcapload table to it's archive table
      declare curs_hcapload cursor for
         select seq_no, rec_type, utility_type, account_no, acct_name,
                address_1, address_2, address_3, city, province, postal_zip,  postal_mode,
                final, amount, pseudo, appl_code, jrnl_code, jrnl_no, chq_date, comment_,
                sysdate_, systime, sysuser, loaded_by_ap, direct_deposit, bank_transt,
                bank_accont
         from hcapload
         where jrnl_no = @p_jrnlno
         and jrnl_code = 'RJ';
      open curs_hcapload;
      fetch next from curs_hcapload into @a_seq_no, @a_rec_type, @a_utility_type, @a_account_no, @a_acct_name,
                   @a_address_1, @a_address_2, @a_address_3, @a_city, @a_province, @a_postal_zip,  @a_postal_mode,
                   @a_final, @a_amount, @a_pseudo, @a_appl_code, @a_jrnl_code, @a_jrnl_no, @a_chq_date, @a_comment_,
                   @a_sysdate_, @a_systime, @a_sysuser, @a_loaded_by_ap, @a_direct_deposit, @a_bank_transt,
                   @a_bank_accont;
      while @@fetch_status = 0
      begin   
         select count(*)
            from ecrefundarc
            where seq_no = @a_seq_no ;
         if @@rowcount > 0
         begin
            delete from ecrefundarc where seq_no = @a_seq_no ;
         end;
         insert into ecrefundarc values (@a_seq_no, @a_rec_type, @a_utility_type, @a_account_no, @a_acct_name,
                     @a_address_1, @a_address_2, @a_address_3, @a_city, @a_province, @a_postal_zip,  @a_postal_mode,
                     @a_final, @a_amount, @a_pseudo, @a_appl_code, @a_jrnl_code, @a_jrnl_no, @a_chq_date, @a_comment_,
                     @a_sysdate_, @a_systime, @a_sysuser, @a_loaded_by_ap, @a_direct_deposit, @a_bank_transt,
                     @a_bank_accont,@l_today,@p_user);
         fetch next from curs_hcapload into @a_seq_no, @a_rec_type, @a_utility_type, @a_account_no, @a_acct_name,
                     @a_address_1, @a_address_2, @a_address_3, @a_city, @a_province, @a_postal_zip,  @a_postal_mode,
                     @a_final, @a_amount, @a_pseudo, @a_appl_code, @a_jrnl_code, @a_jrnl_no, @a_chq_date, @a_comment_,
                     @a_sysdate_, @a_systime, @a_sysuser, @a_loaded_by_ap, @a_direct_deposit, @a_bank_transt,
                     @a_bank_accont;
      end;
      close curs_hcapload;
      deallocate curs_hcapload;
      delete from hcapload where 1=1 and jrnl_code = 'RJ' and jrnl_no = @p_jrnlno ;
      delete from ecrjnonretailer where jrnl_no = @p_jrnlno ;
      delete from ecrjretailer where jrnl_no = @p_jrnlno ;
      delete from gl_update_data where journalcode='RJ' and jrnl_no = @p_jrnlno and (description2 is null or description2='' or description2 =' ');
   end;
     
   if @p_jrnltype = 'CR' 
   begin     
      select count(*)
         into l_count
         from ecpbgpcash ;
      if l_count > 0
      begin
         print 'Archiving normal cash receipt entries... for select journal';
         delete from ecgldetarc where comp_no=1 and applcode='PB' and journalcode=@p_jrnltype and jrnl_no=@p_jrnlno ;
         declare curs_cr cursor for
            select comp_no,applcode,journalcode,jrnl_no,post_month,seq_number,gl_account,pseudo_no,amount,reference,description1,description2,controlamt
                   from ecpbgpcash
                   where jrnl_no = @p_jrnlno
                   and journalcode = @p_jrnltype
                   order by comp_no,applcode,journalcode,jrnl_no,post_month,seq_number ;
         open curs_cr;
         fetch next from curs_cr into @l_compno,@l_appl,@l_journalcode,@l_journalno,@l_postmonth,@l_seqno,@l_glaccount,@l_pseudo,@l_amount,@l_ref,@l_desc1,@l_desc2,@l_controlamt ;   
         while @@fetch_status = 0 
         begin
            insert into ecgldetarc values (@l_compno,@l_appl,@l_journalcode,@l_journalno,@l_postmonth,@l_glaccount,@l_pseudo,@l_amount,@l_ref,@l_desc1,@l_desc2,@l_controlamt,@l_today,@p_user);
            fetch next from curs_cr into @l_compno,@l_appl,@l_journalcode,@l_journalno,@l_postmonth,@l_seqno,@l_glaccount,@l_pseudo,@l_amount,@l_ref,@l_desc1,@l_desc2,@l_controlamt ;   
         end;
         close curs_cr;
         deallocate curs_cr;   
         delete from ecpbgpcash where journalcode = @p_jrnltype and jrnl_no = @p_jrnlno;
         delete from gl_update_data where journalcode='CR' and jrnl_no = @p_jrnlno and (description2 is null or description2='' or description2 =' ');
      end;
      else
      begin
         print 'Archiving general journal entries... for select journal';
         delete from ecgldetarc where comp_no=1 and applcode='PB' and journalcode=@p_jrnltype and jrnl_no=@p_jrnlno ;
         declare curs_gj cursor for
            select comp_no,applcode,journalcode,jrnl_no,post_month,seq_number,gl_account,pseudo_no,amount,reference,description1,description2
                 from ecjeupdatedata 
                 where jrnl_no = @p_jrnlno
                 and journalcode = @p_jrnltype
                 order by comp_no,applcode,journalcode,jrnl_no,post_month,seq_number ;
         open curs_gj;
         fetch next from curs_gj into @l_compno,@l_appl,@l_journalcode,@l_journalno,@l_postmonth,@l_seqno,@l_glaccount,@l_pseudo,@l_amount,@l_ref,@l_desc1,@l_desc2;
         while @@fetch_status = 0
         begin
             set @l_desc2 = null;
             insert into ecgldetarc values (@l_compno,@l_appl,@l_journalcode,@l_journalno,@l_postmonth,@l_glaccount,@l_pseudo,@l_amount,@l_ref,@l_desc1, @l_desc2,0,@l_today,@p_user);
             fetch next from curs_gj into @l_compno,@l_appl,@l_journalcode,@l_journalno,@l_postmonth,@l_seqno,@l_glaccount,@l_pseudo,@l_amount,@l_ref,@l_desc1,@l_desc2;
         end;
         close curs_gj;
         deallocate curs_gj;
         delete from ecjeupdatedata where journalcode = @p_jrnltype and jrnl_no = @p_jrnlno ;
     end;

   end;

end;
go

