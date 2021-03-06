#Introduce

> A small script to run applications to start your day! :grin:

Get tired of opening many Chrome tabs and applications to be ready to work.
So, let me handle it for you.

#Setup

- Clone it `git clone https://github.com/duykhoa/apps_schedule.git ~/.open_list`

- Rename **apps.list.sample** and **chrome_tabs.list.sample** to **apps.list** and **chrome_tabs.list**

- Change the apps.list: one app a line

  E.g.

  ```
    gitter
    Google\ Chrome
    Slack
    uTorrent
    Flux
    MEGAsync
  ```

  The same for `chrome_tabs.list`

#Advance

1. To start this script as `open_list`, you can call this line
  ```
    ln -s ~/.open_list/open_list.sh /usr/local/bin/open_list
  ```
- Set up a cronjob to run it automatically, follow this instruction
  - Do step 1
  - open Cron jobs by this command `crontab -e`, add this line
    ```
      0 9 * * 1,2,3,4 /bin/bash -l -c "open_list"
    ```

    *you don't need to do it on Saturday and Sunday, right?*
  -  Change 9 (AM) to any time

#Uninstall
Remove the folder, plus `rm /user/local/bin/open_list` to remove the symlink.

**Hope it useful for you, give me some PRs to improve it** :heart_eyes: :heart_eyes: :heart_eyes:
