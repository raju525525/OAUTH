package com.hellokoding.auth;

import java.util.Properties;
/*
import com.sap.conn.jco.JCoDestination;
import com.sap.conn.jco.JCoDestinationManager;
import com.sap.conn.jco.JCoException;
import com.sap.conn.jco.ext.DestinationDataProvider;*/
	
public class TestMySAP {/*

	public static void main(String[] args) {

		// This will create a file called mySAPSystem.jcoDestination
		String DESTINATION_NAME1 = "mySAPSystem";
		Properties connectProperties = new Properties();
		connectProperties.setProperty(DestinationDataProvider.JCO_ASHOST, "yoursaphost.yourdomain.com");
		connectProperties.setProperty(DestinationDataProvider.JCO_SYSNR, "00");
		connectProperties.setProperty(DestinationDataProvider.JCO_CLIENT, "100");
		connectProperties.setProperty(DestinationDataProvider.JCO_USER, "youruser");
		connectProperties.setProperty(DestinationDataProvider.JCO_PASSWD, "******");
		connectProperties.setProperty(DestinationDataProvider.JCO_LANG, "en");
		sap2.createDestinationDataFile(DESTINATION_NAME1, connectProperties);

		// This will use that destination file to connect to SAP
		try {
			JCoDestination destination = JCoDestinationManager.getDestination("mySAPSystem");
			System.out.println("Attributes:");
			System.out.println(destination.getAttributes());
			System.out.println();
			destination.ping();
		} catch (JCoException e) {
			e.printStackTrace();
		}

	}
*/}
