import Table from '@mui/material/Table'
import TableBody from '@mui/material/TableBody'
import TableCell from '@mui/material/TableCell'
import TableContainer from '@mui/material/TableContainer'
import TableHead from '@mui/material/TableHead'
import TableRow from '@mui/material/TableRow'


function List() {
  let data = [
    [true, 'Beef'],
    [false, 'Beef'],
    [false, 'Sauce'],
    [false, 'Lettuce'],
    [true, 'Cheese'],
    [false, 'Pickles'],
    [true, 'Onions'],
    [false, 'Sesame seeds'],
    [false, 'Buns']
  ]

  return (
    <div className="list-container">
      <TableContainer>
        <Table>
          <TableHead>
            <TableRow>
              <TableCell style={{ fontWeight: 'bold' }}>Status</TableCell>
              <TableCell style={{ fontWeight: 'bold' }}>Item</TableCell>
            </TableRow>
          </TableHead>
          <TableBody>
            {data.map((row) => (
              <TableRow>
                <TableCell>{row[0].toString()}</TableCell>
                <TableCell>{row[1]}</TableCell>
              </TableRow>
            ))}
          </TableBody>
        </Table>
      </TableContainer>
    </div>
  );
}

export default List;
