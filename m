Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B827A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 16:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657987612;
	h=To:Subject:From:Message-Id:Date;
	bh=luYlhJxVlOrs0BQnCtxuGcoZ/418zNT9PAvBAtJuu+s=;
	b=cqxmCKEq5D1HODeX2A+bjVmSY6jyA7mm3BUbRymjZQmljNypKyLBya7ByIC6EMgv
	HA3Ax6zF/SguST5zTG3pyKkZ0EIJBWSNDFjLB+Cz7Jk+u5/GWC+N1KkwV6AjVmtW/Z1
	9TcjD/YY2dfjmEqN3Dyjcy9kS/x2RHozrnc52UHU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657987612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=luYlhJxVlOrs0BQnCtxuGcoZ/418zNT9PAvBAtJuu+s=;
	b=S2NsXwHRLQAob/p4hqNpzCyjSAM80k03WeoNCIfDw+3M69FSM6slPZfRgS0HDftY
	8rv1How/7Pq37HoY+OPKPpAPryTQNOx1Wwm6pPlnmsI93DtlowUcsq36b9tf/6ZRYyz
	g19VK1cQ4RS964tsgjKHSJdThsrtoXwA+v+Hq45w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018207c33ea3-f6191944-ac0d-4b3e-8311-e110ba4cc774-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c149eb1e3f815b71a58e7652f372f0038cb7fb15e6f7ec697bd2412e29c66f0c
Date: Sat, 16 Jul 2022 16:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657987612
