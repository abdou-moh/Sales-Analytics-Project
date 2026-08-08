Dataset Shape
-------------
Rows: 51,291
Columns: 24

Missing Values
--------------
Postal Code: 41,296
Other columns: 0

Duplicate Rows
--------------
No complete duplicate rows identified.

Potential Issues
----------------
1. Postal Code contains approximately 80.5% missing values.
2. Date columns require validation to ensure they are correctly stored as dates.
3. Profit contains negative values, which represent loss-making transactions and should not be converted to positive values.
4. Identifier columns should be treated as categorical/text identifiers rather than numerical measures.
5. Numeric fields such as Quantity, Discount, Sales, Profit, and Shipping Cost require range and consistency validation.
