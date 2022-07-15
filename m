Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EF3538C
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 23:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657928812;
	h=To:Subject:From:Message-Id:Date;
	bh=vrqk9UIH+eRkrgEJYS4P2XsW0G93gnbRma9bUY7Q7Xg=;
	b=Q2jSImUNiXcnD1x6xHzuVh9taASVxKaFTXrH051g74p89Hj/YNVRzHHKscDGOnQa
	M8dUMPxLvC26HchTo10LrpogrzbK5e3A21qlmFJinjJ4mOeRh1WZKMrS9LBQ6G/53Xj
	VnQ33CN53OFfBCvs2He4mXYnBO1Pp7j20jsoarUI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657928812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vrqk9UIH+eRkrgEJYS4P2XsW0G93gnbRma9bUY7Q7Xg=;
	b=kn6SWfw2KH5TuTDpr/mgkqhcU5Ib0qSvnQANvCBXgAZssQUTz/vil1kTPe+UBFNF
	1ULXmrEKPiYPhYK7rZOAe3vglTYG9ELaJmtA1Lj31rg252gnom5Fcie+/WWTBANR0NR
	UGTx1LmRs76nvMy8Qs2pRH2TxOtwvsVL4bVgwrAM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018204420725-8a772b2b-bb76-4682-b303-d52423b3b494-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db727e94a74055c031dc0f9bf5c029a206367e84b09bc0bd37b15ab54eccbb04
Date: Fri, 15 Jul 2022 23:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657928812
