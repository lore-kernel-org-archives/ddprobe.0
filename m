Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518DB48B7
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 10:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646044584;
	h=To:Subject:From:Message-Id:Date;
	bh=uXal6WCkw56LNI68pFVMgMBPPIfd6r6pI6hTOpaQhTY=;
	b=lnMZV06pn/ReCURyQOI38xwlHhXhMrjTxG/aYsHkadlo/chOTtmUhCKGfg0SfaDS
	62dO4FZh0XGNkFcKe3Jjpx7BfAdfzsvIKuDnvGlCsbeF66w2KTo8tc6hritbuseZ+Tp
	pHMivhqVbI+mmZqk1iI42hNhsjvGhX3d+BguYXmk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646044584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uXal6WCkw56LNI68pFVMgMBPPIfd6r6pI6hTOpaQhTY=;
	b=N/TQ/BuevnbHVBFktAUGoy1ZhSXi7FEIl1I+KOfP0g9npFph0w8T75mgLlx8MwKJ
	sZndjcSZ5QSuDg0vhyrHRE9qhiYQny8HKBlC8pF7A6T8vs6lDJwLYeKR7YancgMNAH9
	/lENLx6znM1sT1bRHiC+Qc/h89CBCQuyo8QBoY6Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3fe71b45-dabf895f-60fc-48b1-bc2e-9e16b2ad2757-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa8428ae1ebaa5f5af81ca2f51ad68177f21c8a20463a0fe602787e6c56a6917
Date: Mon, 28 Feb 2022 10:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646044584
