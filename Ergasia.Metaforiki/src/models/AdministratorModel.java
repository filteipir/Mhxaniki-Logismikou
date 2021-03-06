package models;

import java.awt.Desktop;
import java.io.File;
import java.io.FileWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.swing.JFileChooser;
import javax.swing.JOptionPane;

import org.jfree.data.general.DefaultPieDataset;

public class AdministratorModel {
	
	public AdministratorModel() {}
	
	public DefaultPieDataset ComboBox(String selection) {
		DefaultPieDataset dataset = null;
		
		if (!selection.equals("None")){
			try {
				Class.forName("com.mysql.jdbc.Driver").newInstance();

				String url = "jdbc:mysql://83.212.109.15/db1?characterEncoding=UTF-8";
				String username = "root";
				String pass = "36966";
				Connection conn = DriverManager.getConnection(url, username, pass);
				Statement stm = conn.createStatement();

				int idall = 0;
				int idquery = 0;
				String query = "tracking=true";

				ResultSet rs = stm.executeQuery("select id from metaforiki");
				while(rs.next()) {
					idall++;
				}

				if (selection.equals("Fragile"))
					query = "fragile=1";
				if (selection.equals("Delivered"))
					query = "status='delivered'";
				if (selection.equals("To be Delivered"))
					query = "status='undelivered'";
			
			
				rs = stm.executeQuery("select id from metaforiki where "+query);
				
				while(rs.next()) {
					idquery++;
				}
				dataset = new DefaultPieDataset();
				
				dataset.setValue(selection, idquery);
				dataset.setValue("OK",idall - idquery);

				rs.close();
				stm.close();
				conn.close();
				
				return dataset;

			}catch(Exception e1){
				e1.printStackTrace();
			}
		}
		return dataset;
	}
	
	public void Export(){
		String filename = "myjdbcfile";
		JFileChooser chooser = new JFileChooser( );
		chooser.setSelectedFile(new File( filename + ".csv"));
		int state = chooser.showSaveDialog(null);
		File file = chooser.getSelectedFile();

		if (file != null && state == JFileChooser.APPROVE_OPTION){

			try {
				FileWriter csv = new FileWriter(file);
				Class.forName("com.mysql.jdbc.Driver").newInstance();

				String url = "jdbc:mysql://83.212.109.15/db1?characterEncoding=UTF-8";
				String username = "root";
				String pass = "36966";
				Connection conn = DriverManager.getConnection(url, username, pass);
				Statement stm = conn.createStatement();
				ResultSet rs = stm.executeQuery("select * from metaforiki");

				csv.append("ID;Name;Surname;Address;Postal Code;Country;Phone;Fragile;Tracking;Comments;Status;Date\n");

				while (rs.next()) {
					for (int i = 1; i < 13; i++){
						csv.append(rs.getString(i));
						char end = (i == 12)?'\n':';';
						csv.append(end);
					}
				}
				
				Desktop.getDesktop().open(new File(file.getAbsolutePath().replace("\\" + file.getName()," ")));
				
				csv.flush();
				csv.close();
				rs.close();
				stm.close();
				conn.close();

			}catch(Exception e1){
				JOptionPane.showMessageDialog(null, e1.getMessage());
			}
		}
	}

}
