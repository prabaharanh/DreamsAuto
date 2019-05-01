using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;


namespace DreamsAuto
{
    public class DAL_Users
    {
        string connectionString = ConfigurationManager.ConnectionStrings["connectionDreamsAuto"].ConnectionString;
        SqlConnection connection;

       

        public void addCar(string carName, string carType, string carPrice, string carDescription, string carImage)
        {

            connection = new SqlConnection(connectionString);
            connection.Open();
            string query = "Insert into tblCars values('" + carName + "','" + carType + "', '" + carPrice + "', '" + carDescription + "', '" + carImage + "')";
            SqlCommand command = new SqlCommand(query, connection);

            command.ExecuteNonQuery();

            connection.Close();
        }

        public void addUser(string firstName,string lastName, string phoneNumber, string address, string emailID, string userName, string password)
        {

            connection = new SqlConnection(connectionString);
            connection.Open();
            string query = "Insert into tbl_Users values('" + firstName + "','" + lastName + "', '" + phoneNumber + "', '" + address + "', '" + emailID + "',  '" + userName + "',  '" + password + "')";
            SqlCommand command = new SqlCommand(query, connection);

            command.ExecuteNonQuery();

            connection.Close();
        }

        public void ResetPassword(string userID, string password)

        {



            connection = new SqlConnection(connectionString);

            connection.Open();





            string query = "update tbl_Users " +

                "SET password = '"

                + password + "'" +

                " WHERE userName = '" + userID + "'";



            SqlCommand command = new SqlCommand(query, connection);

            command.ExecuteNonQuery();

            connection.Close();





        }
        public void addCart(string carName, string carType, string carPrice, string carDescription, string carImage)
        {

            connection = new SqlConnection(connectionString);
            connection.Open();
            string query = "Insert into tblCart values('" + carName + "','" + carType + "', '" + carPrice + "', '" + carDescription + "', '" + carImage + "')";
            SqlCommand command = new SqlCommand(query, connection);

            command.ExecuteNonQuery();

            connection.Close();
        }


    }
}