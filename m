Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FFA381D
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 12:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644928884;
	h=To:Subject:From:Message-Id:Date;
	bh=N23KKIKQAZ278fqRRCSzsPX7MuR8LXKQk5Zc2qKvLlk=;
	b=jwmHjQOw7WG7sK38ec6/whMyoLJj0ZVk7Y0sSE559m/ZjGNeNLgDPyKnylHrzmyI
	cAySKJm2mOxwTqQmgyXLTkW300oedqoQQOtUO683RoJa/y/Pd4FKJ4NLmRQLq/jymdd
	Wyc/phX6aG8yM0tuId7oh2q4TMJID20G2rfxRay4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644928884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N23KKIKQAZ278fqRRCSzsPX7MuR8LXKQk5Zc2qKvLlk=;
	b=Qkb/6qROUvKPbq4dND+ZWi2Z6Xpw6uqtMNrs65Xo4083EO8PiLNdnvJMcPj5JkSB
	3DUusbQ28TF3aFcY/imVXpSJef09wIU8NjQS9GYhBdUnaAJNN7WQfD3887pxfzOYOCy
	XUA69d1vpud3Rif1qUfOl0d0N4ipOxwpWXmpPiTs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efd66e002-84272e3b-6bfe-4b04-be16-7fc6ad65fa3b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2f7edf57fe496b19cbba5c0a5ec7b014cf8ad478c9fd155bd56d8a688740358
Date: Tue, 15 Feb 2022 12:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644928884
