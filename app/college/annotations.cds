using MyService as service from '../../srv/service';

annotate service.college with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'COLLEGE ID',
            Value : c_id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'COLLEGE  NAME',
            Value : c_name,
        },
    ]
);
annotate service.college with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'c_id',
                Value : c_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'c_name',
                Value : c_name,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'lecture',
            ID : 'lecture',
            Target : 'col_lec_rel/@UI.LineItem#lecture',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'child1',
            ID : 'child1',
            Target : 'col_stu_rel/@UI.LineItem#child1',
        },
    ]
);

annotate service.college with {
    c_name @UI.MultiLineText : true
};
annotate service.student with @(
    UI.LineItem #stuchild : [
        {
            $Type : 'UI.DataField',
            Value : c_id,
            Label : 'c_id',
        },{
            $Type : 'UI.DataField',
            Value : st_adm_time,
            Label : 'st_adm_time',
        },{
            $Type : 'UI.DataField',
            Value : st_dob,
            Label : 'st_dob',
        },{
            $Type : 'UI.DataField',
            Value : st_id,
            Label : 'st_id',
        },{
            $Type : 'UI.DataField',
            Value : st_name,
            Label : 'st_name',
        },]
);
annotate service.college with @(
    UI.FieldGroup #child : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : col_stu_rel.c_id,
                Label : 'c_id',
            },{
                $Type : 'UI.DataField',
                Value : col_stu_rel.st_adm_time,
                Label : 'st_adm_time',
            },{
                $Type : 'UI.DataField',
                Value : col_stu_rel.st_dob,
                Label : 'st_dob',
            },{
                $Type : 'UI.DataField',
                Value : col_stu_rel.st_id,
                Label : 'st_id',
            },{
                $Type : 'UI.DataField',
                Value : col_stu_rel.st_name,
                Label : 'st_name',
            },],
    }
);
annotate service.student with @(
    UI.LineItem #child1 : [
        {
            $Type : 'UI.DataField',
            Value : c_id,
            Label : 'c_id',
        },{
            $Type : 'UI.DataField',
            Value : st_adm_time,
            Label : 'st_adm_time',
        },{
            $Type : 'UI.DataField',
            Value : st_dob,
            Label : 'st_dob',
        },{
            $Type : 'UI.DataField',
            Value : st_id,
            Label : 'st_id',
        },{
            $Type : 'UI.DataField',
            Value : st_name,
            Label : 'st_name',
        },]
);
annotate service.college with {
    c_id @Common.Text : {
            $value : c_name,
            ![@UI.TextArrangement] : #TextFirst,
        }
};
annotate service.college with {
    c_id @Common.FieldControl : #Mandatory
};
annotate service.student with @(
    UI.LineItem #child2 : [
        {
            $Type : 'UI.DataField',
            Value : college.col_lec_rel.c_id,
            Label : 'c_id',
        },{
            $Type : 'UI.DataField',
            Value : college.col_lec_rel.l_id,
            Label : 'l_id',
        },{
            $Type : 'UI.DataField',
            Value : college.col_lec_rel.l_name,
            Label : 'l_name',
        },
        {
            $Type : 'UI.DataField',
            Value : c_id,
            Label : 'c_id',
        },
        {
            $Type : 'UI.DataField',
            Value : college.col_lec_rel.lec_c_id,
            Label : 'lec_c_id',
        },
        {
            $Type : 'UI.DataField',
            Value : college.col_stu_rel.college.col_lec_rel.l_name,
            Label : 'l_name',
        },
        {
            $Type : 'UI.DataField',
            Value : college.col_stu_rel.college.col_lec_rel.l_id,
            Label : 'l_id',
        },]
);
annotate service.leacture with @(
    UI.LineItem #child2 : [
        {
            $Type : 'UI.DataField',
            Value : lec.col_lec_rel.c_id,
            Label : 'c_id',
        },{
            $Type : 'UI.DataField',
            Value : lec.col_lec_rel.l_id,
            Label : 'l_id',
        },{
            $Type : 'UI.DataField',
            Value : lec.col_lec_rel.l_name,
            Label : 'l_name',
        },]
);
annotate service.leacture with @(
    UI.LineItem #lecture : [
        {
            $Type : 'UI.DataField',
            Value : c_id,
            Label : 'c_id',
        },{
            $Type : 'UI.DataField',
            Value : l_id,
            Label : 'l_id',
        },{
            $Type : 'UI.DataField',
            Value : l_name,
            Label : 'l_name',
        },]
);
