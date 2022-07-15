Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B6A7A
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 10:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657879612;
	h=To:Subject:From:Message-Id:Date;
	bh=vai0wE4Kn3Mr+4irLZnCDj6WEmJ4zGPIDouhL4ciSLw=;
	b=RuLYfBVN97glGyGy0W6LRUdom7/sHaIhld0I+9LK6cm+TsBnEvaYd98RI3qCbLMO
	ZGYbdosqXXRrX6ao2UBPrCDZlqh8frv89ajx9uzQjXp1xucoMGAUyl4Dgd4iCD+Nj59
	Y9SC7ZrdQP5PmFpq5jdFylB032WqKJnN0v/adpNw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657879612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vai0wE4Kn3Mr+4irLZnCDj6WEmJ4zGPIDouhL4ciSLw=;
	b=G4uLO0Z7pYmEV2t6+4TnfUK1UAzoPVZUOgilkmu7o+fk2c6zn/MSm7YsxtikIQ/3
	BpTOGiAu1eiDeR//5ralTYm8/MnzI72RqOkrlcqQsB1zkjm8r41e6pQdAysjifgg2Tc
	0NNGZY0cnwudB2L482K0SXPZO9nzN8DlmcyEWavI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018201534b75-48761b2d-142d-401a-978a-ee14ca0ff6ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c5679a9b9402d9425e3238a4e49aa95753de8c429b12b31774024e2ecc9c27b
Date: Fri, 15 Jul 2022 10:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657879612
