Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 655C4369B
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 05:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645852884;
	h=To:Subject:From:Message-Id:Date;
	bh=YLjWHsZPlI/UcuAYQvza4io4xVhT5QwEaiTYSCiqNdo=;
	b=EBFHEFYzct44LkI5Qmwp7mrgAVEtchFD96PbhcXanEub+16JUK1dE8GWTFFj4sy5
	papZm3yIWSDZ79oICJwfBXAxuDItTKKZxNBflwCdoHZV2KxXBdkxHL29HN+ZbcyIvzP
	1G0e/zaR8Q8GrQqzPDM9tYHcpJiiTNNDlk7ZV1hQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645852884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YLjWHsZPlI/UcuAYQvza4io4xVhT5QwEaiTYSCiqNdo=;
	b=CBBwErUYNo6+nxyrfdrUaKloS+xCL+0r1vrmL9FS6DHak2TSXehV89wPwUB4hhq8
	27e00X7XOYqYM2YHw/UcfQiSGdjQ+TKrV9lNgspSPjnpP+8X5PTDd4yhKJIfgH9SheO
	k1bAhclm9B+VjaDVo/IXCirgmB+4QkgZXeLEqvqA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3479ff2e-9f500b1d-a215-4caa-b993-f2f8fb0f2b52-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a812892bb92a379c8777188e92dd41583360bd116e8fbbaf6a54ff5e605fad2
Date: Sat, 26 Feb 2022 05:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645852884
