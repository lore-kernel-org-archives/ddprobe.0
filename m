Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 607EF23BB
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659943852;
	h=To:Subject:From:Message-Id:Date;
	bh=8NdH8uflgXQBZ7L54sFVMXhNHm8tHZoNWQNLOgUPMo4=;
	b=ggP98YtsN1cbOo2E0Ad58mHq3T0qALKmrvaxpcJw2pzrYc1Zj9Ann+dtCzUyTB4M
	3Ez8N4H5TvuZVcMEymPCR1dOwljXu01Ejl8BOu+Fnii6PCgfNB1etDM5+Do74g0NKl7
	Vw3iB2Ljv9pEvcP5D0TBBMxzzF8EEYZHrk4eTdQw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659943852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8NdH8uflgXQBZ7L54sFVMXhNHm8tHZoNWQNLOgUPMo4=;
	b=dpuxtoiW7NM0oSLn/M5c/rDUss+xTIK6qfO8T4SFPT9V9VYX3bG5uk0ZJ8K4Rvyk
	tZmkW6+43KZBOw9tCwooP5nLcV0qNVK/CGZeBRcdnSREGCUoBEcX+5Ax0KXfIVWeDEE
	O0/klJEMTRq/P1eEffujSt9RMnbYCgcyohxVU1H0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827c5d1a24-f9ac58ee-b64b-47f2-8eea-2d13e47b0506-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4307f230bbe74b37fe775d5e918de496831ba9e155a9e3c8445987fb240e0726
Date: Mon, 8 Aug 2022 07:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659943852
