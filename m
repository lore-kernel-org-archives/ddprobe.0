Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1156323B5
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 07:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656055612;
	h=To:Subject:From:Message-Id:Date;
	bh=PU9n0P4LLHrgRImdfex1S01NfSoqZLdU3ZhRqtK3NZE=;
	b=kq2YZ1jArIfm02f92o/2M3KvJYGoDyhBX0nwfhALCLJWE4V2swjJ66OZ7OBM8qm7
	tDCkg/71XZiKwUQKYwEWSuvfkSWzn0PhSSfxMgrLwlmuB+ziBh5q86DePPEk0nTxyFj
	Db36VKaNCGKkkqmwvGu6QbzZJc/5tzrVWXJkuWhM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656055612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PU9n0P4LLHrgRImdfex1S01NfSoqZLdU3ZhRqtK3NZE=;
	b=QiAVZ4pZn+RKG2dJ9k8dVHl2Q6+qTHkBtXl3eZpBBRRVrgePqmDkQWCd0WkJE7ds
	mVAuOQ2BXdsYNNeWsfha6hAa/xf/+Bng2Uagdn5oPi/uhQPfLN7yh805SLBhUCAPnbz
	5ojODIVDkK7zJzUvYezC1viYJ166KdYhOCEncnlU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181949b43a5-dbdd70e3-3c51-4d9e-a4a8-20bc8bb69f3f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2393563df387dfe1a4fb607155c7515065fa1012c009bdec6537bfe664dcacfd
Date: Fri, 24 Jun 2022 07:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656055612
