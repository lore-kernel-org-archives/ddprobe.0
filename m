Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8671B1FD8
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 13:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646571984;
	h=To:Subject:From:Message-Id:Date;
	bh=wW2s9AG6LWc0pCL9CViiiWTguF9ozvY2baf2VZALMNY=;
	b=JTN4fKWMTVR7JOwx5ZdSK9CdEr3abCER1JC3KWAxnuSwe+AozQVXUNMwCtCmYm5m
	79jnkTmrLlQpJdZ9AxRlSnv+dKiAC537EklbF7aB60GYBe2vX+2BpXlGzxuXSrp9gf4
	KNWkPcMwp72NxDY4c6GsLKTipzUc3A+85pJ1W4tw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646571984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wW2s9AG6LWc0pCL9CViiiWTguF9ozvY2baf2VZALMNY=;
	b=FP60yqOvxii/BMbgAOsbcvdlZ+64p0cU/xC8OHeBUadp4TlXKJcWVuFElehubUm3
	hoy6LuBSdgPKaR1FSJaOEEJvL9M6HZdSGzCYILdJ302pHNdtgKMqqgbQo/ItXt9Nba1
	+WHNO1Zi9xJpGfN3mgizmR0iedNhDqaTB1JVDV8A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5f569783-12cc636d-bb95-4dd6-9e10-407df0e4d793-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83c203599f30dd99d113de9a915caf589e14817e446f80f03439a9847a57ede0
Date: Sun, 6 Mar 2022 13:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646571984
