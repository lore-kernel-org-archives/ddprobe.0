Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543597F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659378052;
	h=To:Subject:From:Message-Id:Date;
	bh=CMi51dQZcHSRroFfXOTfuNuteoIhl3sGXhAmciM8Tmk=;
	b=F5Ce9ph4ft+CKFoKLiCoxNNcmuRr7MognZcczoI0M2e7CM74jkarIxX2oLFuaB1K
	UzgHvmL8i5qDj3AOojcD8WuTHDxXJ9cIb+7dD2at3a8nx6QKB6gaIsnbALWwdY5J7WJ
	iWZRC4L8NTRifoCpE1pNjJVY3clpAqB6qDoYwG4A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659378052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CMi51dQZcHSRroFfXOTfuNuteoIhl3sGXhAmciM8Tmk=;
	b=ObME4pI4rLjLLqDfeuMaXm3tpM8hTSm0JVIDFRlMadr/Cpy76hmAfHDwNiPinHWA
	o+BaoFiWMJ522pQ3bSTpaBcjbtj85F/I0SKYMZdn/J91ejH0QJyqLWRNUG+K99V7U1s
	hgOz5Px0Tlq8wpAS8Ua9R7i3ZvXbmcksNcEiOBZk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825aa3adc5-8c497a67-1412-4251-9b66-bcc06e24ef04-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8d5e76d6028ec018b7672e886f796d3cdd521082901d2dfd9c4463d70387cfb
Date: Mon, 1 Aug 2022 18:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659378052
