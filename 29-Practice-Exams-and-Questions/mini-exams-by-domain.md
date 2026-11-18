# Mini Practice Exams by Domain

## How to use

- 4 blocks of 5 questions (20 in total).
- Target time: 8 to 10 minutes per block.
- Grade yourself right away and log each mistake in the notebook.

## Block A: Resilience

1. A scenario requires automatic failover between zones with minimal downtime.
A) A single larger instance. B) Multi-AZ with native monitoring and failover. C) Manual weekly backup. D) Vertical scaling only.

<details>
<summary><strong>Show answer</strong></summary>

✅ **Correct answer:** B

**Explanation:** Multi-AZ handles an AZ failure with automatic switchover and less downtime.

</details>

2. An application with unpredictable spikes must absorb load without losing requests.
A) Decoupled queue + elastic consumers. B) Fixed synchronous processing. C) Manual retry on the client. D) Block extra requests.

<details>
<summary><strong>Show answer</strong></summary>

✅ **Correct answer:** A

**Explanation:** A queue protects the producer and lets consumers scale with the backlog.

</details>

3. DR requirement with a low RPO and moderate cost.
A) Annual backup. B) Pilot light. C) No replication. D) Local snapshots only.

<details>
<summary><strong>Show answer</strong></summary>

✅ **Correct answer:** B

**Explanation:** Pilot light balances cost with faster recovery than plain backups.

</details>

4. High availability for a transactional relational database.
A) Read replica only. B) Multi-AZ. C) Local cache. D) Spot instance.

<details>
<summary><strong>Show answer</strong></summary>

✅ **Correct answer:** B

**Explanation:** Multi-AZ prioritizes write continuity with managed failover.

</details>

5. Global distribution of static content with low latency.
A) CloudFront. B) Single-region EC2. C) NAT Gateway. D) SQS.

<details>
<summary><strong>Show answer</strong></summary>

✅ **Correct answer:** A

**Explanation:** CloudFront delivers content at the edge and reduces latency caused by distance.

</details>

## Block B: Performance

6. Massive, repetitive reads of hot session data.
A) Managed cache. B) Daily snapshot. C) Manual log. D) ASG without a cache.

<details>
<summary><strong>Show answer</strong></summary>

✅ **Correct answer:** A

**Explanation:** An in-memory cache reduces latency and takes load off the database.

</details>

7. An API with variable throughput and low operation.
A) Serverless with automatic scaling. B) Fixed EC2. C) Cron process. D) Monolith without a load balancer.

<details>
<summary><strong>Show answer</strong></summary>

✅ **Correct answer:** A

**Explanation:** Serverless adjusts capacity to demand with no server management.

</details>

8. DynamoDB with irregular reads and spikes.
A) On-demand capacity mode. B) Static provisioned capacity without autoscaling. C) Local database. D) CSV spreadsheet.

<details>
<summary><strong>Show answer</strong></summary>

✅ **Correct answer:** A

**Explanation:** On-demand absorbs variation and avoids throttling from underprovisioning.

</details>

9. Analytical queries over data in S3 without a dedicated cluster.
A) Athena. B) NAT Gateway. C) IAM Identity Center. D) Route 53.

<details>
<summary><strong>Show answer</strong></summary>

✅ **Correct answer:** A

**Explanation:** Athena runs SQL directly on S3 with no infrastructure to manage.

</details>

10. Private connectivity to an AWS service without going out to the internet.
A) VPC Endpoint. B) Public NAT. C) Mandatory bastion. D) On-prem VPN for everything.

<details>
<summary><strong>Show answer</strong></summary>

✅ **Correct answer:** A

**Explanation:** A private endpoint avoids the public internet and reduces the attack surface.

</details>

## Block C: Security

11. Application credential with automatic rotation.
A) Secrets Manager. B) Text file on EC2. C) Hardcoded variable in a pipeline. D) KMS alone.

<details>
<summary><strong>Show answer</strong></summary>

✅ **Correct answer:** A

**Explanation:** Secrets Manager handles storage, access and rotation of the secret.

</details>

12. Least privilege in IAM means:
A) A broad policy to keep things simple. B) The minimum permission needed per function. C) The same role for everything. D) No logs.

<details>
<summary><strong>Show answer</strong></summary>

✅ **Correct answer:** B

**Explanation:** Least privilege reduces the impact of a compromised credential.

</details>

13. Need for an audit trail of API calls.
A) CloudTrail. B) CloudFront. C) EFS. D) Snowball.

<details>
<summary><strong>Show answer</strong></summary>

✅ **Correct answer:** A

**Explanation:** CloudTrail records API calls for investigation and compliance.

</details>

14. Encryption of data at rest with a controlled key.
A) KMS with a CMK. B) SG inbound rule. C) ASG policy. D) IAM group.

<details>
<summary><strong>Show answer</strong></summary>

✅ **Correct answer:** A

**Explanation:** KMS with a CMK provides key governance and usage auditing.

</details>

15. Segment traffic between tiers in the VPC.
A) Security Groups and NACLs per function. B) Everything in a public subnet. C) Port open to 0.0.0.0/0. D) A single broad SG.

<details>
<summary><strong>Show answer</strong></summary>

✅ **Correct answer:** A

**Explanation:** Segmenting by tier reduces the blast radius and lateral risk.

</details>

## Block D: Cost

16. Rarely accessed data with long retention.
A) A suitable archive class. B) Standard for everything. C) EBS io2 for cold backup. D) Replicate without need.

<details>
<summary><strong>Show answer</strong></summary>

✅ **Correct answer:** A

**Explanation:** Glacier/Archive reduces cost when access is occasional.

</details>

17. Predictable 24x7 load on EC2.
A) A usage commitment (Savings Plans/RIs). B) Spot for a single critical database. C) On-Demand without analysis. D) Daily manual scaling.

<details>
<summary><strong>Show answer</strong></summary>

✅ **Correct answer:** A

**Explanation:** Steady consumption usually benefits from a commitment discount.

</details>

18. Lambda with short, occasional executions to reduce operating cost.
A) A good serverless fit. B) Mandatory always-on ECS. C) A fixed dedicated cluster. D) A database used as a queue.

<details>
<summary><strong>Show answer</strong></summary>

✅ **Correct answer:** A

**Explanation:** Paying per invocation avoids idle fixed cost for an occasional load.

</details>

19. Avoid unnecessary transfer costs to internal AWS services.
A) Private endpoints where applicable. B) NAT for everything. C) Manual tunnel. D) Public S3.

<details>
<summary><strong>Show answer</strong></summary>

✅ **Correct answer:** A

**Explanation:** A private endpoint removes the unnecessary hop through the internet/NAT.

</details>

20. A continuous cost review process.
A) Budgets + alerts + monthly review. B) Only look at the bill at the end of the year. C) Ignore tags. D) No ownership.

<details>
<summary><strong>Show answer</strong></summary>

✅ **Correct answer:** A

**Explanation:** Cost governance requires proactive monitoring and accountability.

</details>
---

## ☁️ Follow CloudStudy

We are building a platform to help Brazilians study AWS in a more practical, organized and accessible way.

Follow CloudStudy for new materials, updates and content about AWS certifications:

- Instagram: https://www.instagram.com/cloudstudy.ai/
- LinkedIn: https://www.linkedin.com/company/cloudstudy-ai/

---

> To turn this architecture foundation into practice with pipelines, data and analytics, you can also follow the complementary track: [Data Engineering on AWS](https://www.udemy.com/course/engenharia-de-dados-na-aws-do-zero-aos-projetos-reais/?referralCode=E28670B9116BA68E08A9).
