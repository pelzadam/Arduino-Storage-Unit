<form class="wareInput" method="post">
    <label for="ware">Name</label>
    <input type="text" name="ware" id="ware" /><br />
    <label for="shef">Shelf</label>
    <select name="shelf" id="shelf">
    <?php foreach ($shelves as $row): ?>
      <option value="<?= $row['id'] ?>">
        <?= $row['name'] ?>
      </option>
     <?php endforeach ?>
    </select><br />
    <label for="weight">Weight(g)</label>
    <input type="number" name="weight" id="weight" step="0.1" /><br />
    <label for="barcode">Barcode</label>
    <input type="text" name="barcode" id="barcode" min="6" max="6" /><br />
    <button type="submit" name="addWare">Send</button>
</form>

<form method="get">
  <input class="search" type="text" name="search" placeholder="Search..">
  <button type="submit">Send</button>
</form>

<form method="post">
  <table>
      <tr>
          <th>Name</th>
          <th>Shelf</th>
          <th>Weight(g)</th>
          <th>Barcode</th>
          <th></th>
      </tr>
      <?php foreach ($data as $row): ?>
        <tr>
          <td><?= $row['name'] ?></td>
          <td><?= $row['shelf'] ?></td>
          <td><?= $row['weight'] ?></td>
          <td><?= $row['barcode'] ?></td>
          <td><button type="submit" name="deleteWare" value="<?= $row['id'] ?>">Delete</button></td>
        </tr>
       <?php endforeach ?>
  </table>
</form>



