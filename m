Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88F817E
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 08:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645518385;
	h=To:Subject:From:Message-Id:Date;
	bh=XL/w6TxC1hL7kSD+GHIgy9IV4lQ2Sdgn51Bkm3w6jps=;
	b=FfgTeIgh+8VUVWZVLlg6qUsyzbMD1hqztxQOuUUUdOxtKDsjF+NjCZVhArr9Msr4
	vA+7J1p8Z1Q9HxtbTDq88KrnYwD5rTpyfAxlHx58pa6AIJUREWugeY2ShMZrQs/Mj4r
	bcJFoC1BMymvkrUDlszd3FvTcgTD9+3i7r+3yP84=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645518385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XL/w6TxC1hL7kSD+GHIgy9IV4lQ2Sdgn51Bkm3w6jps=;
	b=V032glGdbWXlFCceiYN0uHexlRIPVXvjfPg8NVhoDVmruxPcA/SWq0n+KY1tkww3
	lcURI9QBt+3TNzlVgquzGTLX5KGLTvPQHOVWs0ZNDk7FNyyOOg3F+BDhYtK3CIacWz+
	0kXu0TNT6ep+Svz/wCCHSDteMhDIwhXnMlk5GZgI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2089eeaa-7f37c2d6-3668-4f77-80c1-c1930e7b6cb9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 925221022878ec99f7260c0fe4f36034f7790ed34e3840ae487359b22b97f3e4
Date: Tue, 22 Feb 2022 08:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645518384
