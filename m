Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EE4ED1
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 09:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649584318;
	h=To:Subject:From:Message-Id:Date;
	bh=m2sxgqyhRet4YFq882aS+ks4+z2QtjXSonyUt0F/bz8=;
	b=EMv4hg/845hKCUWIWilxA6xyQFDDEVia5Orx/TAgAtUNNuTwXK2v/sS2Y3ZN6pDO
	Wpw0hLX0njPx1PYUlgWsBlEsEUtsKMmm0GAOf51Wmt1LNSUG+YCG1qPCBodxPgAEd9f
	k6SXfkvrrn644asoilJFaSiPWVsLmj+233Lzospw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649584318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m2sxgqyhRet4YFq882aS+ks4+z2QtjXSonyUt0F/bz8=;
	b=bo7YmzyTm1S97QNHkRR9hGWsSpVbXgzAKQ/nKi+KoMCW1EpJni4xuxKxMXT3dMP+
	n7WG37a6LuefKigzRCikw+gyZb4lM1Ja0XCr0D4asx0YqK+E8ROE8c4l8rB4UoPXLgE
	RO6/f7/FYDNBT/GGL6aVVMXZiKgAIaYq1hYx8wlM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018012e3273e-52ff28b6-5321-4321-9e9a-d47ec0e4ad5c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f689d9acc051d1457b6e2d8fc2f34790b6744e8b26bd807977ba63764ec7ac2
Date: Sun, 10 Apr 2022 09:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649584318
