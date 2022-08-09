Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A7E24682
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660064453;
	h=To:Subject:From:Message-Id:Date;
	bh=jlA9QhpUQHR+43gaDxgrFLGRFiblwtahgM1gAqcefZk=;
	b=F8JxFNAD3snzeEiZ70IYSa3tQv4IQhp5yzMZsnP4gUVuDLyunEsrvnrqcpjs88Mt
	6EBnlVk3xvubZOesMZ8e0n0KADCeCxZLn9321zb+7rIOp8jC5TOEXFhLHTKoNT1ipBo
	or0J23ZX3rzaayPvnpBNNjq/mz14d97F4/57LTUA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660064453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jlA9QhpUQHR+43gaDxgrFLGRFiblwtahgM1gAqcefZk=;
	b=c9Dsb3TaL+L0c382n9K1TyLRunF1R6Hl7zGmPKXrGDiUzsZcnU7aa/fFz0CfXEQ3
	bLlWkJY65POz3arQaXhHBpsyqyq3PXRWynYOjwvpKoFsLFhguX0dSxLEFCVfusfhkG3
	p51UdDexZQd0BgUQZm3Gei13BjBWtZH5vm3l5Rso=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182838d4fd1-155a7546-579c-4d37-9387-396662b22c22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff7c2bff1deac478467723633089f7f8a84399dc555766b178816b78e8a9d4b5
Date: Tue, 9 Aug 2022 17:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660064452
