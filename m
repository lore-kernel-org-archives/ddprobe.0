Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B9357E
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 21:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646603784;
	h=To:Subject:From:Message-Id:Date;
	bh=d5n9KvI0Lr18tUHoKRET2DHblFD47dB4jnGZK1StP7U=;
	b=bw31cLWemsgnOxchpChGYaY0pWvzt23u+6CfgKWbIo9a44PO8DffGBHboxagalS3
	FaebIBjaajoRAYPcoH2s/IfMSswQhpYzLbIWtWYWOfKccqb+F9Z3xuIXx0W8TXfaoNl
	kO+xDYfXG+Bfsdp/HnLUQE6kgGW3k6se+xFhQqAY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646603784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d5n9KvI0Lr18tUHoKRET2DHblFD47dB4jnGZK1StP7U=;
	b=Jzyc2qhC2l/ReZhdqKxku/5tzr6EP1IgD+r5u/eabklqZc55eLXBDUzuCUtVfurq
	m8hptIbWFP2MlmIrjg6zbuUhTpw6FacoIRJeWFdH390zCmAfBGzDR9ilcIim3AFMfYJ
	0XMMMb5XLEx9q0zIp7fNkK8k4WZIJhU7dSHnfiFg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f613bd22a-b47d746e-e7b4-4bce-93a9-c162e8236f60-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b3df46387af48c253b0497652719b80877e8579acdb26ba05ceb41dbc2c9dd4
Date: Sun, 6 Mar 2022 21:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646603784
