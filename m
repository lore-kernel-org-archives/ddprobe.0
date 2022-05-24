Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044157C
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 18:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653417719;
	h=To:Subject:From:Message-Id:Date;
	bh=5ZBe93hT9cM76SlMlYESSQ/hi9mBf7k0oHvY05FnHNU=;
	b=LXrpMH6g+Jc9DSvMbAbq87o2LeBO3mrte0YR1lPsIDG1aT4fc+kkfTDs8eJzA+Fy
	ZPwApxFd1Y31Hb024N1isJG257I/6KTV/9OpnRtXgM3ktfvgJ/XWKHLxoYtSJ/d32u5
	MisPAPTBo0+ZpK3vaYgwa/KWgZhd/nEngHnhkMEQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653417719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5ZBe93hT9cM76SlMlYESSQ/hi9mBf7k0oHvY05FnHNU=;
	b=D+tPYBvSzT/tOWTWTRXWNclQPVXQCfwPMVLxE03P4jLD4D2M9FElp0QFPbZSL1fr
	0P2mUIqGYvKAoy7P3rkwX8YrlBHCnlpMvidPQbTO2Hh2P+8ODvRTLF16Xyp3w+FgxD6
	XKapMdMlwEEAVgY+c8Vh1x/3gJt8d6Rc4NVSLYZc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f76035cf-325efb3c-164d-48f0-ba67-d588de0e16ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ef86d4462a97a285d3d2c0b8189290fb2bb59c20e8b4f98aa2c9888e055c24d
Date: Tue, 24 May 2022 18:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653417719
