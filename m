Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09BAB7E
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 01:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658624812;
	h=To:Subject:From:Message-Id:Date;
	bh=xd8p08M/bIOeh9GHcAQGD+9CsTLVrffoKv1hVoKs+DQ=;
	b=KXx+OOeXMJP/ZTbQ8Cfyi9SWmJKX8gqoVCl1U2dDZRzDfyDPYhU1/CRRK/tLAMIG
	dyptdFY9Dw/7t18Dsd4T3Nv1NB5cvXgOizgAF4Qe8pJuQBS5F/1PvEmUqynRpHo5EUn
	TCaqvAH4fv9Yfhw7kf67s613Vb2dG02ZpoFe6ems=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658624812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xd8p08M/bIOeh9GHcAQGD+9CsTLVrffoKv1hVoKs+DQ=;
	b=itwZajQvl6zmhmnt7fu5ItxeAXBUPPcCIg5fqHqGFU35IBGjw0f7eoju3ttKCryB
	V7BbVguDbdrL4JSnRRQsZ05LbrD3K57sZx19cYuLkcS8Udxn10I2qr81MZfYt8mMRtY
	z0A6u/c32+RuGiEGnO8rj8rqGDgObSJg2y2M8I/k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822dbe250c-eade0143-a461-45ad-9cb8-1fa50a13cd11-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 173c0d6eb9b3d0e6991b9f2081854d94a3e85acd20cfc0f0e7e6f7901a17a7c7
Date: Sun, 24 Jul 2022 01:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658624812
