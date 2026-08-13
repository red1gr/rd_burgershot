# RD_BURGERSHOT SCRIPT FIVEM

[![GitHub license](https://img.shields.io/github/license/red1gr/rd_burgershot?style=for-the-badge&logo=apache&logoColor=white)](LICENSE)

## OVERVIEW

This is a FiveM resource designed to implement a Burger Shot establishment within GTA V. It provides the necessary framework for managing restaurant operations and food consumables, utilizing the rd-core dependency to integrate with the server environment.

## FEATURES

- **Consumable Handling:** Manages the logic and effects of consuming food and drink items.
- **Server-Side Integration:** Handles the backend processing and synchronization for restaurant activities.
- **Customizable Settings:** Allows server administrators to modify behavior via a centralized configuration file.
- **Item Documentation:** Includes a dedicated reference for the items used within the resource.

## TECH STACK

[![Lua](https://img.shields.io/badge/Lua-5.4-2C2D72.svg?style=for-the-badge&logo=lua&logoColor=white)](https://www.lua.org/)
[![FiveM](https://img.shields.io/badge/FiveM-Latest-orange.svg?style=for-the-badge&logo=fivem&logoColor=white)](https://fivem.net/)

### INSTALLATION

1. **Deploy Resource**
    - Place the `rd_burgershot` folder into your server's `resources` directory.
2. **Install Dependencies**
    - Ensure that `rd-core` is installed and started on your server, as it is a required dependency.
3. **Configure Settings**
    - Open `config.lua` and adjust the parameters to fit your server's requirements.
4. **Start Resource**
    - Add the following line to your `server.cfg`:
      ```cfg
      ensure rd_burgershot
      ```

## CONTRIBUTING

- WE WELCOME CONTRIBUTIONS! IF YOU HAVE SUGGESTIONS FOR IMPROVEMENTS, FEATURE REQUESTS, OR BUG REPORTS, PLEASE OPEN AN ISSUE OR SUBMIT A PULL REQUEST ON OUR GITHUB REPOSITORY.

## LICENSE

- THIS PROJECT IS LICENSED UNDER THE [APACHE-2.0](LICENSE) - SEE THE [LICENSE](LICENSE) FILE FOR DETAILS.

## SUPPORT & CONTACT

- CONTACT: [SUPPORT CONTACT](mailto:mail@red1gr.dev)
