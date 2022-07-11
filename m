Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CCE91FCE
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 09:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657530413;
	h=To:Subject:From:Message-Id:Date;
	bh=0MHfCS2+8yqaAozWyLl7QuLwv6c4Vw8NX+ctiaTvdbQ=;
	b=d2PV1Ywv+gIRGGv2cJpB3aH0Fse9DhRFwVH70NqWJNVqZ/bEZ3D+GNmO26aCn/8o
	E+ri3s3+/p6mBPb5fzukUNdWA30zHcn28NclKZJhevl9dmJ51oR99ut6RuikFCcatjG
	uzfGVaGMZEvtdwwbx4FKh5vpvG0pQAg0cnEEG6zQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657530413;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0MHfCS2+8yqaAozWyLl7QuLwv6c4Vw8NX+ctiaTvdbQ=;
	b=SqXkGdUHbd4tH57PV32h+UAdu3BNn1mofdzZCpqlFqrrQzfLCFEnlbpf5yRF1yyY
	gPwBkylZjc0KpV4vlkhETr/qXAasbB9+PdceWj/JZWD8JDuSatIVgkJOCtm0IUcNZNA
	QOoZW60lqxLVKc8h5RMLRlHIby09JT7dYkB2n49w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ec82ed09-7fcd5f1d-fc55-419e-b098-34233e23fdeb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47e1293e66c4976a892525610ec5dcd3316a1696463b34ba5bd3fa7c2e12503e
Date: Mon, 11 Jul 2022 09:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657530412
