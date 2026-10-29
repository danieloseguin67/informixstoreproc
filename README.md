# Northstar / Microsoft Great Plains Integration

A sample database integration package for transferring Northstar/Pubs financial activity to Microsoft Great Plains (GP). The SQL source contains tables, views, seed configuration, and 15 stored procedures covering journal validation, cash receipts, refund payables, archiving, and resending transactions.

## Functional specifications

Start with the functional documentation for the business rules, data flow, configuration, procedure behavior, and implementation findings:

| Document | Description |
|---|---|
| [Functional specifications (English)](SampleInformixStoreProc.FunctionalDocumentation.md) | Detailed functional review, operational acceptance checklist, open business questions, and source navigation. |
| [Documentation fonctionnelle (français)](SampleInformixStoreProc.FunctionalDocumentation.fr.md) | French version of the functional documentation. |
| [SQL source](SampleInformixStoreProc.sql) | Sample schema, configuration, views, and stored procedures reviewed by the specifications. |

The specifications were prepared on October 29, 2026 from static review of the supplied SQL. They describe the visible logic and identify items requiring business or deployment confirmation; they do not establish that the sample compiles or that a production integration has been validated.

## Main capabilities

- **Journal validation:** check pending journals against GP account and transaction references, flag duplicates and invalid accounts, and apply status markers.
- **Cash receipt preparation:** build cash receipt staging and route configured cash exceptions to general journal staging.
- **Refund preparation:** aggregate retailer and nonretailer refunds, select AP and purchase accounts, and enrich payee, address, and description data.
- **Archiving and cleanup:** retain integration and Northstar GL history and clear pending or prepared records through bulk or selected-journal routines.
- **Backup and resend:** snapshot pending GL details and restore archived GL or refund records for another integration attempt.
- **Migration utilities:** normalize account mappings, migrate chart-of-accounts references, remap statistical codes, and convert historical balances.

## Integration overview

Northstar/Pubs source data is validated and prepared in integration staging tables for an external GP import. Separate routines archive and clear data or restore archived transactions for resending.

SmartConnect is referenced in the sample, but its maps, GP connections, source extraction jobs, posting process, and success callbacks are not included. The supplied scheduler calls bulk archive/cleanup when integration is enabled; it does not orchestrate validation, preparation, or import. See the [functional specifications](SampleInformixStoreProc.FunctionalDocumentation.md) for the detailed flow and proposed operational sequence.

## Sample status and prerequisites

This repository is a reference sample requiring review and correction before deployment. The script header identifies SQL Server 2008, while several routines retain Informix SPL syntax. The functional review also identifies incomplete definitions, inconsistent variables and column counts, and missing dependencies.

Before using the package, confirm the target database dialect and deployed versions, supply the external dependencies and integration configuration, and validate account mappings and GP reference refreshes. Use the specifications' acceptance checklist to test duplicate handling, cash and refund rules, reconciliation, cleanup, and resend behavior.

Preparation or archiving does not confirm GP acceptance or posting. Cleanup routines can delete active data without checking import success, so reconciliation and recovery controls must be established before running them.

## Additional design references

- [Stored procedure design image](StoreProcDesign.PNG)
- [Smart meter, cron job, KornShell, and Informix stored procedure design image](SmartMetersDesign_CronJobs_Kshell_INFXSP.PNG)
