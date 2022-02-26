Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 912A423B4
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 16:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645893684;
	h=To:Subject:From:Message-Id:Date;
	bh=plb9PRPnJX4bOaSixepLLf4BBQhXD9rfWGA0jibVsPs=;
	b=VI0kqlVqDth0u0ViDySTr3949k18kClROQ6kfXuY24IvrvzPwPhQ/kseOre9XMxP
	3m6ScvYQdgrn+TSGr0H5aH3clI1lmO18/3iksq6rSJInV0GTbFpdncKrGbh3qY10lby
	BbdvcA9O1Eqxx1fE2gEDyqgZndaAt5JdwI5tC/O0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645893684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=plb9PRPnJX4bOaSixepLLf4BBQhXD9rfWGA0jibVsPs=;
	b=IaVjGjZ3fkuE58I9xlwIbJssGKd4PGMapm/jc1uWbJypc+/iBHXKbWO/LZTQNG2q
	ip5yhz3YfAtiDMINfgglf/09iPGoRoEuE2e814h3kgkRQXzvr8js8hzhjuPiZjcmp6e
	KQbAonCl+ruKpooYiq+/CazNKbQTGswpKEtB7LCw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f36e88e20-d290c264-582b-4a40-812d-6e23b14e3def-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3116d7ebdeb1dece1fe86a72a60adf33b06b7c26332fab2eca2d225e68879f5b
Date: Sat, 26 Feb 2022 16:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645893684
