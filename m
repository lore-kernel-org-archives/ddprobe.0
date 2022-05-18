Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1163446A1
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 22:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652913059;
	h=To:Subject:From:Message-Id:Date;
	bh=nPFBDxa7U7UcQNTa4loYdKnEVlIBWaqsqxrssvoyxYQ=;
	b=UcWirmNMgbSQtX1Xqp9fr6eEfv4ASakREICKlmL07y8pVsTXkkL+0W1TKWljV1Mu
	FCwhmglt/2HAA0/smz9dBdSjIMLfZgJ89S3nswc8Pmzeyvgm6V5LDgaxfSjg4D6ksMm
	avxOthm+p13NG6JbFltYhKd8C04m8gNPRnNF+yLs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652913059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nPFBDxa7U7UcQNTa4loYdKnEVlIBWaqsqxrssvoyxYQ=;
	b=N73ze3e5hUWu+Qc4ST9ucDGgvsOMedjQCLNagmeezZPxazlJoYuRICH0/Ic5gnZp
	eAmiHYM8n/O8zjM4VlGv8ROnl6vGwSzi2g3LPfKnlcdoJ7f8jnDjRjUrDKbA/m3PRFE
	6Qv49lPAD0uxup3H1V57V/Q98jWxm9/BUQjOJtzY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d94bb63e-29d348f4-cf64-4d7f-ba7f-b93eca1a4d12-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a599f8e61b09f36a4b0a6854bbeedc3deff66166e0d9c76349148bbe0178165e
Date: Wed, 18 May 2022 22:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652913059
