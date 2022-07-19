Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE1710FA
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 06:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658210812;
	h=To:Subject:From:Message-Id:Date;
	bh=VvG0P4jXjMOEwPuFlJAXUIYuUFn58cuH34KrFotEFl8=;
	b=ckmwoiWl5rn8Ibomb2bCp4CAAfvRzabcu2aEyZU9tEI/U4iUt2k3k+7p6p7JCauI
	ibJqkJkxLBP+p2xUCXO++ZNISzVy/YTWsQYso2rkgy+YnsL7bF+HD8ev71IlznPn6fU
	oO6Qc1hmdEZroLBwvK7qMlXhq8pgpSRh9XxK8U6Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658210812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VvG0P4jXjMOEwPuFlJAXUIYuUFn58cuH34KrFotEFl8=;
	b=Z0f0+CmBKDduWOyZTYA6qBaS6mPk0tzFiuJvsSLGBHDYt7pPMMZt/9M4BFrAPEcA
	W+UTDPpOmcXv5oTPfcm+6o3Oi+RHiWouxWoLSeFNIDgLOI4IO8rOFaehf1ThLNpRx5D
	uxQr1Z4bjoDeealf0VNOyVLnHSmIZtm/5om/qaZ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821511017f-8a502eff-563d-4b31-b476-a9ea00b399f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e2f0ac0daf1bee32eab50d46d3272c5c4e40d7828620075933f1200fc885b25f
Date: Tue, 19 Jul 2022 06:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658210812
