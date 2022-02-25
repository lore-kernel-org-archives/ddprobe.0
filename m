Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81C087C
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 15:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645802184;
	h=To:Subject:From:Message-Id:Date;
	bh=luDua3YnwMXq4kT0PS8VbMu1vIojBpGkEb7boWV43W8=;
	b=MYA6oUfoxL2AtjaHy0/qTQEkb39EzxCUELqS5QnA1DPnvOnQRPbblISMbd2S8pIT
	gm1SZ4Do46p+saeIKpjAMKdrQO9oIOWK0MwO0bBt3F5BAxbpuZol3xoSD47qfq/rT0X
	dHi566IjQd0zvvwnWXmixY4JFzspDWk5JW8nY328=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645802184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=luDua3YnwMXq4kT0PS8VbMu1vIojBpGkEb7boWV43W8=;
	b=dkk0/6hf10I7iagLnb/iu8uma7MKGsOav3kBgxJR3IapdebdcQqpqZpaqgPifyoc
	BniG/SRLX3WYjOQZ0VmUkE5q1qV4X5LfB/mi6dz+N8CUgDD4/JEWobC02g0Ee+B+roM
	oEgwjDf1yDrUxxovB7lchtAV+0+3iUifW+33I2ak=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f31746056-a1523a31-95bf-41cc-8931-0ebcc38923d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55e844bf7e3a970087f8db7a068eae0306b72dbb03808c6f730ef0869248c0c2
Date: Fri, 25 Feb 2022 15:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645802184
