Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A75DE7E
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 08:00:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644652826;
	h=To:Subject:From:Message-Id:Date;
	bh=uMCRKZUgMms7/IMYKQNSFQkOn5jJxiauVpz6xUL3RLQ=;
	b=Y8zf8WMb1Mke6W1S1wuyhQ+LBkzpDcJkxyAHIJkj2ngKegJHOjwKJD1BEBQix8cU
	k4+oVidu4TvGbYI8nuF/Jg+MaMLzzpWX3rHbpxSQ3dJBVnAEHgjpFG1LRLp7oA6O3+I
	sABHqpV0d+cdpCS41DLpvouwnZAl3yhveBgPvKGA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644652826;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uMCRKZUgMms7/IMYKQNSFQkOn5jJxiauVpz6xUL3RLQ=;
	b=b5D2ALwuQDQxJOR0Z3UFDfSvPzeO0wgEm+rc1RKITcYT/BLWHbWkRaebO+s0FF9M
	LPxBYEwD8GmNbnfsuEtU9C3if/r+aWJB1a8eYipDcKR81bHN5dmb5W1Ujp0jgtWC3CL
	m5CTSgj0b1lFI8LSmJSriENMT5+83Lx2TUTyrGWY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eecf28d9f-b71be7ce-3a26-4b55-b969-7d9062079ecc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c46bebf69119329a9b56e09f9fa6281084336823b15e00104d99cb06eb187245
Date: Sat, 12 Feb 2022 08:00:26 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644652825
