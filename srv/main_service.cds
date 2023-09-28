using {issue.cds_typer as db} from '../db/_replace_me';


service main_service {

  entity CarsProducer as projection on db.CarsProducer;
  entity CarsModels   as projection on db.CarsProducer.model;
  //### Basic F4
  annotate CarsModels with @cds.odata.valuelist;
  annotate CarsModels with @UI.Identification: [{Value: name}];

};
