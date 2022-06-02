Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329402560
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 16:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654186559;
	h=To:Subject:From:Message-Id:Date;
	bh=F3svvMBYegnG1yqleXMqRgAPd0PC9U/AL0P/XxvzfR8=;
	b=KW99zvB46P8fq7kED+jVc5A8yjsxDrP7VBYnS2Gvzlb5o91HZ60k9AraOjkpJCKq
	xXKwvjw2zDzXHfPsK+ZU2Shd/15C2fS9wUzn+BOEZSGhHyS/DIztDx3pCZUiTTscLFr
	lkXRf/eDEAF2AWncdSM3o7FhHl8qubfyZnyy+dZA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654186559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F3svvMBYegnG1yqleXMqRgAPd0PC9U/AL0P/XxvzfR8=;
	b=PI8EO7aHTvB/Q/2ajeONR49cWV3GllMxcjn3gFTyf5jp8InPFlAfo+zG/qukXLEc
	0sewIy5YxytsoxxiYm5aD8pD84x8I26vME/YZaGWWjX+Oo5xm1Z6m9kyviDmK8AC58U
	1pL5WrDL22BLua+J1h42efbh/npBW3G1RSEhmudY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812533c731-b8a33288-333f-451e-850c-8c3b094c3e3d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cfd3e25f891fb6604192f6f1b9b131e2d7ec7c5adf3d2161c5d1bcd9d8ce8e20
Date: Thu, 2 Jun 2022 16:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654186559
