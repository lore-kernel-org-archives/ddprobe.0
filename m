Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1441017C0
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 09:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648373158;
	h=To:Subject:From:Message-Id:Date;
	bh=AzQzl6UWzkG4ffQhm00DyDq7Z52nGQCs1m5yzM2JZ5E=;
	b=i2IVSJoEdgixzubmPaa2EFpQjMWxMdO/gwKzE3+HCRvQsuKSTqqhAARIlrWzfHXw
	+2WYpFzsVuTg5j5Y7VuYR57A7CoRmYbWUDreApup25t69c8YUYjsTxGGSiLSlVeOlZR
	AbwIwzXSZT9K/nOBOI226yrldPkoF56A/7WHoZok=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648373158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AzQzl6UWzkG4ffQhm00DyDq7Z52nGQCs1m5yzM2JZ5E=;
	b=DeAO+c0w7xveJrQUmUAnsR/z9hFWQuJBJdcXr1Mk6hmzf5CyGgkDCg44ECPE5rl0
	OlrX3g0U/0xT1iWz8at0uuGJUMClz6FufWRENFe/VdNiWYuYJZe+NS+BvTqDmywo8tP
	6Nt9LT9yqAuRjs5I+0pLRGgOOL1Qh98xr+IyCb94=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcab251e1-fb87782b-d774-432b-a8de-f1caec5b31b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53a1c56d258973b07a17b49b1ebb525e89dc88002c849a1a9700354d60fb9451
Date: Sun, 27 Mar 2022 09:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648373158
