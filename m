Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB587F
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661297453;
	h=To:Subject:From:Message-Id:Date;
	bh=y1y5rLQ62o1UXolFpO/XuX61xVA2XchgkBDi/HmpE24=;
	b=MkU4Ah+BVg0stD19GKQzDQdFKvZMWj4vCU+FMTjHJOSThcHO5j8cbnb3RGMqx3jF
	tLfttT1Eb4bBRDnRErDEUkjk+jvChNKzf4xUr+naJyYDK3+JVoWQWYsn8pU7XImSOwP
	Kn+RMUydL05+TSOrSZ5DyfWJFNxBQLXRF86P2jU4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661297453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y1y5rLQ62o1UXolFpO/XuX61xVA2XchgkBDi/HmpE24=;
	b=bb2RbmmSh0OJ4RKZC8qZdLgkMtMEwKilp2jZjrIg5FsNvmcfc8qg+XDRkMXv3LUj
	F7sAZ9nZrD+5QtdF96Ne7IUvwCd3g4f4hOBiUl5eKBA0HTph4A+HahzPtxYhVki10tM
	oVLjNOVuxeYPb98/SjwxONaajbwALvN0cq4aNRNA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cd0b65f1-e8b981ff-ba90-4d95-8499-01f88ac1d76f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6eae66c3cb2534a8d812f8192f6ffea1613d37282759569e7ee44f7c6fade2f1
Date: Tue, 23 Aug 2022 23:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661297452
