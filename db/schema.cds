namespace schema1;

entity college
{
    key c_id : Integer;
    c_name : String;
    col_stu_rel : Composition of many student on col_stu_rel.c_id = c_id;
    col_lec_rel : Composition of many leacture on col_lec_rel.c_id = c_id;
}
entity leacture{
    key l_id : Integer;
    l_name : String;
     c_id : Integer;
     lec : Association to one college on lec.c_id = c_id;
}
entity student
{
    key st_id : UUID;
    st_name : String;
    st_dob : Date;
    st_adm_time : Time;
    c_id : Integer;
    college : Association to one college on college.c_id = c_id;
}


