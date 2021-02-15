using DataLibrary.Db;
using DataLibrary.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace DataLibrary.Data
{
    public class PartData
    {
        private readonly IDataAccess _dataAccess;
        private readonly ConnectionStringData _connectionString;

        public PartData(IDataAccess dataAccess, ConnectionStringData connectionString)
        {
            _dataAccess = dataAccess;
            _connectionString = connectionString;
        }

        public Task<List<PartModel>> GetParts()
        {
            return _dataAccess.LoadData<PartModel, dynamic>("dbo.spParts_All", 
                                                            new { },
                                                            _connectionString.SqlConnectionName);
        }
    }
}
