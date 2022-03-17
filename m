Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70A967A
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 07:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647501684;
	h=To:Subject:From:Message-Id:Date;
	bh=VFw43jYRsQPB05UmKiU+IxmhcjDtvRGraMO8LIf9UDM=;
	b=eS8FO1A3KgwB1txM/lrweB4Qw5U1Wg1Cd8FRykryeceIS86wkFEbXu5ZJWIiWkBU
	P52ylZoMVype9OgnKH9vTkJc0d+d8kZk0z9ngvt6UQFdTdqsg9R5YNoFl66kPuk/Uie
	ApDkF4Pz2YWLu7MkUEtGAOQltgSgHlxTPhZTTMvU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647501684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VFw43jYRsQPB05UmKiU+IxmhcjDtvRGraMO8LIf9UDM=;
	b=DCjpnBe/a6NuDn5ru1bN/verSfwe+FECBVruTRsnbu4vkGnW0ee2rAcgnzeR459n
	zgR+6mL2snDZwz2VtGkPGspvr93Mm6EwbzzjywZ6/csSCV3OsKd2gQxMLUWaDa9KBak
	bUUW8EEzbzltseIkDDcbvnjw0EMKlRz3+M2TkPS0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f96c0b018-bff7c592-1457-4e46-930e-4e5ca328455c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab30f341f26b1c65b5e28401f6bd55c9cd91dc4aac87ab99b9dde871bccb8686
Date: Thu, 17 Mar 2022 07:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647501684
