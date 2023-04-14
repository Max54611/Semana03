package datos;
import java.sql.*;

import javax.swing.JOptionPane;
public class Mantenimiento {
	public Connection conn;
	public Statement sen;
	public PreparedStatement sen2;
	public ResultSet data;
	public String driver="com.mysql.cj.jdbc.Driver";
	public String cadena="jdbc:mysql://localhost/VENTAS2023";
	public String usuario="root";
	public String clave="";
	public Connection conectar() {
		try{
			Class.forName(driver);
			DriverManager.getConnection(cadena,usuario,clave);
		}catch (ClassNotFoundException e1) {
			JOptionPane.showMessageDialog(null,"error en el driver");
		}catch (SQLException e2) {
			JOptionPane.showMessageDialog(null, "Error en la conexión");
		}
		return conn;	
	}
	public ResultSet consulta(String sql) {
		try {
			sen=conectar().createStatement();
			data=sen.executeQuery(sql);
		}catch(SQLException e3) {
			JOptionPane.showMessageDialog(null, "Error en la consulta");
		}
		return data;
	}
	
	public boolean insertar(int codigo, String nombre, int cantidad, double precio) {
		try {
			String sql="insert into producto values(?,?,?,?)";
			sen2=conectar().prepareStatement(sql);
			sen2.setInt(1, codigo);
			sen2.setString(2, nombre);
			sen2.setInt(3, cantidad);
			sen2.setDouble(4, precio);
			sen2.executeUpdate();
		}catch (SQLException e3) {
			JOptionPane.showMessageDialog(null,"error en la inserción");
		}
		return true;
	}
}
