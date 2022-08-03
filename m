Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2B4210F
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659550252;
	h=To:Subject:From:Message-Id:Date;
	bh=KM+2s/kB7qRHtBZ2pYz7bRZWKU+EQzmYuFffdDfwzOQ=;
	b=S4vIOEwzoeAlYL5/SijEl3n3M60hqDj48tFWZHbWTlYfnydDt5oX/Y1CUrKhupKR
	smRr2VueIH/j0L6zUQbv5uHXNlFV/xijb42pzfmYGP0sKUJU0fj7ROqoQF1XwkFFlh8
	SBvCSH9N+nlr+a/GFGmipL+F5V+bEcpEGJUjaI80=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659550252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KM+2s/kB7qRHtBZ2pYz7bRZWKU+EQzmYuFffdDfwzOQ=;
	b=FP7AgDkqhC48a4Vv7MsFx6IQg/2n5RmZDU3ZWaZh5Sj9CXWq4Ovbqnltj8GNAZRi
	ZEVG/Zp0OFd5M/kjQ/8D9m3opa4Wr+BijkvIpPaGWxvG5il4BjMJNYKL3kPao/T/vQ8
	x9HPgA6FsNtLq2BngOC4ylCnhyXPit4ExbDl+YTY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018264e73e08-3005077c-a74f-4223-a7bf-8166f67204c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7126294afeb978fc1994fe598de447e67a88dcb7a7a6e8aa924218043ce07ff
Date: Wed, 3 Aug 2022 18:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659550252
