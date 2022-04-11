Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2A31FB4
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 23:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649721058;
	h=To:Subject:From:Message-Id:Date;
	bh=T4cS5buDSLsOU0dcx5tfP0LWQ0RXjw6EM2TdS3Se80I=;
	b=Bi5XiqL8HQxpygogmI9jFb0w3Ov/RGppULv++vG0bX/mAhsgREotWCPcA4XOMkqZ
	D34HYNq89LA8xuH88LR5DYyfIBTm4BOz7Ou0OB/ZkHSVdWwfjSVpKDUTpbaBTQWn5CD
	wT8IrobVqRxK9GCC1YwZrjNVW0LO8iFHc+USIbLs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649721058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T4cS5buDSLsOU0dcx5tfP0LWQ0RXjw6EM2TdS3Se80I=;
	b=k/M40Qo9GgyPKyyYN5vv0UaHDSjR9jkqa0G5C3tqYAqNte7UqAHfmTlzTiw6E694
	36HSZR9x4gZoIurgCtSC4UE33J+l96sTQGYO3HiPGLMB3cedMgLBJozxzm27LN1qqlY
	oWbcqaYPoUioRWZwC9F/EFQXu1ahiEg4HNoqpAmE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801b09a3cc-a6d30d06-a7a0-4dfa-8832-caf6c054a5e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a943eac90452e890adc844e3084625c1687a84a2ebe04150c9047ebd2d30f060
Date: Mon, 11 Apr 2022 23:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649721058
