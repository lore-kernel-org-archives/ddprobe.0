Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE18539F
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660662052;
	h=To:Subject:From:Message-Id:Date;
	bh=be1ubUJauOKFF82tkczA5nq+KIRfIFqRhEfg6JZLMf4=;
	b=lKP+hCET86wZJzxdbapmu0IUWRQzTLfZn1TTMqTc59yR9v9Yr1Rim18Eu0FhFCTO
	PZdgIM+MXLjovMyJ5w5GsH/K0RsbW7r7fLqcU5AAHNETdUrWWGsgqxHSO/adp5Fag11
	dohDZWYLpF5t9sl+vip28kbj3nv7BqirBKxlit4k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660662052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=be1ubUJauOKFF82tkczA5nq+KIRfIFqRhEfg6JZLMf4=;
	b=UJFTrHSELK4bZczkCnc521MYdkQx/25So2i0mv1FBci9yfYSFc/Mnoy105QYEiUL
	R6GuDl3sVWnnGncYU296kt1iCGtvHaLtaPajdRBHPCzsLm0lIKVJRMxSMJDnS5zLCN9
	rrfYMCgRmqb1jnBWTgMk4/Kt083btQXoRW3oKLzc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a72bf724-aa55acd7-2ac5-44e2-8c8a-c0d49aa7b7a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4cb50069be62a8a1f6f1d4576adbc70b8f550e9b5b0655f9eb74110eeb045def
Date: Tue, 16 Aug 2022 15:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660662052
