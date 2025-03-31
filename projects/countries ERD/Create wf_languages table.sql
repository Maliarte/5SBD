-- Create wf_languages table
CREATE TABLE  WF_LANGUAGES
   ("LANGUAGE_ID" NUMBER(4,0), 
	"LANGUAGE_NAME" VARCHAR2(50) CONSTRAINT "WF_LANG_LANGNAME_NN" NOT NULL ENABLE, 
	CONSTRAINT "WF_LANG_PK" PRIMARY KEY ("LANGUAGE_ID")
	USING INDEX  ENABLE
   );