Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257C32100
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 07:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652427059;
	h=To:Subject:From:Message-Id:Date;
	bh=A1QtekTjM+4HFS6THZj99QMvZtnINZdLzXs0e46VFIk=;
	b=CdltNmcCzG6gE8xdrVFq/SGGqEl5G/DA5tpN9A4ajaRNrwF1wYUmCjZM/aBT4iA8
	8CNYBoNZCtmERkJH5yC4m4wtzL+Y9xf5O6P6PdbrBY7Rf+ePf+blSa/EWkQOn7SBO4d
	gtarFDKhb1G31Q+/A8jQOe50glwqN0NaoNk3AG74=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652427059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A1QtekTjM+4HFS6THZj99QMvZtnINZdLzXs0e46VFIk=;
	b=TPWBViTscQ80QvK5qyrtBrqpKLg1OcHnR4muHydQvzIeArWw0fUG88rTRmMN+v3R
	+E7GvculkruBnSqTSbMBuBJJTj6KLbLmcDqkBMQoKeVXqbAdkTrsb/e60UAUjV0yZlP
	yGFBEFsVEnDf3/h4IfvK3leHImFDAe1+AdtATWmg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bc53f057-096522d5-3309-4e9a-af1f-601e7180f5d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 651232062bc398c4c8823f27412778ee9834fd03e60d2c271096570e3309e19c
Date: Fri, 13 May 2022 07:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652427059
