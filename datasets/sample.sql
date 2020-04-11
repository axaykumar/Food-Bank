BEGIN TRANSACTION;
CREATE TABLE "Account" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	parent_id VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Account" VALUES('0010p00000dFTuHAAW','AK Test','');
CREATE TABLE "Delivery_Item__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	delivery__c VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Delivery_Item__c" VALUES('a000p000004O7RiAAK','2020-05-31','Frozen','a010p000001RKrUAAW');
INSERT INTO "Delivery_Item__c" VALUES('a000p000004O7RnAAK','2020-05-02','Frozen','a010p000001RKrUAAW');
INSERT INTO "Delivery_Item__c" VALUES('a000p000004O7RdAAK','2020-04-18','Non-refrigerated','a010p000001RKrVAAW');
CREATE TABLE "Delivery__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	supplier__c VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Delivery__c" VALUES('a010p000001RKrUAAW','2020-04-30T19:00:00.000Z','Requested','0010p00000dFTuHAAW');
INSERT INTO "Delivery__c" VALUES('a010p000001RKrVAAW','2020-04-11T19:00:00.000Z','Completed','0010p00000dFTuHAAW');
COMMIT;
