Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E9F7A
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 06:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650608338;
	h=To:Subject:From:Message-Id:Date;
	bh=FlXEjohGPzq0Y2+k2dyhksyJwGUlt0h41TN0s40u2yg=;
	b=emenlmmlv3HvIj2QtER85oNsOFx9urvc7SyA6NqJ6y73P3xtQSNtdmQNHm9+6QOb
	5IdVp8WnNwVcf9nuakdVZUeFL3YfsjB3m+Eb5xrSFhX01pfXPxiWnvPuQ8gBcKNF310
	wXs35hJ5sANKSNfESPygjl47UD4HgDpoEB5y3kyc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650608338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FlXEjohGPzq0Y2+k2dyhksyJwGUlt0h41TN0s40u2yg=;
	b=AxJXm3zVt+/xtjpzp+sg6MUKaAf/fjD7KzA8ZEispaayQxmfZUvsVw3PtNp+6Qlp
	higPEi2nuOLIt3NRI2j8NcV9YiPkKWfDQnwFFOsYGZMoM2WqrwZ0zuOS4Z9HKVWzKM7
	lX1CVswyHeJ2KZJhINratd5ijx2qSAhZC+GkGOD8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804fec7552-37027773-4a79-4512-b61e-086390d19ad6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e094e1dc145f5e85b6a9812fc4487b004764a99eaa5dede02815e189918e749
Date: Fri, 22 Apr 2022 06:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650608338
