//SORTEG02 JOB ' ',CLASS=A,MSGLEVEL=(1,1),
//          MSGCLASS=X,NOTIFY=&SYSUID
//DELET100 EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
  DELETE Z95639.QSAM.INP NONVSAM
  IF LASTCC LE 08 THEN SET MAXCC = 00
//SORT0200 EXEC PGM=SORT
//SYSOUT   DD SYSOUT=*
//SORTIN   DD *
00003978
00005978
00003836
11003836
00001949
//SORTOUT  DD DSN=Z95639.QSAM.INP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(TRK,(5,5),RLSE),
//            DCB=(RECFM=FB,LRECL=8)
//SYSIN    DD *
  SORT FIELDS=(1,8,CH,A)
  SORT FIELDS=COPY
