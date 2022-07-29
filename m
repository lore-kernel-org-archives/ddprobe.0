Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DD5033D6
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659079852;
	h=To:Subject:From:Message-Id:Date;
	bh=vFtXq4hfh8fFAaYdv+vA/Xq5VEDlbPuUa5ytdAdSS7k=;
	b=GsyNPpql/8tWwAgf4gQ0hEGC4cMmhpC3xiRLsB0WMZpBPsXvoJ/G4oymZ2NK0hGy
	Q7vlFB2uxRtxBS++07srL7bx0lcvBFDmGESU5P30Y8pIjve55cMUedh5B0Gc7BHCgUE
	jji5z46s6t+A+mNpGZ0MBu3f2ILZR9fsuho1qsXg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659079852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vFtXq4hfh8fFAaYdv+vA/Xq5VEDlbPuUa5ytdAdSS7k=;
	b=aUR4tK10Ua8rlTzkCV+DFIySVdIhmvK9jm4yW7LdO1KOG7KdLkEtdWyuKa5YuH+W
	znCOcTASjwu6iJqGTlphaC0BCCFNBra1xn41qDshNP5EROckivQKAZob0ediQwEqoJq
	8M24/WD7uzR257ttXRFYFCc/d22FILb5sdgVa73U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018248dd820b-46c9f760-0aa8-4846-9bff-5e46dd27973a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b90b16f568d00b0267c9288f4bb2d3d36ac4afcd28bc65e66c2e488ec6f470f8
Date: Fri, 29 Jul 2022 07:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659079852
