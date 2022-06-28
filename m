Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFD52624
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 14:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656428212;
	h=To:Subject:From:Message-Id:Date;
	bh=Wmqpbq2HWLs5bsQwwv9Orm1JICfysJDPjQnYHnSH7XA=;
	b=e43JKBwFN7x3orR0HGdPQTrtwDzLmj1nNDmik2zF92M2SLVGfeT4lm+VQWDZDKwc
	uorUYsP3aeVVDJSiTJWT7tc6i0xTSXETpAZAZHttsoXB0SqZk2C+yS5O8K2ln3BnKJs
	nH84v2BH517ku+ea94bdzXKEpGc5lq0B5H6CqQg0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656428212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wmqpbq2HWLs5bsQwwv9Orm1JICfysJDPjQnYHnSH7XA=;
	b=RtDauyP06/fSNTizpkITWXTi7mMTu2EW4azFAjAp4GMYQPiSSTP+mAKJwMzd5mSm
	kFSN6BJQ7i6rMmH01u5jr334OMTAYI4QoRBg1vrqeRUBVEfSDJbsIyIl/WWETAz8T4C
	6N6n531/rFsK9cH17V/NY5VKDR5peXrVYfv99j7M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aad0b013-c9fad54a-5214-4a34-9bcc-afce3dfee9b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 353eaa782be4d61ebaa29bcca0fd62df05ce1c5de6e3e832a8c01597d8414e83
Date: Tue, 28 Jun 2022 14:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656428212
