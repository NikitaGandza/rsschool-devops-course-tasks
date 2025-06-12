# rsschool-devops-course-tasks

## Task 1 <br/>
### Install AWS CLI and Terraform <br/>
AWS and Terraform versions <br/>
<img width="438" alt="Screenshot 2025-06-11 at 22 03 10" src="https://github.com/user-attachments/assets/1799d076-e5a2-4069-8683-fe919efe09dc" /> <br/>
### AWS setup <br/>
Create an AWS account(root user) <br/>
Create a non-root user with necessary permissions <br/>
Create a role `GithubActionsRole` with necessary permissions <br/>
Ceate identity provider (OIDC provider) - `token.actions.githubusercontent.com` and assign it to the role - `GithubActionsRole` <br/>
NOTE! Updated thumbnail in Endpoint verification from this link: https://github.blog/changelog/2022-01-13-github-actions-update-on-oidc-based-deployments-to-aws/ <br/>
Create S3 bucket `terraform-states-nikita`
<br/>
To understand more about how to connect Github and AWS, I've used this [article] (https://aws.amazon.com/blogs/security/use-iam-roles-to-connect-github-actions-to-actions-in-aws/) <br/>
### GitHub Actions <br/>
Create a script `.github/workflows/blank.yml` to test AWS connection <br/>
<img width="1875" alt="Screenshot 2025-06-12 at 14 00 53" src="https://github.com/user-attachments/assets/b66a4218-b9d3-4527-8469-d5e505bd3f11" />
<br/>
### Test Terraform locally <br/>
Let's create a dummy s3 bucket to check Terraform code locally <br/>
Add environment variables:
```
export AWS_ACCESS_KEY_ID=""
export AWS_SECRET_ACCESS_KEY=""
export AWS_DEFAULT_REGION=""
``` 
Run: <br/>
`terraform init` <br/>
`terraform plan` <br/>
`terraform apply`
## Evaluation Criteria (100 points for covering all criteria)

1. **MFA User configured (10 points)**

   - Screenshot of the non-root account secured by MFA (ensure sensitive information is not shared) is presented <br/>
   <img width="1135" alt="Screenshot 2025-06-11 at 22 10 22" src="https://github.com/user-attachments/assets/4fab5c17-b323-478c-94ef-6d989630e6f3" />
2. **Bucket and GithubActionsRole IAM role configured (20 points)**

   - Terraform code is created and includes:
     - Provider initialization
     - Creation of S3 Bucket

3. **Github Actions workflow is created (30 points)**

   - Workflow includes all jobs

4. **Code Organization (10 points)**

   - Variables are defined in a separate variables file.
   - Resources are separated into different files for better organization.

5. **Verification (10 points)**

   - Terraform plan is executed successfully

6. **Additional Tasks (20 points)💫**
   - **Documentation (5 points)**
   - Document the infrastructure setup and usage in a README file.
   - **Submission (5 points)**
   - A GitHub Actions (GHA) pipeline is passing
   - **Secure authorization (10 points)**
   - IAM role with correct Identity-based and Trust policies used to connect GitHubActions to AWS.
