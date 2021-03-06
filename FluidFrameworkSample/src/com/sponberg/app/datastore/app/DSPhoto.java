// This class is AutoGenerated code by the MakeDatastoreClasses tool.
// DO NOT EDIT.

package com.sponberg.app.datastore.app;

import com.sponberg.fluid.datastore.DSBase;
import com.sponberg.fluid.datastore.SQLTable;

public class DSPhoto extends DSBase implements SQLTable {

	// Table name

	public static final String _table = "photo";

	// Table fields

	public static final String id = "id"; // Integer
	public static final String data = "data"; // byte[]

	// Methods

	public void setId(Integer id) {
		this._data.put(DSPhoto.id, id);
	}

	public Integer getId() {
		 return (Integer) _data.get(DSPhoto.id);
	}

	public void setData(byte[] data) {
		this._data.put(DSPhoto.data, data);
	}

	public byte[] getData() {
		 return (byte[]) _data.get(DSPhoto.data);
	}

	public String _getTableName() {
		return DSPhoto._table;
	}

}