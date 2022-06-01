Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94ACE362
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 08:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654070879;
	h=To:Subject:From:Message-Id:Date;
	bh=RegggZ97GztuFqT3oHJ+U9j76u0dKTwZ4PXdHaryRRw=;
	b=UNCV6g0jn09GypBsykh8OzQ385mxedCsCUER9tSbXSSHOCiUySliY9ENDssWGOTi
	Lee8+vgo7ASWCiuPJs8/FcBxPDJfqhpO0lC77eRUdLbYxcRpd+hAMcmTKvzJtpQrCDL
	cLMHSs3IO6F6YlmBMDvy9KF7hemTUYKZAqZGgkE0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654070879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RegggZ97GztuFqT3oHJ+U9j76u0dKTwZ4PXdHaryRRw=;
	b=goVYCWSpFW9BpUyZoEX9nY2YD8p91ZZZWtDu1LzJ/E8x8Fqeyv8mBZ5kRJ+5IpO0
	ZGCrsLDbVml6REP/7hGNSznhC2b1ZcHvGc9yf08x2bePBu3qpeHCHq5OVW+twzgLizF
	+4nq1Jr+jgWkEibuxMrb1uglVtIOCPoFIDWJoDXM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811e4ea40c-2117e05e-f3ce-48e2-88b0-bd4d16f128a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9dec1c1ee0f8dad0eb5ebdda44488fa1d0419e772bbea5ed375fd915a24e7e3d
Date: Wed, 1 Jun 2022 08:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654070879
