Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAAF1866
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 19:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650482878;
	h=To:Subject:From:Message-Id:Date;
	bh=Ss36Wuh1CIvyGCHocF7w5eMbMRQS5Lx9ssCkuwT0WU8=;
	b=BmoNimOPJBdNvqdaQl/7otXDQGpsQRsHkX6bMXXd5JVxeGy36P+JpQjcNj/o6dz0
	NBA8Ttv8xUD6xctntAeEFkt+oPN4IMlkO46HhmK+J/2VJdRU5TgPaHYChhyrPqDU9c8
	xAmF2xpGb3d6gcrR0JvGFpblsySMXPtf4xPQw+QU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650482878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ss36Wuh1CIvyGCHocF7w5eMbMRQS5Lx9ssCkuwT0WU8=;
	b=GxPwpkXJdOE/H4QPU0oewB99Ve6nvD4Ro30JpC8bJapj8d0n8wywTmHZksCg1i+E
	bBWIA434AvE4auUYi3LPES9ZIxyRXgmAUjnKSuMqXqdVeT37ll3qSZwG/s3/oO5v728
	/x7pTEoWGynCB8MtqkKaa1DUUeYuaNoykJb+qNzI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018048721761-b3e592f2-2c44-4b58-81f8-ade9ccb8b0f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c38213f81f6028000278fa7814fe7215a323b6bd84daa5360f7bfe044aa2ad75
Date: Wed, 20 Apr 2022 19:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650482878
