Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8C11101
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658997052;
	h=To:Subject:From:Message-Id:Date;
	bh=3TOkoKV2Yr9JA3TCLy355pP9EiAlAggdYnY9NCMldLY=;
	b=UXLu4dy2u2/vbYhkloOYMtDx3ibXbfrKI7v/S530XiQKhrdWrH27pQXywbbBH6MR
	JvOQWNHT/ZBvH/A+C/3YhGH6gSV3w3LVypMJA+BSG86/sh0X3FuF39VCIKYwshMVI0M
	m/rjp36yG1a2igZn6UV+wS5NlQIS242BPilU6wzc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658997052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3TOkoKV2Yr9JA3TCLy355pP9EiAlAggdYnY9NCMldLY=;
	b=K8dqM3oWyEuibfbrCxaSg0rwp7BGAPBY575JrOcNj+vc9QS1B80FibTjVmJYcCq3
	oal2Bge7p+C2trMJBGXnjBGsac+qXSBGOkySauJd3YHaXUU5VsWJS0Ku+JG1V+KntMk
	QPKFUh4pyYP4A9GZ73TtSkTwffWXNOSRsI5nbSJU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018243ee14ad-03efbb34-a1e7-421c-b28e-5803e0d48fdc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f592a6b55eeccf949a7e167905833183b4e04825946fceec39231ef024be0202
Date: Thu, 28 Jul 2022 08:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658997052
