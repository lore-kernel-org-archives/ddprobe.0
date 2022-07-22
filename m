Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D29C15A6
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 01:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658454412;
	h=To:Subject:From:Message-Id:Date;
	bh=N4BtISY0pfKXTB+jtMff6f5++eGQ6R4x3X/q2Vbg/NY=;
	b=UKd7mqXOfWgp80EqJajCAbMSD6SMkO+gwBA2RnqJdG4yzt4kcDBoDj13h1QoNx2i
	bnAxdYLnxkmVD4BIcnKaGLmpbQJqT1Da5rw1F+PZDOizM/jdRV+iREzzsEObowCLunH
	pTybXIDdRMQMGuEoNU5pnUgbGeiiXEbrF17Ch4yA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658454412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N4BtISY0pfKXTB+jtMff6f5++eGQ6R4x3X/q2Vbg/NY=;
	b=VhSK3rtgACIdp7HPvYrGKRNLCDo9FKt2yENcQla8A5DL/fRaRxl1U7jgIokviRaK
	Cor15STg5I3IK8EPBpEqDqm6oF/t1WYShWmQI3qkzbu3n6y/mbVX8MT/IV69x/THPbZ
	EnvddTiIygCDalaCdQfeYrTIgyxNcfcZuUQvESCo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018223960be8-530a2822-4f7e-4bab-9310-9d0e965b92ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: afe827731f75ad0f19fa9ba00b5e434cc9425b7845d1b680664edcb9d5d0de44
Date: Fri, 22 Jul 2022 01:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658454412
