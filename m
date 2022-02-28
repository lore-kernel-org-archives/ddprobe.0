Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ADEA7C
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 16:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646064384;
	h=To:Subject:From:Message-Id:Date;
	bh=wweAKRBrUaR9kl5EDNVEOQbdpL3FP8Lu6n6QK27BElY=;
	b=NmTjpjtcQCNduIuGvt+ti4urbDguvjZZ7YkfAWKi9muv+G61Ppa6lmoJFhKi7ojm
	0jCyEuv3XD6cTyztsF4DfDCP6MP6ap4g0d/DSsvuttM+EERni44qTC/sdHUOS1sBqg5
	vkZspH20/s9/HUH5CbuxaPRAg5uqeVsxMmaSUUOE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646064384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wweAKRBrUaR9kl5EDNVEOQbdpL3FP8Lu6n6QK27BElY=;
	b=CtERR5ObjFBugbt5qfi+aPsSqy4y8Y+/0IiTceBO+roCJlfPJTAQDTRWkWI9pTXz
	gMG4vPYxOL/XAaRcjIs1Itx9vOFIHDnaoMBuzPxqWXydu1huUq3X1XqfUD1egZ+p/zv
	htEaa8vK/20PSVDcziI9aVYRUmHazaRDCMERZUuM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f41153ade-4a7071de-241c-49c8-9e7d-0b9f077fcbb4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5787884ee4c533e438109f343a9ed68fc8c7003168a3e26ea49e69e0b994ad8
Date: Mon, 28 Feb 2022 16:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646064384
