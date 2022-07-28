Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75606EA9
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659004252;
	h=To:Subject:From:Message-Id:Date;
	bh=Vw/2hUor+HoAL7WkEoHcQQFn4f/Ft3OP+IqG3I/a3FE=;
	b=lfF601DU4FAUhqZ7R83o1h58EmL3ir4o82sZ1dh0WpGNcekK/VD+8tmMnmvOBf4C
	YnTVm7V8SebGazfwUpo7J9iMEajJQJvXmJC5ZR6ywwqi/lgdULS98DOMB+zbEitJOxp
	Btb+2CdoXX5EVZ+i+4eVUi4+sRTwl8t8IVVX8NCc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659004252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vw/2hUor+HoAL7WkEoHcQQFn4f/Ft3OP+IqG3I/a3FE=;
	b=WrvcposDBR2ZRRUh0Tev1kXeHOnIkvT18a5NDmG+gsSIoOLg0II0ITyN3LDkHj9F
	ll270ra6L57Bf/EtXj9eaU1cryFJS9JZ1uJCL1Jzg/vMBGmy9E7f4g2ppT3ARtVJ11d
	iK1CkfmRxLhbrJERQY8J75v9zbS+RcO2FfgkHIfc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182445bf1d2-bbde4939-6bba-49d0-9de2-9f6d18f03b4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52a57719c40527ba1a70e1bd91ca914add92d34072690f19fd81640ba9f1209b
Date: Thu, 28 Jul 2022 10:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659004252
