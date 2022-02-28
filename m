Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96B6A3FDC
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 12:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646051484;
	h=To:Subject:From:Message-Id:Date;
	bh=VD1DYB+HaJDbTqpMKEjSbSQQQ1btCnFI7D7qYfEq9/U=;
	b=PuF+mFssArdPqKie7cOizkFVg4QD2cOqgYqFc9ZwHsGuLwLG+kame1r8tPS1VLmS
	5CL0y5OBb+K4trC/xyrykW9IMY1zTbQ7yNSoVQ+FAeL/3VlVyEYt83vYy+mBBvR1Tv7
	bOT/MDnXwy8mUlLOEwsIfoBtjNEhDuI0xPmROlhw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646051484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VD1DYB+HaJDbTqpMKEjSbSQQQ1btCnFI7D7qYfEq9/U=;
	b=Qt1sgQJDJ7vNs667NL2R6AVErXT21nYOoOoq+DT8VWBcoO3CEQUvW6BMo0cuAgDP
	P/TVdLW6Qx2520qZWaE0+gl6ztyX0tMgeonG7uN7tUYFVCADC/0nGJqePPkDeaV9Vvo
	nkBdxU7JPuD3oYDBNCpXcNjdcaLDS9NPpFLB8pms=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f40506445-8ac2c946-2da5-4d1a-8ecb-3e059fe653bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b3a4b3acbc18a0870efcea78b56f2e6dd1337581e0f8f024e2e517f387afa081
Date: Mon, 28 Feb 2022 12:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646051484
