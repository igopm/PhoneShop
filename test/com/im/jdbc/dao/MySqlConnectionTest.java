package com.im.jdbc.dao;

import static org.junit.Assert.assertFalse;

import java.sql.SQLException;

import org.junit.Test;


public class MySqlConnectionTest {
	@Test
	public void testGetConnection() throws SQLException {
		assertFalse(MySqlConnection.getConnection().isClosed());
	}

}
