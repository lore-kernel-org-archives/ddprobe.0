Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A87C11FC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 12:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645013785;
	h=To:Subject:From:Message-Id:Date;
	bh=zVsLK+uxJiZWi0QxJWXcLAcImpdeIJcf+GMGwcozSXU=;
	b=XKKUrW9eWjFPUBgYgM0ZQV6dZIqmsp2rUcYUhFfTz+MaaprxlKQaK/ROzb9+yCJS
	aTzJQTea+4pTleutDp8OM89t9zCT2rOxDZ9TRev/iIKelG6Xi5anwogLhVVacZ3D2ju
	Virp3XKW4hsn7yTvQot7g0L0H1hpWKwpC1BlUPz4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645013785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zVsLK+uxJiZWi0QxJWXcLAcImpdeIJcf+GMGwcozSXU=;
	b=br66YLfKSvIl9f+hRR4vYeUm/hgxa5Bzznio3GR+iVZiI0dst6dNMQEiH8lo1VlU
	lz7dIuriMosDlQ/hRQ19jIO1R59ms6FrTkHKPfyKTBU+cdx2XE4HabFGLuQfUCErSb4
	AeaCmFhbWQ5H41a0n2z8yzEw452qCIhUsKRGdakM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f027658a9-ab824095-eaa3-49eb-bf3c-29456f399125-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a1a47cf8c6a20b0846d97c682f64dcdb32fbb61d2b32a6187ed89c1b3ba99b6
Date: Wed, 16 Feb 2022 12:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645013784
