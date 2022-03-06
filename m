Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CEAC10EE
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 18:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646590885;
	h=To:Subject:From:Message-Id:Date;
	bh=c7pj0KQF3DNgbJl5IGF3wgINBQZjj6J8Chq0xwc59n4=;
	b=XodA7hMIRLcG8xN4Y+VCidOOwJxDa1nxpBn/Mxc4cVbT+igvwbL+e35l21EQTwre
	LGbbcofaNHDHXimgBcJMu/klyQT0Sxm2nVB5pK9llWLGxxbRSCbba/yyAyyQvGcEeMQ
	Wn4gvQcs8OLJUp1gVFJFcxP/3cUb0PzCdc1Jz/nQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646590885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c7pj0KQF3DNgbJl5IGF3wgINBQZjj6J8Chq0xwc59n4=;
	b=EzukPmsJPiv6IsL6hUjxqNo/HJ5hO/7pnkum08pLqS9pSehInngEP5dscwow3qTJ
	KEAILcMiqeIk/QA5GXShuw+Y/Jifn+M9sHdXMNGuX1Obv+SjN7TepgRfRis4B090cNW
	iJXc8MtmT5cy/jRl4UyorzbRbhH3V1cNTLaXaskE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6076fc10-3c242ae7-cf95-4b2f-8329-2389dc33a60a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a216f132c6c51f731b71be00d0563a463f34fbea2acc8a01076159db4b437dec
Date: Sun, 6 Mar 2022 18:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646590884
