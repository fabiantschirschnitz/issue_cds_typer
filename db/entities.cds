namespace issue.cds_typer;

using {
    cuid,
    managed,
    sap.common.CodeList
} from '@sap/cds/common';
using from '@sap/cds-common-content';


@cds.autoexpose
entity Foo : cuid {
    @mandatory
    name : String(80);
    bars : Composition of many Bar;
}

aspect Bar : cuid {
    name : String(80);
}
