Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 668437E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 07:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646983284;
	h=To:Subject:From:Message-Id:Date;
	bh=ijrrwqM0Q2Sl4aY3+CEg3s1hgUn38TkOzora+ZCZHXg=;
	b=hKY4Hs971LYZUhS+sM1W991jt9+rOK8JpGs/zkF6VKrVr4n3fOvX7DO3e3fzcUE0
	unw2IgmMtDCLkT6JkMrb5z6nSfqtQ9dun5Jp6qlmiARohZ1VjefatLw3UliultM5u2D
	RnupFuZyE58ViCN8ZGtnfjcAv+7biSVxRFEojnfE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646983284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ijrrwqM0Q2Sl4aY3+CEg3s1hgUn38TkOzora+ZCZHXg=;
	b=OTVpntJDNlRzlDIiHgc4Zt62jL/RpgAm3eeZR0pI8xGatgw4w7lIwLjDy9cofzW9
	itsmF8AxME1YKCDSSxgkzGLBBBxA5nQQJtltmU+vc6Mx7VPM4v/Ke5inVbGdAofGC5c
	rV6eFcS4CXh5/ivKTXgdvnWe68wcYqe3JouxkC9c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f77da8814-0c8acfd4-a93f-4a56-9f2d-6ca2d3395a88-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 726809e64000c03ae04431e9f10504bba4ee4ee2caf4cf0d40a2ddf3e299308d
Date: Fri, 11 Mar 2022 07:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646983284
