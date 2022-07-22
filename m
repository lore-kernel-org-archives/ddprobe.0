Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B7E15A2
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 07:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658474212;
	h=To:Subject:From:Message-Id:Date;
	bh=bQB1XK25yr0GtMv3DGN/2L1nu6qkwQE33g9TgL0xXSQ=;
	b=edRbUT1PpL6+gMm1M3a+O8FbMGx7XiG6mgQMgI71j7QGN2AYMpNJ6czJi7b7VaKl
	tvQHO51fg7O8Qdkgxsu0ts5kSpUIyRxmpBf3nIaJpqtcVPELDy7YitP49ubxagQipE/
	UN/uMV0JcL7mcuPLiK1qElo80z+8xJvZFgjv9gIo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658474212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bQB1XK25yr0GtMv3DGN/2L1nu6qkwQE33g9TgL0xXSQ=;
	b=a7q+MHm6ccaMdWKd+u4pSAV/sxOZGx7L6XmdrgApH8F+jEkWbEzZ0pM6Ltl7Pox+
	lvALEyGSL6umAhmTxlVmFMQNk+XBG6wBP3I+Tyd/WS8S9B0oJAKEAILSml01LLOO/CX
	hvWAW+4eSSoiv4aCjHZ3TPWw0z9g5sar0h781cnk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018224c42c77-3175f652-9d25-4976-a0ef-92c9b3f418dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc6fa431d3cfda6fb71a048b847ead37ef501f730aa1f2507669bb2dc816fd48
Date: Fri, 22 Jul 2022 07:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658474212
