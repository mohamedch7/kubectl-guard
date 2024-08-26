# kubectl-guard README

## How to Use:

1. **Create a File for the Script**: 
   - Name the file `kubectl-guard`.

2. **Change File Permissions**: 
   - Run the command: `chmod +x kubectl-guard`.

3. **Update Your Shell Configuration File (e.g., ~/.zshrc)**:
   - Open `~/.zshrc` in a text editor: `vi ~/.zshrc`.

4. **Add an Alias**:
   - Update `~/.zshrc` with the following line:
     ```bash
     alias kubectl='full-path-to/kubectl-guard'
     ```
   - Replace `full-path-to` with the actual path where the `kubectl-guard` script is located.

5. **Save the File**.

6. **Close the Terminal Session**:
   - Close your current terminal session.

7. **Start a New Terminal Session**:
   - Open a new terminal window to apply the changes.

## Notes:

- This is a small demo. Exercise caution when using it.
- Always ensure that the name of the production cluster contains the word 'prod' or you can change the variable `PROD_IDENTIFIER`.
