Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D5E37C
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 13:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646834185;
	h=To:Subject:From:Message-Id:Date;
	bh=jkfYHSJNvUAfgybWkdCpFq/9T4slV+wB3Rkw8Sv28UY=;
	b=ITJQXmf6SjCac4QYw9TxkdHR7xplje+tdifB2G2kgE8cm0BzHoiHZdr2o17Ns6eI
	UbgRneVfCOSmbQIqeaDlRpdSuMDQDqDcHEu1UI6pQ1iyJDi7qf6mK/7C36ENl6b+NOw
	1+uF0ZgT4rWLmY+un+QdLkh4gqCnqUNnzI5gGuww=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646834185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jkfYHSJNvUAfgybWkdCpFq/9T4slV+wB3Rkw8Sv28UY=;
	b=h5a8oQ3KFMa0lDk+r5PUEBperBgHKv9r3odnZRw3jZlO2uzzwdW/enD7NP/1X7d+
	B0rLX/EAQFAzydzz7uwS9cMOzSw9jcwm8872p6KNG2KQ10+K74Fa/CDWiclP8kBe7Bf
	3Bb5JU+q64EWJ693qUk4cJ39w6xNsln4WXcnWKlY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6ef7722b-e2061312-5b83-4e3f-a0a7-8cff7edb878c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 73e3b9de03d87af142bce81b040be708a362da37b3188d1158c43cdc49b0108e
Date: Wed, 9 Mar 2022 13:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646834184
