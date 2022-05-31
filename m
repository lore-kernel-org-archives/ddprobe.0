Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8D5120F1
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 05:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653974699;
	h=To:Subject:From:Message-Id:Date;
	bh=gpM9uNeZEUMyDt0D6X8JR2ZD1wyks/OJHq4hTqjzbrM=;
	b=HXK1zWbkmYqX1d/pcmoXO/KNNMLAlZiWZ51xTfH8C6r4tC52W3HVeWE3AureLb+M
	rNWoGsec4cjDvZbw6fS5Vw0EEl3RmD1j3qihB28t199p5edW5k2V/KaLfrZJnSBFVOk
	deBeehMLPEGPCi20UKlc/+NQM9mEnzYGo5h3yP44=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653974699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gpM9uNeZEUMyDt0D6X8JR2ZD1wyks/OJHq4hTqjzbrM=;
	b=TcbqDIJYP+uoAKMOFKwtKwdx5JjBG8QO0LukXdGNs2rLjDaJ3QWpUphRUYnADKGu
	M5ntA3pf0rCmnhBB02i9x783Kte1RhBLvAzDksX293C+Z4N5K9PJbr4O54FDqBwmhBy
	m3JOUJyzA3D25zahC1j29i7GAS2HpQOc6+kudiqA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018118930d07-055d95fd-844b-4bb2-b5a4-2741476ab3a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d3b51f82db7a65d126a88b148202f2ca8e3ca9b40997a751c4f72f04240fc67
Date: Tue, 31 May 2022 05:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653974699
