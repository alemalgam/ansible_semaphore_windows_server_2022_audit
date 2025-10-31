# Windows Server 2022 CIS Audit with Ansible Semaphore

## Project Structure
- inventory/inventory.ini: Sample Windows host configuration
- playbooks/audit.yml: Basic audit checks
- playbooks/audit_windows2022.yml: CIS compliance audit-only mode
- requirements.yml: Role installation for CIS benchmark
- scripts/setup_ssh.sh: SSH key setup script
- README.md: Instructions

## Steps to Use:
1. Upload this project to Ansible Semaphore.
2. Ensure `requirements.yml` is present for role installation.
3. Create a Task Template pointing to `playbooks/audit_windows2022.yml`.
4. Assign inventory and SSH key.
5. Run the job. Results will show CIS compliance checks only (audit mode).

## Notes:
- Role source: [Ansible Galaxy](https://galaxy.ansible.com/ansible-lockdown/windows_2022_cis)
- Variable `lockdown_audit_only: true` ensures no remediation.
