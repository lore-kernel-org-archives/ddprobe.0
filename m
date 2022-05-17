Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2A21383
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 13:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652793359;
	h=To:Subject:From:Message-Id:Date;
	bh=Spp98HU2riplPabU3IGpPEEBAXi0GFdn1mmOP4VuSiU=;
	b=UM7HTVg0DjSRddpNK99oOvS2Ts5K90yex1/FuCiGKQ55LLed0gXJ8Sd40lwER4Qm
	i8DdJJKltQfkBs25hOWlgK+xnwWLbjDj4xM8nDgtkZn3S0vTrHA52P8AO6qFGV87iTl
	vdnCiSAV7K/oGTA4xuPpyBKW/NVU6pyPULThrcnU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652793359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Spp98HU2riplPabU3IGpPEEBAXi0GFdn1mmOP4VuSiU=;
	b=PSfwVimL+swZ4VkBC2kpCNC6oKj83mGKcJYeD9EATeMvZV4PO9jVc3r3p3Q58poj
	XQ6HlkvnSnnJSs41B2jLqIfCR5Ga7HlKiFqKm760KMOXNN8U157WiMt7edoCdFeDnV4
	Uc3/LFkkSbexI+ZXS9qDvLwbJ3HeERoJjgnDILBs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d2293bb9-e00a9c32-415a-4993-9dfa-898d546b13f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42207f74fbf05d22f2b3cf1b844b23261ce1959ca76af62a6f954d846507b448
Date: Tue, 17 May 2022 13:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652793359
