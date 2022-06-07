Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC2C7C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 14:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654611479;
	h=To:Subject:From:Message-Id:Date;
	bh=P7sAtx0XDhmb8PGH/8AGlZCGfSkpNAcSSuhHsxMClYI=;
	b=Og9ydKOz5NB5ND7er626KlibncJ/rtBXgUfPdcSsWlKRvB7QbaZ/a/fRClTxm54E
	6p9xqdZWx1nqETaxHTXs5VB2cESGeqxbM7BgP9/YSVSG62EqYRnXIVa3NWgK/ACF2iZ
	IhwzYoYXT7/oNozje4zhXwM+A9i0Of012XQkFvMA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654611479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P7sAtx0XDhmb8PGH/8AGlZCGfSkpNAcSSuhHsxMClYI=;
	b=BajNUHgEur9i+zZTFJ1c76rWeIJ4VYcGkF58tl7ID8DFyO7PE/kljCMbm7g6Kl89
	c4rR6m2msTeNLcDuvRvehll8oHPTPtYMhFDql71zV/MnXlOzxTo2e9IN6TFMbYQjp/p
	zIjpwJw3bF7w7pBLnpYZs9bBHRdkLPYoCxztYzs4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813e878aec-fab82718-4c75-46cc-9d98-2e4cd4b6311e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c35eb95066ae5327969543dcaa05d72fe3c4d7cbf8b9cb496d8798905fa3fc1
Date: Tue, 7 Jun 2022 14:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654611479
