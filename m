Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC57137A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 11:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655898599;
	h=To:Subject:From:Message-Id:Date;
	bh=FuWu5E9xxh+W6QMpY6/TxUqSM9q0KvYR7D/PxTIajQQ=;
	b=gva4wFer5Hmh4kADWQpTmGhxj/vzICL8n5qHzAycqZzjswF0HmQI11xZJrvF4keF
	uRgS0daeAvPEDUh66sCy3Ggpj0ZXSYexY+Ubumn4FNBh51P5wz8ZAmokt34/eUphMth
	xNSQdffQWX47bxvTdA0pGkHMvnCBe0kBGOY8aTmI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655898599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FuWu5E9xxh+W6QMpY6/TxUqSM9q0KvYR7D/PxTIajQQ=;
	b=XixnTXoC3AAOqBKOu5lQdRRc0Pbfk/nzqTnxBMR098pjwiNcDOISWafFp2whS7PA
	HEaoywl0caRY60w4U8XEvVSFattJTntN59Cx1bDqJkIa1bLXhByMdJqq/p1//aPuDBH
	ZjY7i98e2r5hLB7Sel4V3la5DvXbstiOqcdgx63c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818b3f6f3a-d1212299-a5ca-46a9-a1fb-db0d815c828c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1dda855314a26c3789abcf3e3b21e33adead40ef4b93b5f0065bcb13085b419
Date: Wed, 22 Jun 2022 11:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655898599
