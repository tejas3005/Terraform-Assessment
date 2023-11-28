
**Test Question: Google Cloud Platform (GCP) Virtual Machine Provisioning and Network Configuration**

**Instructions:**
- Use Terraform to create a Virtual Machine (VM) in Google Cloud Platform (GCP).
- The VM should have a public IP address.
- Configure the firewall rules to allow incoming traffic on ports 22 and 3333.

**Requirements:**
1. Create a GCP project for this task.
2. Use Terraform for infrastructure provisioning.
3. Ensure the VM has the following specifications:
   - Operating System: Ubuntu 20.04 LTS
   - Machine Type: n1-standard-1
4. The VM should be named "test-vm" or a name of your choice.
5. Attach a public IP address to the VM.
6. Configure firewall rules to allow incoming traffic on ports 22 (SSH) and 3333.

**Deliverables:**
- Provide the Terraform configuration files.
- Include a brief explanation of your Terraform code.
- Verify the setup by attempting to SSH into the VM using the public IP address.

**Note:**
- Make sure necessary GCP credentials and authentication are in place.
- Ensure that your Terraform code is well-organized and follows best practices.
