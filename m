Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1E5A3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:32:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644867154;
	h=To:Subject:From:Message-Id:Date;
	bh=mGyngb0ABDDSf+MCeV65UZeKE6vtMRwpV9mf8N2BOh0=;
	b=anY9rfyc9p5c/8sG9dgRLz4+Ucwq6YTpQmjWmDhb2KLdM/T3xrQFGhoPbvK/bdWQ
	zZpNO+jLnK/yfyAGBEvwl6HoFInLd8XBS93/7GzF1B4DQcFTxrplC+f5bVFlON+sDIf
	cetA+m/XszgYgTcjEeDV+OueRWy5V0IPYUN4Lk18=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644867154;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mGyngb0ABDDSf+MCeV65UZeKE6vtMRwpV9mf8N2BOh0=;
	b=bupfOmqkGPU9IK4zYAUASswqmUd1j5cltvaeElnM6J3P63sl3UzkXfskE/LN88hZ
	2PYUSsSKOVlnCLhl8lvE11qMCyT+X50UAVWGYZz9J8mhc8qcJsFKfI6bugy15CXFh2K
	oyv/Kp1GIDd74kK3Iqz+dw50AWBuXc/Qsh2b7iPU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9b8f307-72f2f0f3-8976-4378-a19e-3c30e6caa5f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a2e2fef65b2cec6396a55c70cc24e7220f490d26b099f18725d09f7cedb6747
Date: Mon, 14 Feb 2022 19:32:34 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644867154
