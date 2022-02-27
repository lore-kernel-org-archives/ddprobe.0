Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7414B2F2B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 06:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645943484;
	h=To:Subject:From:Message-Id:Date;
	bh=Xmd4Ct0kjpcjUT2n2Esq2wM0i7VQo3Lkm3PTuMVt8gA=;
	b=adMfr4j+fpydiUgQEpSk8n0V7mKm4sK+HhXsXeacUW7NZLmKyOpLzbPBULEx4s5v
	Sh71VNYEQLrjEPeM+o/VwvHHaiSoNxygwtwQKDJ6jZ4dnF/ApXksbDwQMqr3VItNgt9
	5lqvGig41cc3/Tg2Iwtt9TCWmmsKZ0VBKiyd340Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645943484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xmd4Ct0kjpcjUT2n2Esq2wM0i7VQo3Lkm3PTuMVt8gA=;
	b=cRWwIiGrwqNgpfi/hLm3BwJxK/HVXJR5RKSNT8h/Dnc8yb4aqNcPAKFu2el2aIbk
	U3h5fkB7OxJGtHC7bPlyk0PH0AIfchU/XMrXUei5D9xWqgjG97sgH3wqOaAiY471ams
	kJaIdgRIICvDz5yqsGDS1XDcC34edWXxPf0U5dyw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f39e0716f-3eaa1242-2a10-462e-ae26-a4b11b9ecd5c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 160c595a23d3c8775d1a580d11315ab6558cd25c7029cf49931769fdb6fdf4af
Date: Sun, 27 Feb 2022 06:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645943484
