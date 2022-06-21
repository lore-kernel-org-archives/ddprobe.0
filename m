Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00C1FEA4
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 10:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655807219;
	h=To:Subject:From:Message-Id:Date;
	bh=2oxwfm/ANhgBw6ClIbIJjR7N2bSYb7dn7VACGVhbDFQ=;
	b=VZL9LweCLuykx0U1YQv2TwQGMD3hZypwN7DQOiqwVLovni5111lfO/UJMzxrIKSt
	WArCtPEsnUk5zbK1bqQxO8BmcfKreY6ZrtSyLM9Ls/EaT2onXeD8k9FB43nH/Anr2mK
	MzK0+IWw7In4y1WzL6ONgKksva0mMYnSCfczaGCA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655807219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2oxwfm/ANhgBw6ClIbIJjR7N2bSYb7dn7VACGVhbDFQ=;
	b=eGuOpkHe4DA+4CuNtXIHEPLJO1mVgKAYLJ66+YcjPMFZ0LfNv+yTeaV3PLBMbN/x
	qr2niewz8h6YMtxh7PvcoctYaPkR6HYtzFwxsRajNDWezdwxNOp5oMzs4398ZlLsAsD
	PSjfNzdEL6biJHtRmCbfTNB9fdF47UdRbGpmDVhw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018185cd1634-e82609f6-4180-4025-b1ea-b1c594fa0ccf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4efe150b163968dd9723c580cfc2bf3b38f8487b05e08ef58507e3ceabe2beb
Date: Tue, 21 Jun 2022 10:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655807219
