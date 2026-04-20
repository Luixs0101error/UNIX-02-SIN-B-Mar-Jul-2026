 1  git remote -v
    2  git fetch upstream
    3  git checkout -b eval_p2_1_v1 upstream/eval_p2_1_v1
    4  git push -u origin eval_p2_1_v1
    5  history
    6  cd nebula
    7  mv registros bitacoras
    8  ls
    9  mkdir bitacoras
   10  mkdir borradores
   11  git add .
   12  git commit -m "Fix problema 1: estructura de directorios"
   13  pwd
   14  ls
   15  touch bitacoras/.gitkeep borradores/.gitkeep
   16  git add .
   17  git commit -m "Fix problema 1: estructura de directorios"
   18  ls -R
   19  ls
   20  mv cosmos.txt bitacoras/
   21  mv estrella.bak estrella.conf
   22  ls bitacoras/
   23  ls
   24  git add .
   25  git commit -m "Fix problema 2: archivos movidos y renombrados"
   26  ls -l bitacoras/cosmos.txt
   27  chmod 640 bitacoras/cosmos.txt
   28  ls -l bitacoras/cosmos.txt
   29  git add .
   30  git commit -m "Fix problema 3: permisos numericos 640 en cosmos.txt"
   31  ls -l bitacoras/cosmos.txt
   32  ls -l galaxia.sh estrella.conf
   33  chmod u+x galaxia.sh
   34  chmod o-w estrella.conf
   35  ls -l galaxia.sh estrella.conf
   36  git add .
   37  git commit -m "Fix problema 4: permisos simbolicos corregidos"
   38  ls -l galaxia.sh
   39  chmod u+s galaxia.sh
   40  ls -l galaxia.sh
   41  git add .
   42  git commit -m "Fix problema 5: SUID activado"
   43  ls -l galaxia.sh
   44  ls -ld /tmp/nebula_zone
   45  sudo mkdir -p /tmp/nebula_zone
   46  ls -ld /tmp/nebula_zone
   47  sudo chmod +t /tmp/nebula_zone
   48  ls -ld /tmp/nebula_zone
   49  sudo chmod 777 /tmp/nebula_zone
   50  sudo chmod +t /tmp/nebula_zone
   51  ls -ld /tmp/nebula_zone
   52  git add .
   53  git commit -m "Fix problema 6: Sticky bit"
   54  gpg --batch --generate-key <<EOF
Key-Type: default
Subkey-Type: default
Name-Real: aurora
Name-Email: aurora@nebula.lab
Expire-Date: 0
%no-protection
%commit
EOF

   55  gpg --batch --generate-key <<EOF
Key-Type: RSA
Key-Length: 2048
Subkey-Type: RSA
Subkey-Length: 2048
Name-Real: aurora
Name-Email: aurora@nebula.lab
Expire-Date: 0
%no-protection
%commit
EOF

   56  gpg --list-keys
   57  gpg --output nebula/bitacoras/cosmos.txt.gpg --encrypt --recipient aurora@nebula.lab nebula/bitacoras/cosmos.txt
   58  ls bitacoras
   59  gpg --output bitacoras/cosmos.txt.gpg --encrypt --recipient aurora@nebula.lab bitacoras/cosmos.txt
   60  pwd
   61  ls
   62  find . -name cosmos.txt
   63  gpg --output bitacoras/cosmos.txt.gpg --encrypt --recipient aurora@nebula.lab bitacoras/cosmos.txt
   64  ls bitacoras
   65  git add .
   66  git commit -m "Fix problema 7: generacion de llaves"
   67  gpg --clearsign -o estrella.conf.asc estrella.conf
   68  gpg --verify galaxia.sh.sig galaxia.sh
   69  rm galaxia.sh.sig
   70  gpg --detach-sign -o galaxia.sh.sig galaxia.sh
   71  gpg --verify galaxia.sh.sig galaxia.sh
   72  gpg --clearsign -o estrella.conf.asc estrella.conf
   73  git add .
   74  git commit -m "Fix problema 8: firmas GPG corregidas y creadas"
   75  history