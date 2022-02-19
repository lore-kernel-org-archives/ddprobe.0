Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6665383
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 12:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645272384;
	h=To:Subject:From:Message-Id:Date;
	bh=34wbXWhUXadApDHzKuIMNSrxsC0itLhZU2io4euaopw=;
	b=GBSFJA7u9+9rcFbPkWUJuHLEbPbsJkCtdOamcYcKaRVJ0qQc4me500kh8RmverdV
	2Ui6o/wzM9OHPA6XxRkr0Nz+VX+T03bgnwMoLtbQqSoqACudk3gkqEvP4qvuqpQddJ2
	4RmQ6G4zK+kkHkWyqUrj0zuOw5+VWg0doW037usw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645272384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=34wbXWhUXadApDHzKuIMNSrxsC0itLhZU2io4euaopw=;
	b=XSgh1c0C5Kl4tbmZT9Yijb5jYOOmrqrprS2j8uMyNvSASIMzzBH+r8Ntm6xQNiwY
	M4PKYRBLzT8/H10pKsUVDOTp8+PR6smWWdkTfBwLzq7UjC7qR49IHI8kGwMhk187ul3
	L4fRxqfq1iwztTrhJfcH03EGJikD15cFpfMfd0y0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f11e044ee-6ef03eb2-fe79-4a5e-90c7-98848e4acd7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc6d0ac78d639f09ffda9683212326df11238b91fc186dc35df0c16089b88f55
Date: Sat, 19 Feb 2022 12:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645272384
