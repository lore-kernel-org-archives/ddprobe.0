Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D8C38D1
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 00:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645056384;
	h=To:Subject:From:Message-Id:Date;
	bh=u48K/gMgSVQTujb63GSSjvmkPlF16fGDY5uk57KbGx8=;
	b=kjKFj4kzLvLXtzaqL1QC3U52HuMZdTkWWqTuDuLakhkInkSFvdIl1fid9Ghv6Btx
	LX0b2vtFBtkpqiQwYzCsi/tgrF1kPnQ4SMRsjR5R9Sqjf/JzX00MD+mVkTuTf39Poks
	oSqGN4hGiNM1Pfp5MP4oN7jhHt5+KfhoX7R72D/0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645056384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u48K/gMgSVQTujb63GSSjvmkPlF16fGDY5uk57KbGx8=;
	b=ZPk2mjKrD3RPkfWvXRB97CBwxbv+hUFNF32pYTefVrRpqIzWBR9DO6moSLLwnItz
	5YpRGsEGKGBugA79ptlH/7Q6nScD5ExN87TwHzZajxM8mffHCy9vWvUpvZGruzn+SV0
	32klmPBGqiSoq/620vo3CF7rQBs9pnww8NDdaVCY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f05005ec3-e4e5758b-b667-4bba-8bc1-e5d4756071c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f334a3c20663ae618204c05baa363e0643d46b58098f99a8f08ffa72417e9fd
Date: Thu, 17 Feb 2022 00:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645056384
