select distinct schema_name(tab.schema_id) as schema_name,
    tab.name as table_name,
	col.name as col_name
from sys.tables as tab
    inner join sys.columns as col
        on tab.object_id = col.object_id
    left join sys.types as t
    on col.user_type_id = t.user_type_id
