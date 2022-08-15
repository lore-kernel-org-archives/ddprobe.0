Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01B595386
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660599653;
	h=To:Subject:From:Message-Id:Date;
	bh=QJUdsOHMlNLkINGVDM4rc8AoF5hndw2cqHfkq6sGVNg=;
	b=XV4/94tck0rPnEpprobOf6Zf0X5BflGN+ZOxAkOVxZhBvzOq3clpANiilZ3o7zis
	HyqrwzZJeXrbaCpfgHNpLH7kwyRGlulwDSVyS4IlwR/b+wswSKgoP0LivG8Ci7jfjYb
	jnQgLolapAc9fc5Cm9v212RWGoC/9UgeUQzUQYQ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660599653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QJUdsOHMlNLkINGVDM4rc8AoF5hndw2cqHfkq6sGVNg=;
	b=g18IB3+puVqo16UhyXOcpe/ZhZbReaDEh8ujmCqQjiEcLG9Ydwug4I9yf1fHybKB
	bfsI0jr9uOgOpmYU1FdABkDL8JYe79dPOlglU8sFMCV0wm8X+Ktto0+qjeFRBufHUzO
	wia3qOJ+fkkkt4DW7R+K0FUcbGkTOdAQcjjwghaw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a373d0de-47f1b819-9897-4aae-af72-8107c2b470fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f9af66b9ca31c4c48074b99b48a56932d5a72d8e4b55d2d62191a2af04c0883
Date: Mon, 15 Aug 2022 21:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660599652
