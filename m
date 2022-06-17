Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDB437F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 04:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655441879;
	h=To:Subject:From:Message-Id:Date;
	bh=FKDuvBmHqWX1/rZKFtMUys2r0gyVbDXcnd5O2Mr6U90=;
	b=gkBLpeh1wJ95QEA5M7995ySXS5uDc+YepXwlLF/F1LoqoJXTZupwMgr/3yYB7hCu
	PEF55BCqGRVzg/t3ajFo4skPL2Y4ByRbOmZT56HwKPoKn6NpusKacwUnAPikLTSu7X6
	D7elKRVuMSIMkS+Op8r/fkCoyNYEFMXsE0O6ypgI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655441879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FKDuvBmHqWX1/rZKFtMUys2r0gyVbDXcnd5O2Mr6U90=;
	b=MbXLOyLqjrXMfbmdXkP/haa0g17knHnncdP4XhvIiRUOl2Ys/xB9VHpg9FOX6PKo
	r7KFBW2z4n4QyTY91jB8wUnWisLRrgDaWU7ciwODsJf4FNjqLphtBp/F09QHzjE4/e8
	1gas+KUvyM3FHoyGhe0l0u+LdZJYO2eL5wBuBoL8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181700670fa-849e7f67-54ac-49d2-a327-0128b306bd35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5b091edae676b19512e3b249f8128092bf542647b93df5c01c9f151811c54e6
Date: Fri, 17 Jun 2022 04:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655441879
