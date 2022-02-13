Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 961FF2F51
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 02:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644718805;
	h=To:Subject:From:Message-Id:Date;
	bh=RAWsnjBBXabfbSx7pgqOmzGyo45pFG4+CiimPl2CQ6Q=;
	b=RK7KZ3M9dmX7b81zr57YWWG3F6aWxh+/Z30FYqkBcLbKZiPDsKduE+a9ZkHMuaoG
	tdndcDmfwd8ni87b4yiiFOQSXIwXUMkRd67r07cDfeHU2TA39agtIYEfm0I4Ca5fHg0
	jvXlFHC4jCLfoYVbvdipwenPpRZmP6hdRXrChZIU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644718805;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RAWsnjBBXabfbSx7pgqOmzGyo45pFG4+CiimPl2CQ6Q=;
	b=jUtaA2dDXfqkpGoSZgT52P41nITNhcZ2RoDdqZavpXqKDldIxpG1bw1MxhF5p29d
	Sz2cLNTDHU3fgNyfnmIwZqDw+7u1Y2L84FfuvebbE/DBvGzekC33gLDntgRNdMhqnAj
	8Tycdal2f+q5dbrylrBIJ8YDSVShTW7+f6btcp60=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef0e1534c-2a2e98c6-587c-429d-babd-f3e8afe4cdb0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 865da5a1a9f315af461eab10f9f564e4ddf340850ae02badc15962d93a7bc168
Date: Sun, 13 Feb 2022 02:20:05 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644718805
