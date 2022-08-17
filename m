Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75E737460
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660767652;
	h=To:Subject:From:Message-Id:Date;
	bh=xRH+dFXDeM1qD98WbFIAtCdnZzF4jZUMH+Kkd4j3mbU=;
	b=DcWt99dN4XXaWN98xZvRxlKs46sccCJOCkDWD1pbultgnKZN37wj5ATT47NOz5VT
	Qe/95x8dSRg1vzRktoRI2IIiNmdn1Cd+gsogZPl7p0WRbMLdazEJoWvCEzQyHXAariM
	nHy1fPfLvbdF0yG+J72xB3oaG/GDwwZG8ZSNXbOc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660767652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xRH+dFXDeM1qD98WbFIAtCdnZzF4jZUMH+Kkd4j3mbU=;
	b=SistWUbrISJHs+kH1B1PazYhDf3moZPjOoCJxsGJmG109kCx/Of+YMM+C6GGWGo4
	IxdmL44J0e2bY+jMOs/WS0OswAsJnXolYPmYZN08g6FjCPDFwSfoxCKZVSwuzH+7UcZ
	uIL1nWPFq6YZf7eK1aYYu5lDZx3nQLaYh8cVzDO4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ad774ae4-ab1c73bb-5258-4ad6-af4d-0b7c343759c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c68a3c00e56c982429f5a64201b34ad9de5ce3eaeda6c702a6ac79737c65addc
Date: Wed, 17 Aug 2022 20:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660767652
