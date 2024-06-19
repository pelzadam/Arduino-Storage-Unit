<table>
    <tr>
        <th>Date</th>
        <th>Log</th>
    </tr>
        <?php foreach ($data as $row): ?>
      <tr>
        <td><?= $row['timestamp'] ?></td>
        <td><?= $row['log'] ?></td>
      </tr>
     <?php endforeach ?>
</table>