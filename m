Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2000B15A3
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 23:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660864253;
	h=To:Subject:From:Message-Id:Date;
	bh=yRSReid3klZOMsCOHnSlHh9R1uTQY+d36DjB3Yj0mOw=;
	b=GSwCRpviQ2u4ptZlfkumtKIAGqkpVej/qpfc7nebO0PPv122cBXAtd6Em8TUC1iN
	0gtIwLsXZePZ8IR404VY8WGOMn3nbvTFCbkPyRt9kqDg/thNTaleIKW1CFMaVoaa2D2
	M29su9nQDHSocaUNDk2xMbdXVxkf0Ji80jrB6Tjg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660864253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yRSReid3klZOMsCOHnSlHh9R1uTQY+d36DjB3Yj0mOw=;
	b=fWwAEFCgNDyMYNIJa07xCe8/jVvEE9KNccZMc2SWiz7u6rxB9Bc6bMQFQMOW38Uo
	I09B2TgTLLR/lxkURmEVkyGfC8ISotxOVgaXivqAe/5WOhmYeWNHObsgv17fCIVarRq
	RTwsYoP7XyozBGYHSm5G7JQKyaNTJTXehg9T6yTk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b3394a98-68e6c159-e03c-413a-a840-669a09fa2e8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1dd42b56415a6eb4e926361909fb42f487a2f4ad884afd3e0a7d92f6028792f4
Date: Thu, 18 Aug 2022 23:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660864252
