# rsync-deploy

Deploy to a remote server using rsync.

example usage:
```
- name: deploy to server
        uses: AEnterprise/rsync-deploy@v1.0
        env:
          DEPLOY_KEY: ${{ secrets.SERVER_SSH_KEY }}
          ARGS: "-e -c -r --delete"
          SERVER_PORT: ${{ secrets.SERVER_PORT }}
          FOLDER: "build"
          SERVER_IP: ${{ secrets.SERVER_IP }}
          USERNAME: ${{ secrets.USERNAME }}
          SERVER_DESTINATION: ${{ secrets.SERVER_DESTINATION }}
```
