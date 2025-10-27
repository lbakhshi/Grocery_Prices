<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8" indent="yes"/>
<xsl:template match="*[local-name() = 'Fruits']">
  <html>
  <head>
    <title>Fruit List</title>
    <style>
      table {
        width: 50%;
        border-collapse: collapse;
        margin: 20px 0;
        font-family: sans-serif;
      }
      th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
      }
      th {
        background-color: #f2f2f2;
      }
    </style>
  </head>
  <body>
    <h1>Our Fruit Price List</h1>
    <table>
      <thead>
        <tr>
          <th>Fruit Name</th>
          <th>Price</th>
        </tr>
      </thead>
      <tbody>
        <xsl:for-each select="*[local-name() = 'Item']">
          <tr>
            <td><xsl:value-of select="*[local-name() = 'FruitName']"/></td>
            <td>$<xsl:value-of select="*[local-name() = 'Price']"/></td>
          </tr>
        </xsl:for-each>
      </tbody>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>