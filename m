Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CEB27F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659363052;
	h=To:Subject:From:Message-Id:Date;
	bh=7JwdiZKowe11Ydk1c3emK4z3gon7qTeHU0m3Vq0EuYw=;
	b=KnL9zAMMP284VL66f7bvyjRr3ElJXzbV8NB5A6/Mibc2LxKPMMSPPk9i0OyheRlQ
	FcpO8KCzrikYknAFRtZwLIVU89Lii1Vr4l50PQ9T3sVuuJqqoXu9Eg35E/2ZIbbvLlh
	VsVtQfqNhuBYTuSNZi2dqfq8qSiLYKPSkh/1NGpw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659363052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7JwdiZKowe11Ydk1c3emK4z3gon7qTeHU0m3Vq0EuYw=;
	b=RWnLYsEXK6BARtps4DQopkU1SpkcoOoJOYS6CzysirtrLe+FKnrBOxJktlV0Td6k
	B6RW8N6G822wCmTTewWvmiPgSbnIM6WSD1cF3isj1N2Kysj9mSSC+Krqm6MULdExnEc
	KGLoOxiReWfYFxcxbK70TJmq0ZGMjkhDoRYLfaQc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018259becbf3-4efdccb6-9604-4804-b62f-2244ea207650-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d1d476e89580016645c782b42efc91e46ec13776fd039cbbfb7217a7d68b4ce
Date: Mon, 1 Aug 2022 14:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659363052
