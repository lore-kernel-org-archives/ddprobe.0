Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2E47D
	for <ddprobe@lists.linux.dev>; Fri, 11 Feb 2022 22:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644617448;
	h=To:Subject:From:Message-Id:Date;
	bh=3y+9eNeeBSWf7AeUsfgGDQJSSkzZ1JyvXnyG+B2YQhM=;
	b=UKKqTv4TM+NXrjHBJZiIsUW2zkZMl417OJ7c61LJLpZ9YmcsISJkX/bAxPITHb0y
	03lIKI41uVintknMxcmgjr1wzBC3OhtpSsFyZUq5q4IuiFfiHEqMmDj6C41nOBG6Swf
	QWRNgJsD6jPhjfrBrDwS6NKYRVbnq/4l7DBCQYvs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644617448;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3y+9eNeeBSWf7AeUsfgGDQJSSkzZ1JyvXnyG+B2YQhM=;
	b=cLR0hT0I5UDmAbYkbvhZTXH0BYD9RAICm38ubG/VOkDv+aKvrTltxbxLMtuRaXfY
	cJ9rGj7FVXSwtAyUc3oYq8lXjxNP7mFWiVZiqSoqETno26cF/4yhb3evArwDoCj/OlQ
	K+z02ZNx/nz7eFQrYz31LrBvF7/AiOmokTXVvCFY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eead6bc7d-28bceb51-dfba-462f-a4ef-4ff1ee5d80aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b38fa6b71976899cd655dbfca528881dea9949b43a4c536c8c5a742ad7493276
Date: Fri, 11 Feb 2022 22:10:48 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644617448
