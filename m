Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 834E110EF
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 12:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647347784;
	h=To:Subject:From:Message-Id:Date;
	bh=+cAR/4m7FlfBKwIVU1I042pR3+JaatY5Xcu8s+yqp0U=;
	b=LcP3WjspjIG3vGveFOvRTs83GcM2JWW7ZBTZ9QdJtwazu0cIJCQ8p6+oeNjGXA0f
	F8U3iMCTj8MGIB1vp39Ygf1aQmxVvNV6T/uJkNjuWNEEqen//Heh0CNhjPYzLclKoPJ
	cyRotoL8oyGWuHFr+j0sX6m55lvIMvT8ntTjm8Yo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647347784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+cAR/4m7FlfBKwIVU1I042pR3+JaatY5Xcu8s+yqp0U=;
	b=XoLZyFlwWaODMQs5A5aYBc/ol26Z9r9um1PzObgJyLt+xUeMygm1zldrIEpKDn8s
	hL0CxiBswtz4827KRtCwDgkPQWVyW8Z0UcCbMk6tm7FFeTkTaRI4VbISQYYe/2SAfGJ
	fMZKVWSFgI4eKaQE+fUrFErP7+VWVCGPh9fRE7Wg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8d945c49-04ea3fe0-72bc-4b77-ad30-f49e83f70d7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58fc3fbd70b15661722a8c8c21796608cc98fdda9e11e8d788a10f988165d41f
Date: Tue, 15 Mar 2022 12:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647347784
