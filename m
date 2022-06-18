Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D32B47B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 13:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655558519;
	h=To:Subject:From:Message-Id:Date;
	bh=pMggFBUO/Ab3X3wMZKWgvp1A3E4RbwDCdMwou8ILrlo=;
	b=V467vPrDwVu/Ylxz+VNz91UXEDZo/u1qfS2PSfZtNdjt+n2vhiVrv/Bz0kSXxbiP
	XIcrHC5e2uNDBGd/PhfucOgq91XD/D6cn00WCSpL7v0MluhSJbpmoFm15I3+slM6VtU
	OW1y36w/D61ivgQuG2XF/EO4dTGj4ag7a2FF9S/E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655558519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pMggFBUO/Ab3X3wMZKWgvp1A3E4RbwDCdMwou8ILrlo=;
	b=NvtBorFmp4c3Pf+Ckmh2McpBWuyIzytk9eFD68tjpiSJR17Osr1sTPmYAeREUv3m
	YiIolmeWKo8A24S7+3DU+7adU0R9o7GktlJdV4Vz9HM58p9xqHpMmqMY2Bxq6XFyxIo
	uM8Zy4Ne1ea2yHOwcZKG8lr3zY/xOmRl1Jb499Ek=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018176fa399a-f8cce93b-31f7-4073-878e-e726b9af7b73-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f8b062967e75c3eceb622a53309b944554a43762656728faa1f075fc5902f91e
Date: Sat, 18 Jun 2022 13:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655558519
