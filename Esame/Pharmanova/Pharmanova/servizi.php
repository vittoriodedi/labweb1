<?php
session_start();
?>
<!DOCTYPE html>
<html lang="it">
    <head>
        <title>Pharmanova</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="stile/style.css">
        <link rel="stylesheet" href="stile/style_servizi.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Aboreto&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lora:ital,wght@0,400..700;1,400..700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />        
    </head>

    <body>

        <header>
            <div id="head">

                <div id="orari">
                    <p id="interlinea_s">Orari di apertura:</p>
                    <p id="interlinea_g">Lun-Sab:  8:30 - 19:30</p>
                    <?php
                        date_default_timezone_set('Europe/Rome');
                        $currentDay = date('N');
                        $currentTime = date('H:i');

                        $isOpen = false;

                        if ($currentDay >= 1 && $currentDay <= 6) {
                            if ($currentTime >= '08:30' && $currentTime <= '19:30') {
                                $isOpen = true;
                            }
                        }

                        if ($isOpen) {
                            echo '<p style="color: green;">Aperti ora</p>';
                        } else {
                            echo '<p style="color: red;">Chiusi ora</p>';
                        }
                    ?>
                </div>

                <div id="logo">
                    <a href="index.php"><img src="immagini/PharmaNova_logo1.png" alt="logo" id="logo_img"></a>
                    <div id="testo_logo">
                        <h1>PHARMANOVA</h1>
                        <h2>dal 1824</h2>
                    </div>
                    
                </div>

                <div class="header-links">
                    <?php
                        if (!isset($_SESSION['username'])) {
                            echo '<form action="cart.php">
                                    <button id="link_shopping_cart">
                                        <span class="material-symbols-outlined">shopping_cart</span>
                                    </button>
                                </form>';
                        }
                    ?>
                    <div id="account-button-container">
                        <!-- Questo contenuto verrà aggiornato tramite JavaScript -->
                    </div>
                </div>
            </div>

            <nav>
                <ul>
                    <li><a href="index.php">Home</a></li>
                    <li><a href="servizi.php" class="active">Servizi</a></li>
                    <?php
                        if (isset($_SESSION['username'])) {
                            echo '<li><a href="inserimento_p.php">Shop</a></li>';
                        }else{
                            echo '<li><a href="shop.php">Shop</a></li>';
                        }
                    ?>
                    <?php
                        if (isset($_SESSION['username'])) {
                            echo '<li><a href="d_prenotazioni.php">Prenotazioni</a></li>';
                        }else{
                            echo '<li><a href="prenotazioni.php">Prenotazioni</a></li>';
                        }
                    ?>
                    <li><a href="contatti.php">Contatti</a></li>
                </ul>
            </nav>
        </header>
    
        <main>
            <h1>Servizi</h1>
            <div class="services-container">
                <div class="service">
                    <img src=".\immagini\consulsenza.jpg" alt="consulenza farmaceutica">
                    <h2>Consulenza Farmaceutica</h2>
                    <p>Offriamo consulenze personalizzate per aiutarti a gestire la tua salute e il tuo benessere. I nostri farmacisti esperti sono a tua disposizione per rispondere a tutte le tue domande sui farmaci e sui trattamenti.</p>
                </div>
                <div class="service">
                    <img src=".\immagini\analisi_sangue.jpg" alt="analisi del sangue">
                    <h2>Analisi del Sangue</h2>
                    <p>Presso la nostra farmacia è possibile effettuare analisi del sangue rapide e accurate. I risultati saranno disponibili in breve tempo e potrai discuterli con i nostri esperti per capire meglio il tuo stato di salute.</p>
                </div>
                <div class="service">
                    <img src=".\immagini\esami_urine.jpg" alt="esami delle urine">
                    <h2>Esami delle Urine</h2>
                    <p>Offriamo esami delle urine per monitorare la tua salute renale e rilevare eventuali infezioni o altre condizioni. I nostri farmacisti ti guideranno attraverso il processo e ti aiuteranno a interpretare i risultati.</p>
                </div>
                <div class="service">
                    <img src=".\immagini\ECG.jpg" alt="elettrocardiogramma">
                    <h2>ECG</h2>
                    <p>Effettuiamo elettrocardiogrammi (ECG) per monitorare la salute del tuo cuore. Il nostro personale qualificato eseguirà l'esame e ti fornirà una spiegazione dettagliata dei risultati.</p>
                </div>
                <div class="service">
                    <img src=".\immagini\vaccinazione.jpg" alt="vaccinazione">
                    <h2>Vaccinazioni</h2>
                    <p>La nostra farmacia offre servizi di vaccinazione per proteggerti da diverse malattie. Contattaci per sapere quali vaccini sono disponibili e per prenotare un appuntamento.</p>
                </div>
                <div class="service">
                    <img src=".\immagini\consulenza_nutrizionale.jpg" alt="consulenza nutrizionale">
                    <h2>Consulenza Nutrizionale</h2>
                    <p>Offriamo consulenze nutrizionali per aiutarti a seguire una dieta equilibrata e migliorare il tuo benessere generale. I nostri esperti ti forniranno consigli personalizzati in base alle tue esigenze.</p>
                </div>
            </div>
        </main>
 
        <footer>
            <div class="footer-content">
                <div class="footer-section about">
                    <h2>Pharmanova</h2>
                    <p>Pharmanova è una farmacia storica che offre una vasta gamma di servizi e prodotti per la salute e il benessere. Dal 1824, ci impegniamo a fornire il miglior servizio ai nostri clienti.</p>
                </div>
                <div class="footer-section links">
                    <h2>Link Utili</h2>
                    <ul>
                        <li><a href="index.php">Home</a></li>
                        <li><a href="servizi.php">Servizi</a></li>
                        <?php
                            if (isset($_SESSION['username'])) {
                                echo '<li><a href="inserimento_p.php">Shop</a></li>';
                            }elseif (isset($_SESSION['firstName'])) {
                                echo '<li><a href="shop.php">Shop</a></li>';
                            }else{
                                echo '<li><a href="scelta_login.php">Shop</a></li>';
                            }
                        ?>
                        <?php
                            if (isset($_SESSION['username'])) {
                                echo '<li><a href="d_prenotazioni.php">Prenotazioni</a></li>';
                            }else{
                                echo '<li><a href="prenotazioni.php">Prenotazioni</a></li>';
                            }
                        ?>
                        <li><a href="contatti.php">Contatti</a></li>
                    </ul>
                </div>
                <div class="footer-section contact">
                    <h2>Contatti</h2>
                    <address>
                        <section id="indirizzo">
                            <span class="material-symbols-outlined">location_on</span>
                            <p>Via Roma, 123, 00100 Roma RM</p>
                        </section>
                        <section id="telefono">
                            <span class="material-symbols-outlined">phone</span>
                            <p>+39 06 12345678</p>
                        </section>
                        <section id="mail">
                            <span class="material-symbols-outlined">email</span>
                            <p>info@pharmanova.it</p>
                        </section>
                    </address>
                </div>
            </div>
            <div class="footer-bottom">
                &copy; 2024 Pharmanova | Tutti i diritti riservati
            </div>
        </footer>
        <script>
            const isLoggedIn = <?php echo isset($_SESSION['firstName']) ? 'true' : 'false'; ?>;
            const initialFn = '<?php echo isset($_SESSION['firstName']) ? strtoupper($_SESSION['firstName'][0]) : ''; ?>';
            const initialLn = '<?php echo isset($_SESSION['lastName']) ? strtoupper($_SESSION['lastName'][0]) : ''; ?>';
        </script>
        <script src="script/script.js"></script>
    </body>
    
</html>