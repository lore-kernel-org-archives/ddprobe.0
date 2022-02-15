Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAFE01365
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 08:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644913285;
	h=To:Subject:From:Message-Id:Date;
	bh=eBy/+IWV8qcXgXWcaRn9mDtjF+qrZ3i7esSmJQ78EfQ=;
	b=krLfmdCVD0Xsh/SLT0WHA28dzYEBe/eCaiVfPVvanr/seWAuJKGBnl4ig9VxDh+V
	cgtF0ecjSvVzXAfOzgs8z1a8jkZHfkTYatSTfhR0H/J7G9zLHe4qU84bx1Ra4HP18Gm
	TcImXB5aYUcTRcT0u2WqNOW/4nw4u9GbDTIReYts=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644913285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eBy/+IWV8qcXgXWcaRn9mDtjF+qrZ3i7esSmJQ78EfQ=;
	b=MryZizY7MocIwHVASSQufssy3ghVeY9bD13LZjfI5sz/uAOGslwZE/mRcrT5dwYj
	hstM65k6u8VVzYBwNpOmXP617NY+P7jRBba/wRaOKxEX2ieBL4mVrThsJpmjavKIdlN
	ZfgRfYuuw+MA/XA2Su0BzklyY3p1Lku99CVTF02c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efc78d6b5-2b14e824-c6dd-41c0-b7c4-778ef2eb81f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ba3e4659c455046733ad11338b9dd56d28f7ac23d19cd3a2df6c69c95d47eee
Date: Tue, 15 Feb 2022 08:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644913284
