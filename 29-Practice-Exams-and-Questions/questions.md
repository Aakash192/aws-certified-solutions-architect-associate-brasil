# Review Questions

## Question 1

A web application must stay available during the failure of an Availability Zone. Traffic must be distributed automatically across healthy instances. Which approach fits best?

A) A single EC2 instance with a daily snapshot.
B) An Auto Scaling Group across multiple AZs behind an Application Load Balancer.
C) A larger EC2 instance in a public subnet.
D) A manual AMI backup before each deploy.

<details>
<summary><strong>Show answer</strong></summary>

✅ **Correct answer:** B

**Explanation:**
A multi-AZ ASG with an ALB distributes traffic to healthy targets and keeps capacity even when one AZ fails.

**Why option A is wrong:**
A snapshot helps with recovery, but it does not deliver high availability during the failure.

</details>

## Question 2

A company wants to reduce the cost of accessing S3 from private workloads in a VPC, without exposing traffic to the internet. Which choice is most appropriate?

A) A NAT Gateway for all S3 access.
B) An Internet Gateway associated with the private subnet.
C) A VPC Gateway Endpoint for S3.
D) An Elastic IP on each private instance.

<details>
<summary><strong>Show answer</strong></summary>

✅ **Correct answer:** C

**Explanation:**
A Gateway Endpoint for S3 keeps traffic on the AWS network and reduces the dependency on a NAT Gateway for that access.

**Why option A is wrong:**
It works for egress, but it adds cost and is not the most direct option for private S3 access.

</details>

## Question 3

A relational database needs automatic failover with minimal interruption. The main goal is not read scaling. Which feature fits best?

A) RDS Multi-AZ.
B) A Read Replica in another region.
C) Export to S3 every hour.
D) EC2 with a manually installed database.

<details>
<summary><strong>Show answer</strong></summary>

✅ **Correct answer:** A

**Explanation:**
RDS Multi-AZ provides high availability with managed failover for the primary database.

**Why option B is wrong:**
A Read Replica helps with reads and DR, but it does not replace Multi-AZ for managed synchronous failover in the same scope.

</details>

## Question 4

An API receives unpredictable spikes and needs to decouple producers and consumers, accepting asynchronous processing. Which service best reduces operational risk?

A) Amazon SQS.
B) Amazon EFS.
C) AWS WAF.
D) AWS Direct Connect.

<details>
<summary><strong>Show answer</strong></summary>

✅ **Correct answer:** A

**Explanation:**
SQS absorbs spikes, decouples components and allows asynchronous processing by consumers working at different rates.

**Why option B is wrong:**
EFS is shared file storage, not a decoupling queue.

</details>

## Question 5

During the final review, a student keeps getting IAM questions wrong by choosing broad permissions. Which practice best corrects this pattern?

A) Use managed policies with full permissions to avoid getting blocked.
B) Review least privilege, resource scope and conditions in policies.
C) Ignore IAM and focus only on networking.
D) Memorize service names without analyzing the allowed actions.

<details>
<summary><strong>Show answer</strong></summary>

✅ **Correct answer:** B

**Explanation:**
Security questions on the SAA-C03 often test least privilege, correct scoping and explicit access control.

**Why option A is wrong:**
Broad permissions increase risk and usually contradict the exam's security requirements.

</details>
---

## ☁️ Follow CloudStudy

We are building a platform to help Brazilians study AWS in a more practical, organized and accessible way.

Follow CloudStudy for new materials, updates and content about AWS certifications:

- Instagram: https://www.instagram.com/cloudstudy.ai/
- LinkedIn: https://www.linkedin.com/company/cloudstudy-ai/

---

> When you want to take this topic into data scenarios, lakehouses and hands-on projects, use this as your next step: [Data Engineering on AWS](https://www.udemy.com/course/engenharia-de-dados-na-aws-do-zero-aos-projetos-reais/?referralCode=E28670B9116BA68E08A9).
