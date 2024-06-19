<form class="shelfInput" method="post">
    <label for="name">ID</label>
    <input type="text" name="name" id="name" /><br />
    <label for="device">Device</label>
    <input type="text" name="device" id="device" /><br />
    <button type="submit" name="addShelf">Send</button>
</form>

<form method="post">
    <table>
        <tr>
            <th>Name</th>
            <th>Device</th>
            <th>Actual Weight(g)</th>
            <th>Registered Weight(g)</th>
            <th></th>
        </tr>
        <?php foreach ($data as $row): ?>
          <tr>
            <td><?= $row['name'] ?></td>
            <td><?= $row['device'] ?></td>
            <td><?= $row['actual_weight'] ?></td>
            <td><?= $row['registered_weight'] ?></td>
            <td><button type="submit" name="deleteShelf" value="<?= $row['id'] ?>">Delete</button></td>
          </tr>
         <?php endforeach ?>
    </table>
</form>