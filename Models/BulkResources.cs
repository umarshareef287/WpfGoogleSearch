using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class BulkResources
    {
        public static DataTable CreateEmptyDataTable()
        {
            DataTable dtableEmpData = new DataTable();
            dtableEmpData.Columns.Add(new DataColumn("Id", typeof(int)));
            dtableEmpData.Columns.Add(new DataColumn("WebTitle", typeof(string))); 
            dtableEmpData.Columns.Add(new DataColumn("WebAddress", typeof(string))); 
            dtableEmpData.Columns.Add(new DataColumn("SearchDescription", typeof(string))); 
            
            dtableEmpData.PrimaryKey = new DataColumn[] { dtableEmpData.Columns["Id"] };
            return dtableEmpData;
        }
    }
    
}
