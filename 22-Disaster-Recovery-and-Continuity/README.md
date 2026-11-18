# Disaster Recovery and Continuity

## Overview

This module covers **RTO/RPO and continuity strategies** with a focus on the kind of decision that shows up on the SAA-C03. The central idea is to turn business requirements into objective technical choices, balancing resilience, performance, security and cost. On the exam, the differentiator is not memorizing a service in isolation: it is identifying which constraint in the scenario weighs the most and choosing the pattern that reduces operational risk.

## Key Concepts

- Role of the services: Backup, Pilot Light, Warm Standby, Multi-Region.
- Prioritization by the dominant requirement (latency, availability, compliance or cost).
- Integration between services with decoupling and minimal observability.
- Choosing the architecture with the lowest viable complexity for the context.

## Exam Relevance

On the SAA-C03, this domain usually shows up in questions with two technically possible options. The tie-breaker normally comes from details such as: consistency model, failover strategy, recurring operating cost, throughput impact and the level of automation required. That is why studying this module means training your selection criteria, not just the naming.

## Practical Signals (3 to 5)

1. When the question asks for an elastic response with little manual operation, favor managed services.
2. When there are dependencies between components, check that there is decoupling to absorb spikes and partial failures.
3. When there is a security constraint, confirm encryption in transit/at rest and least privilege.
4. If cost is part of the requirement, compare consumption classes, capacity mode and access pattern.
5. If the scenario is global, validate traffic routing, latency and the distribution strategy.

## Common Traps

- Choosing a premium feature without a real need in the scenario.
- Confusing a high availability feature with a read scaling feature.
- Ignoring service limits and failure behavior.
- Solving a security requirement with a tool that is wrong for the secret's lifecycle.

## Next Review Step

1. Review cheatsheet.md to consolidate the decision signals.
2. Answer questions.md without looking anything up to test your technical judgment.
3. Use flashcards.md in a short daily review to lock in the critical differences.

## Complementary Studies

To strengthen AWS fundamentals before going deeper into architectural scenarios:
https://github.com/Thiago-code-lab/aws-certified-cloud-practitioner-brasil

To connect architecture with generative AI and Bedrock in a complementary track:
https://github.com/Thiago-code-lab/aws-certified-ai-practitioner-brasil
---

## ☁️ Follow CloudStudy

We are building a platform to help Brazilians study AWS in a more practical, organized and accessible way.

Follow CloudStudy for new materials, updates and content about AWS certifications:

- Instagram: https://www.instagram.com/cloudstudy.ai/
- LinkedIn: https://www.linkedin.com/company/cloudstudy-ai/

---

> When you want to take this topic into data scenarios, lakehouses and hands-on projects, use this as your next step: [Data Engineering on AWS](https://www.udemy.com/course/engenharia-de-dados-na-aws-do-zero-aos-projetos-reais/?referralCode=E28670B9116BA68E08A9).
