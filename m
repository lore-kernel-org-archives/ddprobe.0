Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073867B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 01:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655517599;
	h=To:Subject:From:Message-Id:Date;
	bh=0g1VU3tHsOkvrwpUNe3aTFDpyD0kqiV5bTDH2D7J/Ow=;
	b=ItZ6UUDB5Iws/9ixX/1OBKTS/WGTdAMDWdZ1TkdKKNDJ/uTgZk6qdH84lUh5cwuy
	pG/CtfQksswiSBYgNAuf5agZPdZJ6Ujv/h80JUmEl3db2oSnaQtC811CQrTrUhRSKPy
	5HkfpIIabLaB0MVg+SqdPgOKJzgq8NOs6rrUyaQ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655517599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0g1VU3tHsOkvrwpUNe3aTFDpyD0kqiV5bTDH2D7J/Ow=;
	b=IBed6iiCoWSlXdxB/kl6X5cZjJYPRw4MXBEFR3rUrsXkMGvH7PeP0KOMTk5ohdnD
	nuaBaUz8pAnDpMC4S5n43BgewCLUUwO5Nq24VftwzzFRemWJpei3GZbptqf4+NYd3FE
	maEjnzqbPIwvhsobylI+3dxQzNBfFwx5xwJILXZc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817489d5eb-02eb4407-0261-4907-befd-367b5044280f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d44579e0df4f46a3db4ae7553b4502e9c7ff752b052970937a7143c875411135
Date: Sat, 18 Jun 2022 01:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655517599
