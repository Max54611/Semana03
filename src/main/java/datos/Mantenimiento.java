package datos;
import java.sql.*;

import javax.swing.JOptionPane;
public class Mantenimiento {
	public Connection conn;
	public Statement sen;
	public ResultSet data;
	public String driver="com.mysql.cj.jdbc.Driver";
	public String cadena="jdbc:mysql://localhost/base";
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

}
