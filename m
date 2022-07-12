Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4738E4681
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 16:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657645012;
	h=To:Subject:From:Message-Id:Date;
	bh=wMYVpTugpD0sPEcSenS3blxMkcyXfBYbJoGKJ6iTLqQ=;
	b=dC5CtHxmK68pc8Lt4OTBfyxhgBLLxvbh59tmRT3z+N56Hn8kzJeeHLVec+mYNiee
	4Rz1pF3KXkidzEW/Prb1rV7OxdO4yon4otjH5GCFqn1JYlU324s0B/4/sTrxdAtVFae
	HQWSahhKdCNiE+3D4VFlXGkggd0FbtNr11k7QS0U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657645012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wMYVpTugpD0sPEcSenS3blxMkcyXfBYbJoGKJ6iTLqQ=;
	b=WIRSv3g5XUhsqk6u6pfGG9lRW7iBgSlP5Kxg3GNVelhRW99fTIC8eSHOpc5qF37v
	QA/DEouwTPHSF6+tjlH8BJvOTzdAmbf8ZNMwX4QkgYyHmawjUQD3iioPk9QQLF4BoVU
	LqZ9MsgiIPjUBdwWGrUznvlhk21VWsFvtgcMDxGE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f3579591-c222d121-7646-4609-be74-465e2253a9d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eec80207c186306a32208dce2d818a283d63b9b18d1e96303aada448ce724124
Date: Tue, 12 Jul 2022 16:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657645012
