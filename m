Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2354C91
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 19:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657567012;
	h=To:Subject:From:Message-Id:Date;
	bh=kDwQ9QuNwHfY5XKX5omcOAngTuCNuX6JqDi+4ssDsaA=;
	b=BeyMJzgEYTcBRIR427n5TDCdtlZiGHt7SoE71/l1gKpF/P+vYOUmu8TUQyM9U23E
	4rK+afjlTOJWDIzjZ9TyUJ0zgeSVeX0MVtQN3B6saNkQkKpehXGMflrY8oVMwHXYu8O
	8dPtYiCuUqR9m5PBKe3PjoLRz/rllPJeuKaI0s0I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657567012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kDwQ9QuNwHfY5XKX5omcOAngTuCNuX6JqDi+4ssDsaA=;
	b=M70PYPKIJUYcOBnJoh7idxUXT1jmWZRz5vP/ZHvFuZfMnRstOAYkY7P8UL9XXyiW
	D8Q3NTAyOiVKBa7uHW00C5AJDNf7n9g6Xh7kSGQ+/DzP9KV3ALsNAkVoCC8vrvxvoVW
	sv+rj8AJpsTcP53LY54ABQ7hSU/y2DffFNm7kKCw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181eeb16612-d8365e07-d49e-4db4-aeb4-bb803270136b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a98b534d494f4546df5abde028a1a1f0ea8dac4c40f266b7e9ef3c196d77debb
Date: Mon, 11 Jul 2022 19:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657567012
