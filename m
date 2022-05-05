Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDE0A7F
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 22:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651790338;
	h=To:Subject:From:Message-Id:Date;
	bh=PNZgAVVjzdgADzwr2w9ld8YouUCUzyOysG66c+4cW+M=;
	b=RS4gHdxyMIZLjSD14g38SjyUsnpXIG8f25hiCipHp6Qp0tL7CsoFOx4ZRh7I9xEE
	AJOcyQwJ+/OmADldxg3FH/n9//tlsPiQf5444N3N2fyE/lbhS5zgMPHf0RTomWbpz3d
	LdPXqZm+bT2cPNxhQ79XJTvg4jTmbkRJZezgG9sM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651790338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PNZgAVVjzdgADzwr2w9ld8YouUCUzyOysG66c+4cW+M=;
	b=CTc0JxSXPwlBvFJVo//aJFn2sdrD6aaA9ke9Xi+gCuqmwzCnbeHU4xpue+Y0iJni
	AcLd4vLA5B5tmpuODjOEAlRR6Ta+QtAGDJnNbxzdT/QLKzGLQ9sbfYXWNKmVWB5ivWG
	FYNFvtZdkwxEjiZ1lzZgrBcNGtC6sJlTXGSn5fjw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180966058cb-25e5e2b1-0632-4c7c-ba70-e749fe4f48a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b91a935bf5834cd1a96baa9953cb435fad7b31575de1d1c72c0f4f4f26a598bb
Date: Thu, 5 May 2022 22:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651790338
