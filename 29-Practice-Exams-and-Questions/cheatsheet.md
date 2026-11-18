# Quick Guide

## Decision table

| Signal in the question | Best choice | Avoid | Common trap |
|---|---|---|---|
| “Minimum required access” | Granular IAM policy + role | User with broad permissions | Confusing agility with full permissions |
| “Unpredictable spike” | ASG + ALB + decoupling | A single vertically scaled instance | Sizing for the average and collapsing at the peak |
| “No public internet” | VPC Endpoint/PrivateLink | NAT for internal AWS traffic | Paying more and widening the risk surface |
| “Low RPO / short RTO” | Multi-AZ or warm standby depending on the target | Occasional backups without testing | Choosing DR that is too cheap for an aggressive target |
| “Cost with predictable usage” | Savings Plans/RIs + rightsizing | On-Demand without analysis | Ignoring commitments for a steady load |

## Quick elimination checklist

1. Does the option violate an explicit security requirement?
2. Does the option add components without need?
3. Does the option increase manual operation without a technical gain?
4. Is there a managed service that solves it with less risk?

## The trios that confuse people most on the SAA-C03

- **SG vs NACL**: an SG is stateful at the ENI; a NACL is stateless at the subnet.
- **Multi-AZ vs Read Replica**: Multi-AZ = availability; replica = read scaling.
- **SQS vs SNS vs EventBridge**: durable queue, pub/sub fan-out, event-based routing.

## Use in the final stretch

- Review before each mini practice exam.
- Mark which row of the table you got the decision wrong on.
- Update the mistakes notebook with the correct rule.
---

## ☁️ Follow CloudStudy

We are building a platform to help Brazilians study AWS in a more practical, organized and accessible way.

Follow CloudStudy for new materials, updates and content about AWS certifications:

- Instagram: https://www.instagram.com/cloudstudy.ai/
- LinkedIn: https://www.linkedin.com/company/cloudstudy-ai/

---

> When you want to take this topic into data scenarios, lakehouses and hands-on projects, use this as your next step: [Data Engineering on AWS](https://www.udemy.com/course/engenharia-de-dados-na-aws-do-zero-aos-projetos-reais/?referralCode=E28670B9116BA68E08A9).
