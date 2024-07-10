- https://sta.geoconnex.dev/collections/USGS/Things/items/'TX071-08161500'?f=json

- `curl https://sta.geoconnex.dev/collections/USGS/Things/items/'AR008-335246091271101'?f=jsonld` 


http://localhost:5000/collections/USGS/Things/items/'AR008-331856091114601'

http://localhost:5000/collections/Exploration/Things/items/'AR008-331856091114601'


- previously the jsonld was being applied to another template
- old templates are now removed. So jsonld will output canonical format with @ that can then be applied to the new template
- make sure it can serialize if the fields are missing (make it null with if block)