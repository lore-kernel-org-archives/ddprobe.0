Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DCA7D
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 10:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644749442;
	h=To:Subject:From:Message-Id:Date;
	bh=vx/bRdR9EsCmS5LMg7z/1qk4JAsvi1CbDWes0/rEIZs=;
	b=jSX/krTjdccq9diDtvwttcOEVqHw0QVgiU41VUSnNMLNE/Qcw+kRhEs0Qcw07ZkS
	ecHW42vl+m+p3RwBrOS+yoAXIeJNf6M+seIY65iHPYDC2hysZVDAiL/hHrPg0hosEHT
	p7ANcFk33qoq1hcTpZzckOcotDKBpg6u32HCT+dA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644749442;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vx/bRdR9EsCmS5LMg7z/1qk4JAsvi1CbDWes0/rEIZs=;
	b=Qj1E6tMj81Yxj/QHP3EOGZ7Y0L7+y55hNT9iv6o6cSQAmuh1jG0oP/9darDD0q/k
	dkre3qI0HiSOSNl0Z0RB9E/3xLZ90B0b/7J0U7o55KPIEnaknYyzXg7ST+NiLH8jGl8
	wzwuIrm5h0tNVEKEEXmmnN7DsrVqq0grHIKTl4uI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef2b4cc88-96d11372-ac94-45db-8082-00b58de5ae0c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 143f3cbfe60386504fad1b85be4f0cd4e19ce1fa11fd9ed41e5942c68633f4ef
Date: Sun, 13 Feb 2022 10:50:42 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644749441
