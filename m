Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C96C20FA
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 06:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657087612;
	h=To:Subject:From:Message-Id:Date;
	bh=eBl7TyyDOO3V47jgm3IFafXWsBFP40YNz69utV2a8Ig=;
	b=bulZllI410RA/E95/njRCed95CL50uSFPuUmqsmD7+UIH9PdVTsMfAEszOUPxisp
	xLbtIUdvayMw2WF4nUaWQN0eSWPYEFJhAwbwwOicJGjGPAqh/ZwtIUtS0PGHhe1oP0x
	Q+bqiquPg/ZTeuZBCTFnaH1QP2OHgvWquTP5bnuU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657087612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eBl7TyyDOO3V47jgm3IFafXWsBFP40YNz69utV2a8Ig=;
	b=XDTyKs+BMm1m7mRJDpmbnGDKgomqZcl3UDYpMt1d2fVSRjZXtkz4iE1nxpzmTpYJ
	K8MbnOdBlthOUpT2UDQ+TN331l4zm7r/ootQC8lBqSyHu4N2VMzf1maSRbSSHtxrkMf
	NAcAWO0YdYq+jOcrBgpz9+WCU7YdP7BW0EQmwPcw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d21e5556-24f3c9c4-5c73-4f22-b4b1-f72d54795fce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4337d4b7b28b69e095e303601813a7240e39a5a4932ccf29cc9fb43c0f950694
Date: Wed, 6 Jul 2022 06:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657087612
