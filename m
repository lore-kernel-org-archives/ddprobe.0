Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCFF23CB
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 10:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652955719;
	h=To:Subject:From:Message-Id:Date;
	bh=6jA4iHrGLbXOJPSYY1d7Nd8mRapTwsPW3k4rEMTYGGQ=;
	b=Bs/YkxBeTrR7CRahI1Cxs5zUE5CgHjXi6Wdu3698PoXmLhfZCMQPjbgQxfju/jwL
	KdL1uEzoNheNqKXz+CsbiAcYAAOXmGmt4cgJ+BRx/x179iOiZeafOxNAsdzcuubIeDs
	7Oe6Q1qyoDjqjRozce/TscTaAExkwXcjvu0mCLIk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652955719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6jA4iHrGLbXOJPSYY1d7Nd8mRapTwsPW3k4rEMTYGGQ=;
	b=RZ2YS7rurc24TaD4tw6ZvAwXEHa6UBAuzS1rAaVGEnvDdRQ7qcV0Wk6d15otPQoF
	MCwASS74oG2mIWV+baYxQdyIQw3W2FNAxWU4f+BMCFYyr8+IkhS+Cm0n6Wf6LHfyGpK
	wurskWbxhDsCWuCnbwqjmFVvZwIxTSDSxeTaVsms=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dbd6a6b7-510bfebb-22b1-47ff-a0aa-cb2d481b29f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee9ab938b2dc020b3a1d54eb4b1e6098a6ba1ee3fe34096e568ae223f5b1849c
Date: Thu, 19 May 2022 10:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652955719
