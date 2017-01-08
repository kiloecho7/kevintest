'use strict'

var oracle = require('oracledb');

var connectionString = process.env.OCT_VAULT_DB_LIDS_HOSTNAME + ":" + process.env.OCT_VAULT_DB_LIDS_PORT + "/" + process.env.OCT_VAULT_DB_LIDS_RESOURCENAME;
var password = process.env.OCT_VAULT_DB_LIDS_PASSWORD;
var user = process.env.OCT_VAULT_DB_LIDS_USERNAME;

var getResults = function(req, res) {
  oracle.getConnection({
      user              : user,
      password          : password,
      connectString     : connectionString

    },
    function(err, connection) {
      if (err) {
        console.error(err.message); return;
      }
      connection.execute(
        "SELECT * from delivery where rownum = 1",
        [],
        { resultSet: true },
        function(err, result)
        {
          if (err) {
            console.error(err.message);
            doRelease(connection);
            return;
          }
          fetchOneRowFromRS(connection, result.resultSet);
        }
      );
    }
  );

  function doRelease(connection)
  {
    connection.release(
      function(err) {
        if (err) {
          console.error(err.message);
        }
      }
    );
  }

  function fetchOneRowFromRS(connection, resultSet)
  {
    resultSet.getRow(
      function (err, row)
      {
        var delRecord = 'delivery not found';
        if (err) {
          console.error(err.message);
        } else if (row) {
          delRecord = row;
        }
        doClose(connection, resultSet);
        res.json({ delivery: delRecord });
      }
    );
  }

  function doClose(connection, resultSet)
  {
    resultSet.close(
      function(err)
      {
        if (err) { console.error(err.message); }
        doRelease(connection);
      }
    );
  }
};

module.exports = getResults;
