Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B2DC7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 12:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646914884;
	h=To:Subject:From:Message-Id:Date;
	bh=bUQqVGaT0jtRo+0ywfhO7fWD4GSCgHh+zb6wKbHKroU=;
	b=NcHHr90ZkP71goODfX0bKV8kAfvne4/J74E6aNXNnimlx46MZzjPzpwp77Ebskpb
	6t24nGk+b5Fz6DbSMLdvJiPFPE4u3jqBPBOKf6DELnDpX6cxh87UxeXEGc9Cj8Eiz0l
	75xty2hqcuZk9koTtvIwe6g31PKp96JV2rgM+OXs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646914884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bUQqVGaT0jtRo+0ywfhO7fWD4GSCgHh+zb6wKbHKroU=;
	b=C3+SEvg+NGW6+lSXC0Q9HLyG0bVjIo94nWlHNsHGHb+y0j4kEoeE1iYwX34/p32y
	kV8PXtTQlWGWm1nPc/v+rRQsOw2mKw2IqaYugcdQu9EF9etn8rn06H4zf9cKsy1dhlj
	KJG+QxZJ2zlgWdiIFIykkMdrt80I8wFBFPkEEsyo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f73c6d498-101cdd4e-fb19-470f-879b-be93ca17f8c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a09f4984289584efb586126d8e43774c7d2401fd3c359f2bb6f1d457f154c1a
Date: Thu, 10 Mar 2022 12:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646914884
