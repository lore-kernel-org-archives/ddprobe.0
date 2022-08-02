Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4527F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659454252;
	h=To:Subject:From:Message-Id:Date;
	bh=nVbCic0U4mDjjyWFpSIXPXfgVT5N1EoCyTEjRuhKQpo=;
	b=Y9MpqB/cOdoNd/LtNo5eGsXPZgvBGZZq5T0q7oja1Op37+3UdVjLkkOQe2aCy0kH
	RVLNfwpDfPjj8r7RrgVv3MLhzkEcmfG4NukGWrf1/M71sIHvr2hLg88j4ZkMtsXFRN1
	BX4rWRPrUAWAMHp05Zlp+KnJEFgAsi+PUzPwxvVY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659454252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nVbCic0U4mDjjyWFpSIXPXfgVT5N1EoCyTEjRuhKQpo=;
	b=TsGuVAwUQWDJAWsaHF06mdjAYfnnaXpKjKoHWQ2vVug3gtLjkIF63wzTE2TnPqre
	WIucjLen4MJL55DAweCrF26H61c9g/w3YNpczCqouHBN3DZyhIJsb184RC5EZzissVk
	+1INiaoJh11z24DtRDr2lUu4N1Mx29BWTRX8No7o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825f2e6640-9f2e943a-ad00-4500-9cce-fd2f894bf129-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 560b27314dbf8a237ec0f6e501341c3c12040ad2cd7890faccb31ce7212d9749
Date: Tue, 2 Aug 2022 15:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659454252
