# Safe-kubectl README

## How to Use:

1. **Create a File for the Script**: 
   - Name the file as `safe-kubectl`.

2. **Change File Permissions**: 
   - Run the command: `chmod +x safe-kubectl`.

3. **Update Your Shell Configuration File (e.g., ~/.zshrc)**:
   - Open `~/.zshrc` in a text editor.

4. **Add an Alias**:
   - Update `~/.zshrc` with the following line:
     ```
     alias kubectl='full-path-to/safe-kubectl'
     ```
   - Replace `full-path-to` with the actual path where `safe-kubectl` script is located.

5. **Save the File**.

## Notes:

- This is a small demo. Exercise caution when using it.
- Always ensure that the name of the production cluster contains the word 'prod'.
