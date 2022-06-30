Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB984C94
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 13:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656597412;
	h=To:Subject:From:Message-Id:Date;
	bh=Kkeb7hIZcMkClIEPqEMoWQsi/DDiWzQ6UBt4FxRuKjg=;
	b=iRobnRvvQ/32e3C2dMyh2d7Vfr8AV1a4qQTTBKELd7aPcNdvYhWgFuR6nYwXyZuM
	noK4CFHHsYP06sZxmE32DlJuI03INQQnWC8vtnuyLTyd+zcGCLTamekAebh7l9CMFqN
	Q1eUkoZRnqGFz5dn8SZpioaHy/lb7T1Tr82y2PkY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656597412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kkeb7hIZcMkClIEPqEMoWQsi/DDiWzQ6UBt4FxRuKjg=;
	b=fx0upKv1NZvaS+0NCU0jdAIHvkl4yPXDMGoBkQJ3EIOVyVViPa21TjuhAiyFmfOn
	l2+ay5lsoi7n82rumKliRiwj70zJsd3qjdEsShufBGuVZMPTQPA8AmML/N5MIRkscew
	VCFAHrtxZq7+sueakpUNonvdm28kR3N4vJRhedQY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b4e67a0d-6be51aba-090c-499e-8b93-87dd1a39f9e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2bda8f1c5d6d58c0486426e1e3f371dc67a3a79029ec42eb21f0e83cc680f454
Date: Thu, 30 Jun 2022 13:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656597412
