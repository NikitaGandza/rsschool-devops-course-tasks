# rsschool-devops-course-tasks

## Task 1 <br/>
### Install AWS CLI and Terraform <br/>
AWS and Terraform versions <br/>
<img width="438" alt="Screenshot 2025-06-11 at 22 03 10" src="https://github.com/user-attachments/assets/1799d076-e5a2-4069-8683-fe919efe09dc" />
<br/>
<br/>
AWS non-root account with MFA enabled and secrets generated <br/>
<img width="1135" alt="Screenshot 2025-06-11 at 22 10 22" src="https://github.com/user-attachments/assets/4fab5c17-b323-478c-94ef-6d989630e6f3" />
<br/>
<br/>
### AWS setup
<br/>
Create an AWS account(root user) <br/>
Create a non-root user with necessary permissions <br/>
Create a role GithubActionsRole with necessary permissions <br/>
Ceate identity provider (OIDC provider) - `token.actions.githubusercontent.com` and assign it to the role - `GithubActionsRole` <br/>
NOTE! Updated thumbnail in Endpoint verification from this link: https://github.blog/changelog/2022-01-13-github-actions-update-on-oidc-based-deployments-to-aws/ <br/>

<br/>
To understand more about how to connect Github and AWS, I've used this article <br/>
`https://aws.amazon.com/blogs/security/use-iam-roles-to-connect-github-actions-to-actions-in-aws/`
<br/>
### GitHub Actions
<br/>
Create a script `.github/workflows/blank.yml` to test AWS connection <br/>
<img width="1875" alt="Screenshot 2025-06-12 at 14 00 53" src="https://github.com/user-attachments/assets/b66a4218-b9d3-4527-8469-d5e505bd3f11" />
