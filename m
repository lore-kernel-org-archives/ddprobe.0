Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D697C
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 05:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653630359;
	h=To:Subject:From:Message-Id:Date;
	bh=DV+qQv3U2CM4iYpBvrOH3evYSTthyL73Q3pXmMvlUaE=;
	b=Va8d1MRehaF3yIw0+hqLqPM2GXUvJxihFXCxmoRgljJPizWnP8ES8aDV08T62vKn
	IZ7X+pY3dah2zNz/UaYyQ3dfp7FYzVOFzUh8cmYQTj4Zpu1i5xjyJ7OIAC6v238tjDL
	v+pB4PA4pQqqM4ZCdS0dYoCrijaly1L6GQe6bsZQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653630359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DV+qQv3U2CM4iYpBvrOH3evYSTthyL73Q3pXmMvlUaE=;
	b=KtC+CdGJbwkb1lTMpPCjdC2vn2ZcohCptpeRKs715UN5UW9Z2h0iw+p/8wKFmLTN
	RTF4FFVAqLg7xmw8Jnv3RkpMffH2DJX16rnsxSOtj0VmyVxOMZSAx3znjv5M0wJ/1VQ
	GBwNsWjT7jc1JuCPtK0OLo60wl3lqrl7uMKMOIaE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181040cd714-3581e668-f27a-4e7e-9d81-c9c1d65426ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd08bf64d12dbaf56aa867be1485260c2bdd989e5888157bc00470fb35f48f54
Date: Fri, 27 May 2022 05:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653630359
