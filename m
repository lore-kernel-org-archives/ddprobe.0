Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287E33FDF
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 18:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656097012;
	h=To:Subject:From:Message-Id:Date;
	bh=msHauQbwP8+dqvjcJI6MDHmM/e3ucfJVqU8QzXLPsmo=;
	b=VsM12LoTxuvGeNUQxM09q0A97tSERBNXH8Ua1sYM5bqOW3KM5t6DymkjnPXoHiZW
	P17Je9xBn8HiV6CXEqp7XXUAjCiJvKskkiS/bvBE+A/SbhF3oBCdABsBseFfv9XZgq8
	nKRPlU2XkBX2m10wNz4HBaBTK92jISXolFRHW8Os=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656097012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=msHauQbwP8+dqvjcJI6MDHmM/e3ucfJVqU8QzXLPsmo=;
	b=D+58tuPlTr0Qfn8j4Cm9VUd/4ILITQ0Km2yIYyezNq324OucuVipDmGgetpeT4JT
	+r1kr3knS2y6J9AehyaEzNoAiKahRxiIC5rumDt38dL6O8BXDipSgG2QuE1g3QoRfRm
	/uaeMmO7Qfk+xaKAJPOmrDe8ZODuL3uWCfRIAZjE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819712fa94-86b1dc82-1492-43bc-a2cc-461f303a0000-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cbcb860080f5938b475073be9d3f16bd6efac331014c442dd18d10e938396a24
Date: Fri, 24 Jun 2022 18:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656097012
