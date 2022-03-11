Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F89433E9
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 15:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647012684;
	h=To:Subject:From:Message-Id:Date;
	bh=c5a1e3ySwSKLXVRBp2JpDopSAfU3g3vWKE/Tj7yvy7A=;
	b=WJB19jk6v1e+5mgMeUyrLz1lvxOl7fPdWkCpu+cq0lPL6pGskP7hPnM0CAzho9T/
	lbgU8YFz/JfvBDbo/v6wOFkCS9vNvGUYwU0LGR6SpFYluk45MZ5Tqmbs3KI8tahPzov
	qkxKhp4NDii/ZMjNe5FLeln2bhlryMNHUznvx6k4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647012684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c5a1e3ySwSKLXVRBp2JpDopSAfU3g3vWKE/Tj7yvy7A=;
	b=ZO7byIy9SJ7WB7lQe+dR0aBjDYFp7FtTUm47TT/URjYduA8yWIRW8rMPbmOR1/xL
	9Htpx58Olq1OKpymhnFSFWQZgDukIJ+yHO2E9DAxgmphzm48yR5vmH4PVni1O2unyGJ
	K158B2iNfTk5AuFgchTub4ByyJ65cTLLM9u5W8WA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f799b23e5-b13ee3bb-0ecd-43ed-b8e4-c9bba00f1b9d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e2db97d532605bc357a1a599e13de7c8b2ca4746ea0900d7f217efb1cdc262c
Date: Fri, 11 Mar 2022 15:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647012684
