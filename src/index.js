document.body.innerHTML = `

<h2>CI time generated</h2>
<table>
  <tr>
    <th>Key</th>
    <th>Value</th>
  </tr>
  <tr>
    <td>CF_PAGES_BRANCH</td>
    <td>${process.env.CF_PAGES_BRANCH}</td>
  </tr>
  <tr>
    <td>ENV</td>
    <td>${process.env.ENV}</td>
  </tr>
  <tr>
    <td>NODE_ENV</td>
    <td>${process.env.NODE_ENV}</td>
  </tr>
</table>
`;
