Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF5937A
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 02:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645842384;
	h=To:Subject:From:Message-Id:Date;
	bh=P4Xue4izY1cdVzavOg3mOwXlnMh0v2E2wXmwgwMpvBU=;
	b=gGv1cW2k0FkIHMqvGXKigsmS703gN4PKkmFJNx3Ft/pbUiu+FsSgQMLgnbkiQa23
	FWi426XJwhd9PeavX2V2b3h9UgSQeEcgpzv5ZslFat6sQVLRn1kyGPzRDTlh1Xngpi8
	hkZNmfxDyNlCoNmR0kFrI1Afih79XFvXYNwx35Bo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645842384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P4Xue4izY1cdVzavOg3mOwXlnMh0v2E2wXmwgwMpvBU=;
	b=kHwS5e+7zNLcI3QlIfe1pNGH9EQJdPd06K8Rxxg06yZ0NzUpOMgd2nap74uHhWG2
	HKkUbbps38j7ry+0yw+OKo+ww8IVLun4IXUMI+aT8Fz1O4c6TSQVgb65fN8yyEoXdtP
	zJi/yE6ZH6QdC4nGWKTuPXnjcNfR7WMpAkls4fpQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f33d9c7a1-ada4b5f6-a914-42fb-8533-bf5de3fd7300-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 421917b2eb4660b0df5859cfac3e80219d2e26476d7d95e41725b4d9ce33c8d2
Date: Sat, 26 Feb 2022 02:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645842384
