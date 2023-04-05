<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kadar Laszlo</title>
    <link rel="stylesheet" href="stilus.css">
</head>
<body>
    <main>
    <?php
    function tablazatcsinal($sorko){
    $html = '<table>';
    $html .= '<tr>';
    foreach($sorko[0] as $kulcs=>$ertek){
            $html .= '<th>' . htmlspecialchars($kulcs) . '</th>';
        }
    $html .= '</tr>';
    foreach( $sorko as $kulcs=>$ertek){
        $html .= '<tr>';
        foreach($ertek as $kulcs2=>$ertek2){
            $html .= '<td>' . htmlspecialchars($ertek2) . '</td>';
        }
        $html .= '</tr>';
    }
    $html .= '</table>';
    return $html;
}
$sorko = array(
    array('elso sor'=>'bono', 'utso'=>'nagy', 'email'=>'bonoevin@mail.co', 'ceg'=>'Panasonic coo'),
    array('masodik sor'=>'hunor', 'utso'=>'lajos', 'email'=>'keresztesh@hor.org', 'ceg'=>'SharpTVS'),
    array('elso'=>'zsombor', 'utso'=>'irpa', 'email'=>'zsomshb21@sgg.org', 'ceg'=>'Ltd.')
);
echo tablazatcsinal($sorko);
?>
</main>
</body>
</html>