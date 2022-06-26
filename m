Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF3FE7A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 11:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656242212;
	h=To:Subject:From:Message-Id:Date;
	bh=K9FDU2WWu2vaoSFZ56b1pPnN23/ugbjnLlsQAo/mW4w=;
	b=FfkfuuZZoDzW4kmI+FWnVmHOFRacj+5aCcNh9vxED1INdIZ+TNl1bcoCzHamrbqY
	Okm+UEqTqAa4JnWBSIQGcCpl9Ryb/f1HSbkPwvNpHqRPfADaxgrr+ZLi9WJVlqmBzwA
	t9lrX+DQfPn12k94UCkWLz26HQtgWBcuiXDNfkJg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656242212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K9FDU2WWu2vaoSFZ56b1pPnN23/ugbjnLlsQAo/mW4w=;
	b=OmagTHrv29bEsih7NZvbmLRtFv4n+hrzkjRcF85ez19LNUbh71sF4wuYxHPSOeKA
	SvzLKV/s7Ti1tof9GunvypFtxnWsJ97SPnHnKp2bs0zw2Shqs/ovIljz0Fdvv7XHsRT
	5D+Mfe5h/bwmWNw0X8vdMngrwUPhNFwaMp8rfsss=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819fba8db5-912ac4aa-f530-4a6d-b0e5-65c42eb622d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae8182a35909817f09f7f2ccc05364a7e97883c0cc1e5b94932fcbe16dda7176
Date: Sun, 26 Jun 2022 11:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656242212
