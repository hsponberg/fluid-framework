// This class is AutoGenerated code by the MakeDatastoreClasses tool.
// DO NOT EDIT.

package com.sponberg.app.datastore.app;

import com.sponberg.fluid.datastore.DSBase;
import com.sponberg.fluid.datastore.SQLTable;

public class DSLibrary extends DSBase implements SQLTable {

	// Table name

	public static final String _table = "library";

	// Table fields

	public static final String id = "id"; // Integer
	public static final String name = "name"; // String
	public static final String address1 = "address1"; // String
	public static final String address2 = "address2"; // String

	// Methods

	public void setId(Integer id) {
		this._data.put(DSLibrary.id, id);
	}

	public Integer getId() {
		 return (Integer) _data.get(DSLibrary.id);
	}

	public void setName(String name) {
		this._data.put(DSLibrary.name, name);
	}

	public String getName() {
		 return (String) _data.get(DSLibrary.name);
	}

	public void setAddress1(String address1) {
		this._data.put(DSLibrary.address1, address1);
	}

	public String getAddress1() {
		 return (String) _data.get(DSLibrary.address1);
	}

	public void setAddress2(String address2) {
		this._data.put(DSLibrary.address2, address2);
	}

	public String getAddress2() {
		 return (String) _data.get(DSLibrary.address2);
	}

	public String _getTableName() {
		return DSLibrary._table;
	}

}