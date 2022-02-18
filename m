Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84543460E
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 00:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645144284;
	h=To:Subject:From:Message-Id:Date;
	bh=S+o5xycPWIZeQC3q1SKt2bniT3L837gQEATKq467Ftk=;
	b=ScV2Zjlvp+InLwLUwLBr5dsnxrt/adFrxgLzoXdIigmyWC/RTNW1V+N/gKoiUUdO
	X2tL63bmJ2aYaVsTrUVymtegswT3GTgxhRcw/KtFTPm4DPj1WUTx8Sr3QeMqupjHCxk
	B3MBVZebYOXvwPPQkALbyEEDg4EFf2pBUGsHfs30=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645144284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S+o5xycPWIZeQC3q1SKt2bniT3L837gQEATKq467Ftk=;
	b=TDY9mFLv9vcs8fyaV/q4TasHyd7DtcA5xFQN0FeEWbQe4LpBZ8MeYn1DPWM8UU1C
	gLsdxCGmuSzcQVu+k6PVYZotZxQCsWcETif7n2UPvkdarfo+vuoOf1flv6HY5XBAsOR
	Wn0smr8ANY7B9BBmDi2/BqE88Ab1JxzHYQ+PeG6A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0a3d9e7f-d2470e1a-a406-4e09-b610-eec9567e0282-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03bf816531cefb5d27a91b2b3d02cdfcc0a9fab2a4cd41a460475c45d4ca2fd8
Date: Fri, 18 Feb 2022 00:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645144284
