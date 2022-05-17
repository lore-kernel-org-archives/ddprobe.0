Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172AD1383
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 12:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652792159;
	h=To:Subject:From:Message-Id:Date;
	bh=5EfWCDkgiazCcEHQjuP3EkBmQO2RkMggdi7mQxwJLNA=;
	b=ELtaGK+sqKl3p8jPwnvzEd2G72ZdLrVvJc1I8xkqueFC2peB2Nx90sHWoRvPHLbz
	dSP8rxTex+hY1vhXkMzj2IJtwOhKP5TVso5jN15YI3/2c8LNl6iJFCZqCIDyXpR86G+
	FpR3G01RpRe4CkzEe/1HCe0+dgMhC4v9CPNNbbUA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652792159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5EfWCDkgiazCcEHQjuP3EkBmQO2RkMggdi7mQxwJLNA=;
	b=d5BVHwRCOkJCSnr1Xas/VjZWDAln6ovSn39qIMIDgF4O1SH/f4hgnX51BuLPO+/4
	2QnOvjk9NlVEtIQz+kvtQBlKNjoMtVj7tIhjIHNsWxKnXW1RL/Whg5JVo6/YoP54BVb
	HczwmVjyKPpvqS/2CMwM3ODa/utZ1kzFInJyvypc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d216ec9b-c93c057a-a7a3-41d6-8610-5f690606becf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 148d5abf8ee37f836fc0928766dc4527ee76bab029927e03c1cf493f048aefa4
Date: Tue, 17 May 2022 12:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652792159
