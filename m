Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374291FCD
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 03:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653709979;
	h=To:Subject:From:Message-Id:Date;
	bh=EkKshjq41PyXKmVY2rY4ivATiheJELFkwprPW5Fdsbg=;
	b=C3O1QGtBDK711/OhmOv6KiXjDzqp0Iq5dSO8ElAFxO9/mkJ7Ca7uk8R+8oz6GTwb
	/ggHS/GKaIunGK+72C5oih+BG7Obkxy0FwemiVfgkSpUpND9uKPW6v2liJHywCkEXT5
	ugvmf+eJX/j3ZRozu6e1G2E5Rx/1HlzwTNYKd3Xw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653709979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EkKshjq41PyXKmVY2rY4ivATiheJELFkwprPW5Fdsbg=;
	b=XqiRbC0JVFQf2B8QDr77R31sDs0UgbkDI2f5bXkjpOFYavhL2bDWtR1uugQDH51B
	v3P/+92eHiKfnWAIEhDMQnKSQ7LMY+iHtNPR7FmHRUCr5xPMtWzr2PcvPIVk+ECp8BQ
	wGpcafakdvVrWp+3Xaoml1j2oPs2OdhM2vlo8SBs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018108cbbecc-922120c6-a259-4487-8ad7-a84b2e2dbdaf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f2d0c5a59fbe753e7c4503fab0c2a219b175e7f774e5931ece158cb5acded10
Date: Sat, 28 May 2022 03:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653709979
