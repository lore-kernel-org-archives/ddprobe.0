Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89252C8A
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 22:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644876685;
	h=To:Subject:From:Message-Id:Date;
	bh=Orqx/aSLf1mauDbq7r9NiJt38qtIw6IWy5TWEpf9hcs=;
	b=ROZ2BQYDp5DLqWL710+mPVGAHgdNO7A4NCLDqXdJNr6/DOgpdLo7gitUiehmLb85
	gfGTs5S2DXuKsDmwRno2RWn29sexwlukYHL9nzpOvsnF9d7pkQg7uehIDIeNy44ziB4
	Z+d0BpBDLJr83WY8tTY4IPioSs0XhtBed326sFX0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644876685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Orqx/aSLf1mauDbq7r9NiJt38qtIw6IWy5TWEpf9hcs=;
	b=WZb5mKS6DacdFp2iP1zg9ZZxyEkNsPixwd1F0/J0dyRnQ9zkm/yBGC+WQMobG/8L
	A+d+XQhfBxYrVKkmeCTgfbX8viDyJ0uPRhyJUs/zJohZnCF88JzQ1wRzp6EmDTeUWcz
	ThhTyIx3Z0moXIBucAK2cIZ9WVOSBnqIJM6rPC3k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efa4a5e5a-75439b7d-c378-412a-8f86-099679c5afdc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff976b802f3de473296d7b7e0ab8d16d05e1e286bd93548a57edc451e0e7d201
Date: Mon, 14 Feb 2022 22:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644876684
