Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71F392F44
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 20:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647202284;
	h=To:Subject:From:Message-Id:Date;
	bh=etCbyAJy2qgc02D5JFgqMEO4+6xam75GBrPawiI333M=;
	b=HJpA0iZwaiD0mTXR4+8VA+XgUE0PJfe5S1VG0D74KZc45K4zX8XUdo2fadWJDIXI
	vUs+q0pJ/5Y4ddNmIlsVBG6zLH0hplxbe9bHcKKzwCMh+jenUjHlJ3FdWI2E1tNzNoW
	pOI2EFuRy9S4TsJ+2eJsZ4yc4XrcxFdl0SEGla74=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647202284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=etCbyAJy2qgc02D5JFgqMEO4+6xam75GBrPawiI333M=;
	b=NsNSdyrF6oQCqr8e7VmqGbP6J0qUbrg+g1K28DHytdEZb7ovbDXQDIBk62dIsqEl
	5ZgyOPH83RjQsQjAhk05BbhluJQG0bc9HbBLvwfy1UyVxEqZRYZ2C6JlmCxMazw9s/9
	1FXd5oTyzXudchryU2t/QGmcvXzsdXC0LBV5639g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f84e834b3-ad4d0974-4ec1-4be2-ad64-5e88af4bfacd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a01e25b460718e2cb06f53e4ca9bb15bce49739698f8fa38e954c61e530118eb
Date: Sun, 13 Mar 2022 20:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647202284
