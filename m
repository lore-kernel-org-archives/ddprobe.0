Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F23C3D89
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 21:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657314412;
	h=To:Subject:From:Message-Id:Date;
	bh=N2qmVxFNnI9mEsB8DIJRDeoWQX6fy6DQl2JfF2R/rRM=;
	b=kY5JhINhZGJY0rBfyVFsJJ51zlysuehabna+nxgVQyeWnH78I2g4MwrZT+ppuyF3
	LwfnJQt15G9AD3Fnl4Q/4bzDLo+lcju86aA9di+LCRXaX+aaKVWyToWenuPWYTmFcFl
	7NWF3Es/PamCnJz8OWlDohDue15tWAP4z144S90E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657314412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N2qmVxFNnI9mEsB8DIJRDeoWQX6fy6DQl2JfF2R/rRM=;
	b=EYcnJ73yvjRCqaUV6PDu+RuX6cwpVwBNGoIbc9ghC/K3vLpAI2iD0yirYtENzFDf
	TJALLcO3JEaR60KsFH4jzccVK3s+YFSpq2c2lKZ8DRNBRfFxJiKs/v6sORXYqw9jdpR
	sW9MHAXM12JfcZfFgP/yID/+rvkDmMsn+M6CrOQ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dfa306fa-f2db7055-db1d-4d1f-9bc1-c8960d8ca340-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b364a5b02159bab0451fb7bb147ee781af1577ec8638bdeb9e6d8189a2749cf
Date: Fri, 8 Jul 2022 21:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657314412
