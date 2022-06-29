Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C86D6AA2
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 20:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656536212;
	h=To:Subject:From:Message-Id:Date;
	bh=lLJPg9e3EaZ6+hJjPXHVL+0d9OwMklCzJmZOQ7jzsvE=;
	b=OoeRz9KPdkeKtNV64HHBua1Fv1AVWK0L1QkYMh/QT1mXdOoO2TYzJpZJ5CKWzIL3
	NP7quLdTwdM1UXIsXoEWAYRsaCqH0IwfXXQxvHGXxBZEF0ZHPLbfZyk6e1CswNYIlXV
	0esAzDuPPFEzBR5grfyyFODSi25eE1MCucr0jox8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656536212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lLJPg9e3EaZ6+hJjPXHVL+0d9OwMklCzJmZOQ7jzsvE=;
	b=X4n4egM9WF3rs7py8QCWlMhZkYDO/HRu2FVvKzal6NlqN4l/+Mg3oGFhsJPKtsKz
	q7+sb4RNZ9gKcUorPAkC2TKrkxWV3JJjAuJFG+MBvLdi3Oo5H3NMyPmZR+/VXR+HCtM
	U3ilvZron9jdvcq5Uxc7SL42h0HKvq5vBpPvSx38=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b140a356-8db90936-4bee-4202-9df9-0b9e171941fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32ef21e155b9491fb4f6a8f438b3da3eebcf74303028ae9ca41ac0729f67273f
Date: Wed, 29 Jun 2022 20:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656536212
