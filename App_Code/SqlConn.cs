using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for sqlConn
/// </summary>
public class SqlConn
{
    SqlConnection conn = new SqlConnection();
    public DataTable dt = new DataTable();
    public string err_Msg = "";
    public SqlConn()
    {
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["PaamelConnectionString"].ConnectionString;
    }
    public DataTable PopulatesData(string sqlQuery, int count)
    {
        try
        {
            err_Msg = "";
            SqlDataAdapter adapter = new SqlDataAdapter(sqlQuery, conn);
            DataSet ds = new DataSet();
            adapter.Fill(ds, "Table");
            count = ds.Tables["Table"].Rows.Count;
            dt = ds.Tables["Table"];
            return dt;
        }
        catch (Exception)
        {
            throw;
        }
       
    }



    public DataTable PopulateData(string sqlQuery, int count)
    {
        try
        {
            err_Msg = "";
            SqlDataAdapter adapter = new SqlDataAdapter(sqlQuery, conn);
            DataSet ds = new DataSet();
            adapter.Fill(ds, "Table");
            count = ds.Tables["Table"].Rows.Count;
            dt = ds.Tables["Table"];
            return dt;
        }
        catch (Exception)
        {
            throw;
        }

    }

    public DataTable PopulateData(SqlCommand command)//, int count)
    {
        try
        {
            dt = new DataTable();
            command.Connection = conn;
            command.CommandType = CommandType.Text;
            err_Msg = "";
            if (conn.State == ConnectionState.Closed)
                conn.Open();
            //SqlDataAdapter da = new SqlDataAdapter(command, conn);
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = command;
            da.Fill(dt);
            //count = dt.Rows.Count;
            return dt;

        }
        catch (Exception)
        {
            throw;
        }
        finally
        {
            conn.Close();
        }
    }
    
    public int ExecuteQuerry(SqlCommand cmd)
    {
        try
        {
            err_Msg = "";
            if (conn.State == ConnectionState.Closed)
                conn.Open();
            //SqlCommand cmd = new SqlCommand(command, conn);
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conn;

            int rowsInfected = cmd.ExecuteNonQuery();
            if (rowsInfected > 0)
            {
                return rowsInfected;
            }
            else
            {
                err_Msg = "Insertion Unsuccessful.";
                return 0;
            }
        }
        catch (Exception)
        {
            throw;
        }
        finally
        {
            conn.Close();
        }
    }
    
    public int ExecuteScalar(SqlCommand cmd)
    {
        try
        {
            conn.Open();
            //SqlCommand cmd = new SqlCommand(command, conn);
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conn;

            int rowsInfected = Convert.ToInt32(cmd.ExecuteScalar());
            return rowsInfected;
        }
        catch (Exception)
        {
            throw;
        }
        finally
        {
            conn.Close();
        }
    }
    
    public string CheckQuote(string keyWord)
    {
        return keyWord.Replace("'", "''");
    }

    public SqlTransaction GetSqlTransaction()
    {
        conn.Open();
        SqlTransaction transaction;

        // Start a local transaction.
        transaction = conn.BeginTransaction();
        return transaction;
    }
}