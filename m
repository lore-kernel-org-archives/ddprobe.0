Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1313623AA
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 04:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657600012;
	h=To:Subject:From:Message-Id:Date;
	bh=hDsZmV2W24Z0G+SF2XBjk83uFY8QbBBjBxEYstWkr2U=;
	b=ahQmVsJ+jbaNHygJNC3imN3t9NxFU2FDGy50yhMdMHB2j2XVmdnUNNQlpnuKLD0V
	jV04PTByxs3LwYQMDujhGUcitsiz9UIpF4QravGzrLhmAFgsd4keMAhJT069NL1eWII
	fxZK4vJ4T94F2cHyXvxXLkwIW5/ZMOd1/69tufU0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657600012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hDsZmV2W24Z0G+SF2XBjk83uFY8QbBBjBxEYstWkr2U=;
	b=BPt+DZUezs/2kGFmsl/xoD7synsT/EO0ZjThMIJaZNYiSAxLUJuRgHWF7Nq7m3cH
	VyJRBmaHOfMfrTMZujYxd2ygAOsd3PAHcmsEUtzC1KFsOWJzYY/X51HQz00oAXhjsjd
	C6Am+N90j10DDsVo3IB6gDNyhoSyJ9bxoZTkD0jU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f0a8f01f-6a03c4d6-b9b1-482c-beed-15868625ea60-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb0b92f26e5541a27b54c75d493fa0ae09ad81f4479d6780ddc799a8d1538fb7
Date: Tue, 12 Jul 2022 04:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657600012
