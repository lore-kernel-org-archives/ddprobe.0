Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89F854A81
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 14:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645193185;
	h=To:Subject:From:Message-Id:Date;
	bh=6qM5JRulfjjUEPprjXyPShulkcSMRo1hckYFGKG70yA=;
	b=huWtO5zzDGgeqeaAor7/JWLaIlTVxmWs5u1TkliDa4ye8MCwWuZ8KzCSxANuxWl0
	fl5C1mWYHaq6X3+g3jvrEfTEoI7S525jJUy3b4hns1rPPN2fyKJEOdoM//W5lQeTe5Q
	YbimV3FFaDkCtSgvlM7Y4wEIJH6HeDmMNXMMQAYk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645193185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6qM5JRulfjjUEPprjXyPShulkcSMRo1hckYFGKG70yA=;
	b=UUyWMPfieuGvvFuu9aAfH1TtKgmkfrYKno+e8XpTc2db0G4Wp23kiP2q1zlr6+vH
	48/DnSn3Zyz+w8zfBcE9rKxZsf2yGvXky9JkUwIBe8nInKxhJZYtD2GZlr4trqQdem4
	baMzGvi/ZRtYzPhg1FwEaKlTO2LeFIw+Ux9tPXAM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0d27c5f7-fcb3efea-771c-4a8f-beba-3ca1cfe398ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df068c528af21727b4916018cda00b573e49141241e944143ff937c0ef91a2f2
Date: Fri, 18 Feb 2022 14:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645193184
