# Data Cleaning Log

## Removed Columns

### Row ID
Reason:
Technical row identifier with no direct analytical value.

### Postal Code
Reason:
Approximately 80.5% missing values and limited analytical value
given the availability of City, State, Country, and Region.

## Data Type Changes

Customer ID:
Converted to string because it is an identifier.

Product ID:
Converted to string because it is an identifier.

Order ID:
Converted to string because it is an identifier.

Order Date:
Converted to datetime.

Ship Date:
Converted to datetime.

## Text Standardization

Leading and trailing whitespace was removed from categorical
and descriptive text columns.

## Values Preserved

Negative Profit values were preserved because they represent
legitimate loss-making transactions.

## Duplicate Handling

Complete duplicate rows were checked and handled based on
the validation results.

## Validation

The cleaned dataset was revalidated after applying the
cleaning operations.
