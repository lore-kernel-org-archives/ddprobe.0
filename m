Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3CAB2566
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658940053;
	h=To:Subject:From:Message-Id:Date;
	bh=zeSPLpnmHyPUgkl0nLSVB6/y01kptaeM9sYhTWaMkFo=;
	b=jPr0QemfA+IFt8YMwaEnqkJnHApt0UJ6INVHCWvoGDX8NEOQbGQ1n0SUfjDN1WPr
	ZrRX7bp7F19VE0yZnVCGQsigfPqqbuROprwd26oCTGpPglApqGG967warmp76C7Srva
	FxT8TWUqhyrwazvOaX6u3CxjnWUpvmiZSXPf2b1s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658940053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zeSPLpnmHyPUgkl0nLSVB6/y01kptaeM9sYhTWaMkFo=;
	b=OgTqXINc6BGrkeWzGVBin2beiwymY7QbAKbO2H3rlx5lIhrte14V5mZO9TAtlfkp
	2svAMGWqBVS788P033W4YLt18BJChzUBtTNFLysUb1Sf7eq9rAmWIthVnVdXLh0maG0
	gFjlcBKvnrf6O+p0BAikultPdN61fY4VNFdsRMAU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018240885426-28a1be8c-8733-416c-b148-31b50329b053-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f203a6b52370ca276261cd539a5eaeb9a4aca649dc979545afa69a8376c2a3d2
Date: Wed, 27 Jul 2022 16:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658940052
