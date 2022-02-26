Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430947C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 07:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645861585;
	h=To:Subject:From:Message-Id:Date;
	bh=4byCyQTIEV+iyiK9WtZ5fJEvgM/RJmfplQ5WdX2Qqm8=;
	b=fqYbHT0th4FApzTm/9gSRAM6bd/pxFoxsw4QI/BvN57T4jb1w41lx9b9KmCwPb/U
	2u0QDx2lEKgDRvfrrKSENsUrqv1Y6WdtmbnAdjWm3BDw2HlmbSmyouSV2irjVFN1iNq
	NTzIZ6ulU0sg6+WKS1vy1TDkapVeAxoVXe+WDgLs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645861585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4byCyQTIEV+iyiK9WtZ5fJEvgM/RJmfplQ5WdX2Qqm8=;
	b=gQdkyiE2MYVUaqm7a0kKlJAi04gfQC4pxsqvttb5KbMOLJa2S62Qqvzwmt392suc
	BhXoA1dx+799A+rLNmpT00Br34vJN9wLNwkxR0Eplyfr3Z2pJVkUe53dmrrYcGwvcUL
	mGHWQajXfbYh5BfTvwaafCxxDGfxZ1LgrQ6mRpbo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f34febf68-51438a26-0669-4c47-8e36-4242a2670f5e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 386851f5efce620dc6bc3b9f14ec7c7f24ce0fe611576c1ab10faf0358328335
Date: Sat, 26 Feb 2022 07:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645861584
