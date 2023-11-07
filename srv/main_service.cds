using {issue.cds_typer as db} from '../db/entities';


service main_service {

  entity Foo as projection on db.Foo;

};
