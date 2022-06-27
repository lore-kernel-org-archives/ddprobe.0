Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5F37A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 06:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656310612;
	h=To:Subject:From:Message-Id:Date;
	bh=HBh89seHNEUpxpOiFcdH25VvEAO89becZGc7xruVSco=;
	b=DkpUaYHqYJYA7J040fW5IO5WrezPeEQoZIUCvwsgHiImkGp5IQxMC/PRmcSEhDO4
	M5pvJJcSchYIUUImxkGatq5fityi0PgpzAPuPvPIqXZsxQ5d5h2zTDaieTNAFN/gPAH
	PMEIfefoqVEv0AsFKc1PNfQtsb2DV45bL1rNdwjs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656310612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HBh89seHNEUpxpOiFcdH25VvEAO89becZGc7xruVSco=;
	b=SRhIL4bFfYDVIrkvHto64Ta+4apURhArUn9eZRJvO4yLh0/R/G4ckas3FaSOY5s0
	n38pcmDCRpnY7ESO4r+CxsaTydxNdNOOJHk5foFaleyoZVwezlBqwTFTPaEqAmJ9PsI
	RbQYIVRYkMsmnjaon+Yh99xS4T4XiGXpNF+50gUo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a3ce4169-24580616-5a19-4a09-a497-e6ab2416eaab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5426d570e47b8b9a6547494916c995edd851b4fb12adc457fa4a051fcb38fe55
Date: Mon, 27 Jun 2022 06:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656310612
