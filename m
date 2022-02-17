Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B76D53B4E
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 07:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645083085;
	h=To:Subject:From:Message-Id:Date;
	bh=+PNmzOWoBqJ25fziBqjyqne1Iz+MhhVDKeG4lEicgyQ=;
	b=HaVd4v+DYrwk1MpFyecdER0Nm5EfJhWtSBlPiU8hK/3kwo/SEWDIYHJHLW9wtjGZ
	1vo8xIGV6qhEv/K2Ace/Ghy7UsxgJ9CStav2PXKqXmcfprPT7loIVn+Ux+DPPEq9aPu
	YNCL9WrfjHpGFaEwKtA4K/txD2n74KpRNg1gdZPU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645083085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+PNmzOWoBqJ25fziBqjyqne1Iz+MhhVDKeG4lEicgyQ=;
	b=gHZUuj+oas/w2TM9VT4j+q6UGqSgcJGuFM8/jFS/aIIzmWl+cXWGtqwtFcru6Cq1
	T/vK5in+pNwXzE8hQ4wyv4vGYo3eaJzAwLy365zxW9nvXJNtncdv9Zdmg4C/Q9v9jls
	TKp0m3bB9lO9294BkMbtGJnaUrOQDfg+wKNshg18=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0697c7d4-273a88e2-9e70-4901-a9c4-17089c2a8a6f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16f3f1a549e13e235ab946251f6eb9670c1bc55559f2a3fc4511b9da3e368529
Date: Thu, 17 Feb 2022 07:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645083084
