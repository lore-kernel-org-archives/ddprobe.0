Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC74C10EF
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 16:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645807285;
	h=To:Subject:From:Message-Id:Date;
	bh=MuaoGIhJNRmWvX+FrbIalGpj8TdfijPul05a/+Ymoeg=;
	b=e4Qz8JoCY5DoHo9t7ivtfh4HNHfRSofCpNZ7Eg35g9orGdKNK4xo3DqwpPqjefvw
	mwXIKWoJqvo0gSn5tFQae9oT781YoKM5EHSguHa1yzvBeiZIBNkh7Jmqd03knFQAGGm
	SUEE9EFkVmFjU8gRshziiktjn8f6qW0gk1l0KnJw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645807285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MuaoGIhJNRmWvX+FrbIalGpj8TdfijPul05a/+Ymoeg=;
	b=RxDAK+D4jCAeNoJza+/QbnRc/fK0b1pT5JP/9eGcaFAkpvFObZnL9PBaJTjeFnmt
	BjETWnJPg0O3cYYPGK6qKY0PeTZJxNzBrcHLbMGalDRHUKoYnQQDL/IX1rocInZ6Un/
	fnzgOfbmZdQGHvYqsXi7MsowlDX66yJbhffJH5cY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f31c2323e-a4c4d981-82b3-4eb3-8b7c-3caa0e508186-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c159232bfea55d4530c45c89aacabc73636e3e8fa68d2bd6b6a5ea729b1374e
Date: Fri, 25 Feb 2022 16:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645807284
