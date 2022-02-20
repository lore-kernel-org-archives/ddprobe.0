Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A228317E
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 05:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645335384;
	h=To:Subject:From:Message-Id:Date;
	bh=DFiIcrrdl+vjODUPDcMX2C62nEMH7F/fKm+9rF+Fltk=;
	b=DBLC1VM8maq9LFmGbn+z//Q+TVWVm1qiXf8NjxI17+fC50WMMdj4ATVDuB7YuZCW
	PwjFlpWqhZILALgqMXVTNdP+q5yos3WZ73q26XR52Qr5Xd2cNdrn5UzPXeoT6pLA8u6
	7JzVBD5Y23+kma9ghabmsw1Dq5wCSDGlA8RWLr7U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645335384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DFiIcrrdl+vjODUPDcMX2C62nEMH7F/fKm+9rF+Fltk=;
	b=BgWZqBDLBxDTxugoMG12pwfUUaKiYGsmXg4n0GXb9jP+KgxFUwF8QTzddIAgi/tt
	XpjwKrL066hHSbXVSenhi3w+irfw+dV6FDoB1gNRPgjMQ8gKpGqzrTPdh9woqCjXWdH
	/n97DrtPmWhRG6ilI66jmtwQob6SB0moxOidkUhM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f15a192c7-5c60b809-c53c-4f1c-a41a-723194e04441-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f5084778573fb53d3f79c066b9cf2262aa28376b432583a84841f9d517f006c2
Date: Sun, 20 Feb 2022 05:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645335384
