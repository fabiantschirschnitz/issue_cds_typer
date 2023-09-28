namespace issue.cds_typer;

using {
    cuid,
    managed,
    sap.common.CodeList
} from '@sap/cds/common';
using from '@sap/cds-common-content';


@cds.autoexpose
entity CarsProducer : managed {
    key ID    : String(40);

        @mandatory
        name  : String(80);


        model : Composition of many {
                    key code : String(10);
                        name : String(40);
                };

}
