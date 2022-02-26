Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D44C428E1
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 14:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645886485;
	h=To:Subject:From:Message-Id:Date;
	bh=idS81U993/HTem18x4L2e3RTphIivliiceIlgpwwPYY=;
	b=JOGXIqCau9+Qp8xX6yS0E2J/PzKnsxlKiIZycbd203yjUv/ahqU8MiPH0iCpFkTj
	PvCKWWPFEhYfsRRlYHnsAXtcmK3KE3pRKbN9YJ6ksvh60xx9ibO5zfuULoi2vZH6JvI
	m/pSXMJ/Z52wrYNbTBtdUuaCBnO7bi1Qb2N4P064=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645886485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=idS81U993/HTem18x4L2e3RTphIivliiceIlgpwwPYY=;
	b=ADVB/YwC1kO/fdF2N2FiBWlB7S87nBYUbVoEDOozkdzrpQBM0Ev+X2gavBoaOSya
	td4G3+N2uYipbZ15abTHLyLULA3d99jI4EKHqdNWfj0JCjJGIuYD1Gy6xTdRWlLjLCu
	wluwyBqjYh4jd6TMSnvMBQWFZekH6hqGsiPDrgSs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f367ab161-84cbfe45-55ee-4f6d-aee7-a44ce1a1de9d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f5f3e833997d2190740a938c4f994076d5af395ab151c6b2713723d129d1544
Date: Sat, 26 Feb 2022 14:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645886484
