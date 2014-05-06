CyanogenMod 10.1
=============================
Device Tree for Samsung Galaxy Ace 2
(GT-I8160)

How to build:
=============

- Make a workspace

  $ mkdir -p ~/cyanogenmod/system
  $ cd ~/cyanogenmod/system
  
- Do repo init & sync

  repo init https://github.com/TeamCanjica/android.git -b cm-10.1
  
  repo sync -j32

- Setup vendor
  
  ./vendor/cm/get-prebuilts
  
  . build/envsetup.sh

- Pull all not merged fixes from gerrit:
  
        cd frameworks/av
        git fetch http://review.cyanogenmod.org/CyanogenMod/android_frameworks_av refs/changes/21/46421/3
        git cherry-pick FETCH_HEAD
        cd ../..
        cd system/core
        git fetch http://review.cyanogenmod.org/CyanogenMod/android_system_core refs/changes/32/45032/3
        git cherry-pick FETCH_HEAD
        cd ../..

- Build CM10.1
  
  brunch codina


- Thanks : CyanogenMod, dh-harald, Sakura Droid, jereksel, diego-ch, frapeti, OliverG96

