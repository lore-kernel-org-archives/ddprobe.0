Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FC33D7E
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660659652;
	h=To:Subject:From:Message-Id:Date;
	bh=oPKHcXfWjo04KroZGVJCKJoCozOw6TDmaZW/hoO+m4Y=;
	b=NKaDAkXyLlNEjYSDmZBl1DFVNTj0uMmXq4+v7ZF30WwaOZGU9BhbRyTcj3NWQSGn
	fCRybW9jWlhrfVBe9rC2WAWGBjaRP1P8N7fz5qXpeKYRU+oLqFuhSGMKdz6gdL3oyMM
	Ll1dH7rpT05k0fboeOSOJmMBflzgBf89x/g4UTlQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660659652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oPKHcXfWjo04KroZGVJCKJoCozOw6TDmaZW/hoO+m4Y=;
	b=Ynm8H0gkJJMoo5mK5C40kLLD6D6J07Ut/bLZU8IWrIz0Dl2wGW8pxoN0XMfwLE31
	djRbnJ3R5IKeJGPjU9GIHigoxKpPFsV1WB9IiLsl4p5fvi32dpJW0Uwtb96EJvHgx0U
	gxLbQcNgAkzjckAeV5F1uPLC947VVRtB/LNJjHEw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a70757bd-12d62f4d-52bc-4a2c-a742-166bc2b4029e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f2d92d4e409deb8b3fe362fc5eda96f1b29b4ece473c2173e79b6475b6f36558
Date: Tue, 16 Aug 2022 14:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660659652
