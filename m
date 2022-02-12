Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DB107D
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 20:50:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644699035;
	h=To:Subject:From:Message-Id:Date;
	bh=Z3tAJvBhv22L5Elhf+9aMXt9E08fcPkrKLE0N+xsHxw=;
	b=NyuV5asr1MoQJo4y5X0oXLQOzVgYmfdbPlcmU8w2ndBSo5pSSKt4JzCtJIGMOBVF
	mPbaGkeHwx4z3C3nn7TJgrh76IOeXgSXKsShWP0BwlbML0B4RFsoVoQAZhaYeR9OAMR
	SKxg4jOm8w8radGAByjg7bHGFRFJjGf42hDv6/xQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644699035;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z3tAJvBhv22L5Elhf+9aMXt9E08fcPkrKLE0N+xsHxw=;
	b=KggzrjiwGJ//UcRlYDyMJ5z5HdEDad4uOQPJvvpoTESRaaVCz/IiBr53suuf5VgO
	EahHUjA4TcbRKrqbfrAP1Ie0MESaFgHB5OrR/p9gBKWJJbhzF89pfEeABGf7KESb+3m
	nbfKU5KNPjw0Cw+ZfUAYuCX5/YbjU2AfATt9uWRc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eefb3a508-d6427897-0950-4fa0-aed8-bc39fa2f83aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ecfe2dc910029db8865ef43c748d6e135380b11d08f4a544b75f01c819a7652d
Date: Sat, 12 Feb 2022 20:50:35 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644699034
