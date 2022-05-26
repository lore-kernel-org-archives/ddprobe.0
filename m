Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE4C21113
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 07:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653551879;
	h=To:Subject:From:Message-Id:Date;
	bh=W1QbXRYJ/SP2wauyCE7W1tnym46mA0yBgof7mMKa7jY=;
	b=ftVZnMUA/flZpH7xv+dvGZ6pKHrd6rGZ1L4PKYPFhjbSpakoDpTIOwmbxeiVG+2O
	mxiTdsSCahvKO1o/YgVpDb4jZ5FvM4xUZZYYLufRwMqHLVPgAemx+l221zZWuDO5euk
	TAyOFx7rtLw0ccBRjL4/zk/XqA4qnodNLpTDjzo8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653551879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W1QbXRYJ/SP2wauyCE7W1tnym46mA0yBgof7mMKa7jY=;
	b=EZd1ya9XBJ9BJp7C8IEjmXK12IkQjJrTIyUjiqWZBkpvAH52wJ32k7HxHhF+lnSJ
	Ws63uiyDfbzs2PuFwAYt5fvzpPvQk4NbHVrk0GAKeMp4CaSNGfQk41lQ5rOhClvJhsD
	98ckZB9pMOOt2rzTURqqnZlsGENa3bYCzz8M07uo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ff5f5442-0e286245-db45-42e6-ae22-e559067e8797-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ce4d7a39b5ae5544c06ad4a4dbb423f11e9d74749528a572bb2d5204bca6dce
Date: Thu, 26 May 2022 07:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653551879
