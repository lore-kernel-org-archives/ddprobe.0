Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314A1290B
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 10:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657882612;
	h=To:Subject:From:Message-Id:Date;
	bh=V304PutuCCmjq1EeYhmNq3LPqHZsBinXg2MuGD0zoLA=;
	b=hVocbGR+rIL1ls5YKzjzzZWEzTHj0ZWeNj62KhfZbjwrWXqTGrJvkGeRu+lWfc5p
	hpv1STvHHEYOFgaYqBq1P/H/EKkLVUaLxRVALGPInFKm0Y3pTi3lZXc0qH7MtZkp0ah
	+/aYsSWntDSRYbPnN1ufvHAIB2e+vyqHpX/cULdA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657882612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V304PutuCCmjq1EeYhmNq3LPqHZsBinXg2MuGD0zoLA=;
	b=LFVWj1YXJ/enChWjAsAuRRc+5pNMwntbRw5Bl3xO3uzEMDTyqIRw3ML0RLHUTgFX
	hQP2UnkoIV/cUyCf5UkJDtgUMKqE1kbGuVCgRYzCmsty2U7+4cOIxoafVWu3w/gMsIt
	lUtV+E2AhCs83IDe657bn/pVLEqtlXvjv/7/q07M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182018112ab-93c76ba1-3947-4342-ba0b-dd6e8691f812-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b62f33f298dc41a42f5f8bf86c56fbc117ddfefff272e7757c1be4ca171dec35
Date: Fri, 15 Jul 2022 10:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657882612
