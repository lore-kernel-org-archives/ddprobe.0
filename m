Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D71517C
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 11:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650800518;
	h=To:Subject:From:Message-Id:Date;
	bh=AcNJBQQDZXyOklVT2ypO8Tohrih346mDKrlkuGupRdU=;
	b=NHbSHf81/6kSxgK2QCn6b76Q/ZX3xVu5ppkCPpA+MiweaEOFF+0VXIKiu9bFjQAU
	IJe7FEDNl6ELeLMO/h8REJSExMGIzpcl6UN3BLKA+xyXEtO0LdgStojkLoeAFdwsFHo
	8JBXqx/7s5YBvCcl93Jh/MHgVh2uy+5cjW2emzCQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650800518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AcNJBQQDZXyOklVT2ypO8Tohrih346mDKrlkuGupRdU=;
	b=kBkZAi7Ps2XNWQ7Vf/8GNp+1gBOCDnMBRA2870UKxZ62aCr3zMQT5IHAgoAQIVk4
	6QwTXZOhUThY+uEvK940VGHdJztt5bC+fmqim0CDstFTvR5KQYiZj9a2cYpYmFmdnNk
	08HZ3+2/qnzlzpCeY6JT47V/oIgRSO2IWFTcy5fg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805b60e491-855b672c-d719-491b-bff8-d5064ff7b6ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d83b22e7e2884b6949d008a74e3b6b8d20c759f28d7ce33bc4ad94448bfa3f7d
Date: Sun, 24 Apr 2022 11:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650800518
