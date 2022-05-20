Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE9C7A
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 14:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653056159;
	h=To:Subject:From:Message-Id:Date;
	bh=TLE57UKEKNq0O/ky7+Tjs0wDwn5FGG1c+srlY4TEcMk=;
	b=AhC0IItQNvQlMoxDHktSPq0qpWydhlVY3mhV5UY/nrZCcXItdUtneX2s2jmvJphR
	WdywjOJ55FlA/dQMuCCW73327txHgU0G+lDA8hsaaLazejVhoXpP/FOu+qjYrQxgFsS
	MmKkM449ZdRcCbPvezZwScGfxuouIjBOjChTwi78=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653056159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TLE57UKEKNq0O/ky7+Tjs0wDwn5FGG1c+srlY4TEcMk=;
	b=bFIRvm1CIYgO5fYj0lunUFeWOjJLG1FTiRzb30+Io/Q+laOXv+yCswTxfbwMYt1O
	4lrYhQMvSE7r5MeytijHkdo4aLEvaadufV23dOuaXIVqZ4phie7yR8TtHUF9lqV61qp
	mDV+VIJK0wi8231TA4ODnpob/AihwEMOwJuA6qv0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e1d33e41-60f4b5fa-f4d5-4f21-baf1-7c2a983e8228-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08ddd0562cbfd7a04e3a6f0b7a3073949349fb0f23bea6cd1894fef0b2d24ea5
Date: Fri, 20 May 2022 14:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653056159
