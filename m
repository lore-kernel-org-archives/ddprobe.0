Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E401C7F
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 09:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651570018;
	h=To:Subject:From:Message-Id:Date;
	bh=WaD/lyiSW8lziIdF2z+nLTqXcaxAzt+P8ojk7lDUchY=;
	b=BTyL2mpsgomKcDCq6vEWhqb5N5lh8QuiTqD9dpOw2kdpWi5jELTJdmfexYKM82bp
	YQ91YDqtrBDT2Ie3fUIs3u9zHfkwjpWUN1KZIRyhV6X8MRiPl4FM2RG7i1k3IMkTepq
	xM8iHegm7Qa7qw/D2l46Gzn8ElAHIxD6km5CVpKY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651570018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WaD/lyiSW8lziIdF2z+nLTqXcaxAzt+P8ojk7lDUchY=;
	b=SUU67P59RvM2rLOj1vSqbTkbaV27Q/bo5n2fFC8/ToiQatioHrWNlE3qVQ87+QFd
	agikpF+SQ1D5QlrYILgKOhznzVXGSsvOSWzf2Suy4r2eSAYFgpFePZgXOP/h27DSOsd
	B9MxH+mNSIcWzGdBr/ig58bV4lTPhZMJj1nnjXMk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180893e87df-a9a3536f-d0cc-47f6-b481-537dc34c9003-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8991119ededd5d5eddf4b830798ad07f696953949a4d56bf5151e25e6f5a93af
Date: Tue, 3 May 2022 09:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651570018
