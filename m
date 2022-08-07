Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59DE97C
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659843052;
	h=To:Subject:From:Message-Id:Date;
	bh=5tb5iFAeK72PWgFAgc4JENDBqiplR4Rg/LtUuad4VAU=;
	b=Ombjv2Sp9jEwv2M/0NIcEG+ihGLUATrwYrVYaQbzSTytp9PgWtrdP5IkifEdlIT3
	3VeFfA9C0NjYr81gKnF4xOpCubVkpMaQ0h4X02BK/F8pFd8FYVfMSwGvH6dnZmVTwtA
	6VhiFt6wQpUePv4rrOSoOJ78T4/wGiNL6VUvhrGw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659843052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5tb5iFAeK72PWgFAgc4JENDBqiplR4Rg/LtUuad4VAU=;
	b=DjhzKquX3RPrP6n0TjfA6j5ysCNdhz/8lVmrqh8nC+a0Cn1Ilk7jTOqmcs5uKgDJ
	UTtQYkqSodawfQciWJj1n+1ErjFmDZ9lqL83QCrxV8HWapLZnzl282+GxX5hKkP5Ebw
	JpSOhuNPIqqaWu7ElfuVKQGqsY123XgLaexCcZPM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182765b03f9-87ab70ca-9011-4fdd-86e8-62c05c753182-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c9f3b4e2407b1bced9d53c1855cdc7255962a39026d0e6988f71acfe98df836
Date: Sun, 7 Aug 2022 03:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659843052
