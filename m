Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A33B28F9
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 11:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653908519;
	h=To:Subject:From:Message-Id:Date;
	bh=dySuZDhzRm3QALG44EvFvBl56b5GkXu48OjxPcLfYng=;
	b=JERUnSJ5MId7A7tftQyL7oTYBp4liXLLbZZaaForfXms7AQQSnlme8D0ExdNC0K6
	nftm1fnKg6Duao+XLmhOhgN/A75iZWujy7KTnMHWopNsj3oVOxkMkBFOLwwFZpt5xnh
	SLgT2vJtD7ztt1DREYchy2x55b0avcJ4DDSCcwa8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653908519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dySuZDhzRm3QALG44EvFvBl56b5GkXu48OjxPcLfYng=;
	b=jp1tLhOPjHkTxooWVZOhhfdahFOgr34TG8TLQmhhp/zycTvfZNO/SWJwtxFS0reR
	jay4haPWBBMFjkAcf6PisVY7yT6g7vJJ1VNJ0SGBAZ8CyASUyyiCkud4M9aPWdJ1I4c
	g6opDdC66EbTqV0A7tueYEiatWdkpEWttX7rtAH4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018114a13a0c-1134fddd-9393-4d3b-83e7-38093381573d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2afe4dba272b9fe1388a082b3f9060e0c8d1b6974d80cf2eaac2569a6f8c2110
Date: Mon, 30 May 2022 11:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653908519
