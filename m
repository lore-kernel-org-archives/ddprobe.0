Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277692CA5
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 21:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656884812;
	h=To:Subject:From:Message-Id:Date;
	bh=YFJSL44LS6Ozsr2RarqxbPrx87Kr1JydHMurPBT4SGQ=;
	b=ffGEIXhQhxiAuHa3NUWHhytHGKi4l3mTf3yRJGqJkcgzv1IaYfZF2zxowwOhkwaw
	xSegbyrGnOEwSlt5k3BcXMTuYHLTJaShYsyGWoMw+3MkaMFZDdSyNgbumqUr2hc6pKh
	LDSsvUU7VQ1CQJ26aEosB9d72nNzvBBsQn46RFoI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656884812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YFJSL44LS6Ozsr2RarqxbPrx87Kr1JydHMurPBT4SGQ=;
	b=c2+QhtG6ncDHBNZfXs57omiebZWR0GhJi26EsA+YZTdGet2fKNJGzte+A8ByfnKH
	8zd6ByD6wcHikGUVuWclLxdSyivIe50pnNCWm1ZoMEPVY/jI9hmFFcSAq088LrLk7DS
	AXqUh7InMCFWNljl0S4QoW8LW0nQqyTWg1F1Z9tA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c607d9fb-5e73e005-6788-488b-ba14-d13e0ae3a406-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ec46b9ae207044a008058c60481c78b8fcd50f254e45db53b83248be3efffab
Date: Sun, 3 Jul 2022 21:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656884812
