Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586E04A04
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 18:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657908412;
	h=To:Subject:From:Message-Id:Date;
	bh=JhN0BVsalux8sot9zJEDc74cHregmESopVYXBIUXeoI=;
	b=lc21KyKLAg0LjEtSgdYje3s6OjpLDu9j5auuQj1psVysly/a+sdMejy8IjAwqfNX
	bceuyO501M7TqLZR9qnJpauSNy1OVclctCnXJl8tbpFZ+zWbdwNx/hvr+3XUpUeL/Ow
	le2OWhWHYDanEpV/hIBV6cGbnQJ+J14Onp+SwQ7Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657908412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JhN0BVsalux8sot9zJEDc74cHregmESopVYXBIUXeoI=;
	b=dDbBWeYiECMYwRv+NuK1elKXRElIVMudGLtO345w4UkRY2I/cQo16VpAIEUMS5C5
	KBtXmts+EysAxm1Rom5FOEVGkyzI4d33pWSHWrw0LnvQ6VNTpi0w2H0WCtD0QHR0/qa
	mA/8QI1zvpAZll2RIiSeiZtUXpJI3qVtMDnIQ8Vg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182030abffd-1d36fb43-4347-45b5-b1ea-c3789df3ef33-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b6e0ee803a9842a687dc78c54b3157d5dd0f6dc18ae75fa64cd0eada712a067c
Date: Fri, 15 Jul 2022 18:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657908412
