using schema1 as db from '../db/schema';
service MyService {
    @odata.draft.enabled
    entity college as projection on db.college;
    entity leacture as projection on db.leacture;
    entity student as projection on db.student;

}
