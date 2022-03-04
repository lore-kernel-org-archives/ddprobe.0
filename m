Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCF597C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 04:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646366485;
	h=To:Subject:From:Message-Id:Date;
	bh=+wxIYv6wDtHzx4TRDVSQRs5McrVmSVvMMBVBxSvSHds=;
	b=gjjqEYrqXVyg4+ShyxoBImN00BcWmBFohhAyChAyQ8n5D4KhAhNZeLan2CDpJYNC
	l71KEVX60UGO4TbOTwy8cvLs+lsyoFxWkK7E26/0mZAWeA+Do63plCCnX/jlCral0fH
	qhPDS8c1Cd7SzMhYywwvE0Axi/mVg3FqeVVY2vww=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646366485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+wxIYv6wDtHzx4TRDVSQRs5McrVmSVvMMBVBxSvSHds=;
	b=JOVHLCO+YevpSN+LSGHK/vAla95Y0lZW1JDiYfwndmhoiOplwF55u+pu2hZt77lS
	vGpMrmnqXJ8cLor50CMebisoqYf7x6P4qMfozi+u6ZopNZ7FZhwj2FECJl4y+OXWoOb
	FkqDw1s8EnetjWuIw0sA6QiJz38lXEr4K87vPThw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5316e929-86a7a4ac-ff70-4009-bdae-abacd518b148-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce6dd03a26e7670bb92fb39341799d6a49fc541cfd539e3a1f2ff2609f23b123
Date: Fri, 4 Mar 2022 04:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646366484
