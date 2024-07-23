import ballerina/http;
import ballerinax/sap.jco;
import ballerina/io;

configurable jco:DestinationConfig destination = ?;
jco:Client jcoClient = check new (destination);

service / on new http:Listener(9090) {

    function init() {
        io:println("SAP as REST service started.");
    }

    resource function post rfc(PetroRetailData input) returns string|error {
        return string `Hello, world!`;
    }
}

type PetroRetailData record {
    string charFieldlength;
    string comment;
    string companyCode;
    string costCenter;
    string documentDate;
    string fiscalYear;
    string format;
    string generalLedgerAccount;
    string? gstUsage;
    string itemNumAssignment;
    string? lineItem;
    string localCurrencyAmt;
    string? partner;
    string postingDate;
    string vendorCreditorAccount;
};

type PetroRetail record {
    PetroRetailData petroRetailData;
};

