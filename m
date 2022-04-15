Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C27717E6
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 07:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650008578;
	h=To:Subject:From:Message-Id:Date;
	bh=C1gYMI5nPYltHhXrX2+JTrWGHCSZZRnn7wQnn+iJ6Rk=;
	b=cHYu6wu8yplU2z3CmvxT8WtLKzKkHU+6rOEclw31JVeDTWbwT7uAxZbHR+BVrEsJ
	A/R1k0CuQYxUtHNZGfJTYkU/QGF/DmRa7++lAhaQr9m5s8aMrDqPRnJQeGrTIlNeQDv
	K651KMgspPBYq1iKgrSxqnueXnwCXY1rCMfyC5yw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650008578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C1gYMI5nPYltHhXrX2+JTrWGHCSZZRnn7wQnn+iJ6Rk=;
	b=UGITLMcslCIVt1lXrUbFdBxritWC8SK8Cqs1vZomPaS7RC7VmOfTSwDogESuRJZd
	14+TDcJIlKAcH6DAII2yq7d/IZ1ghaEM8SM58BKKD7mf6AekHM5Pv5Aw+t3Lg0b12C6
	kGH2Kst+mVzBSQ+s+uKE3EAjvhQGwxCNw4j+iM3s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802c2cd8cf-e4c5cdb3-269c-491f-be23-af9b39df826c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cbdc11216015d75562494c1fca2486d54a45c859a41476ed8dca95b82c942773
Date: Fri, 15 Apr 2022 07:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650008578
