Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F34DD3D76
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 18:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658687212;
	h=To:Subject:From:Message-Id:Date;
	bh=U9+N/uOAqtgSkLnJd3NYhFFjAWipLF+HvRi4oCRv1Zk=;
	b=M43GCYIW8By9K/gry0KmFAP+Je0D431jZQ51udxWf4NmPUiQi6ZrQVBI4eS2EAen
	mvyKeZUj/Eb6wmjZYef43C2x23JVxpxq4KmRmrhEUSAn7q6Zb+TH0IqZX0HBTAfVjo1
	ro5eh1+nk47xgrKa2N/s1RtM7VdRVZLx3t6i8U/Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658687212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U9+N/uOAqtgSkLnJd3NYhFFjAWipLF+HvRi4oCRv1Zk=;
	b=FGtwM8iwkPnl0a4eOrnhK/7LGlrxtUXmlfTo+0xVtXWdK18URFT7xBMIq0gU6Cev
	0mGeFUbASrQ+YogeJZ1fJbRF28RkwJfbUgNb1a5cFyZmeqKiKMqUnZDeZ6iXyNlHlnQ
	ydjCHaI+C12yGuAC9Q12uKAfLV1Gf2ZURBL+T+Fo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018231764b13-861943c1-75b0-476c-ab1d-4a9042bb926e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2288ac71be324c5d565795315aabba4aa34024df53e7a75d84508bff83ca33ae
Date: Sun, 24 Jul 2022 18:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658687212
