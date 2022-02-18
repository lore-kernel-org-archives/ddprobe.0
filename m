Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F6C44C9C
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 23:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645226184;
	h=To:Subject:From:Message-Id:Date;
	bh=REfjX9O83RCp+5CGxf54Yhc4qBtfdxEL3bo7YnfxwWc=;
	b=N4JYsZqW5a3gMMXWL7/hNN8s3nxXPjBwkrCNmOYe7rZoMWGGb0y8Cjr8ElAodsH/
	3Kjuq0yHA0FV9zHBv+7B99iLSFXqmqceayXpPvn3dT4NGVGfxiEnuEkcn1Ds1axVgNQ
	U7UjmlSL2YBAFp6nsP5pvYUWy4y5BfblUCawkHUU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645226184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=REfjX9O83RCp+5CGxf54Yhc4qBtfdxEL3bo7YnfxwWc=;
	b=Yllunkamd5S4j2TzohCnP0eQdGE8+K5MYdwCNOiPiX8AWHWlExzI/4nKYvJ0SPwV
	nnFgp8LWX7pG9sebEwpVEEQ+dze6iPrfNKdgUqKcH9SLNHQGUpRjwRTOTLzuNmO1vSQ
	/F8dAUqTN3zFtLhlkSKwREOYmZvmtyier3tkm2s0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0f1f5069-454ee81b-c61c-4906-8748-983e2a33a786-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 606db282df72cc6a2a00f533136c060288128ef4af40074aa8a70de31b93d982
Date: Fri, 18 Feb 2022 23:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645226184
