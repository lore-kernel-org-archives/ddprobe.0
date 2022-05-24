Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6B3628
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 03:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653364079;
	h=To:Subject:From:Message-Id:Date;
	bh=+tMSKr/OWPdGAlobcZzyb2dVpMY+nnLjotCmwZQ+6WU=;
	b=ZXUgpK6IGwNRAIjWKNTKmeC/ggtFTutyU/6ESZc3Mt2dfSOI/7hZNZGtzUyqOvKg
	FenOoYQQ0g75CZ5LybxjDEVVPY/9WF4dvDQP/DHCEs4KGff+HZDIHnEjlV05+nqQHHO
	XCHqRqRx1oISJCUeVJNDP5FstKr8wJsXP2QBoRtU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653364079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+tMSKr/OWPdGAlobcZzyb2dVpMY+nnLjotCmwZQ+6WU=;
	b=Eu1aBAK1NCScaLRq567E54GPm1zKGpPDN0SqIe/ACSQrRmEA5KqOSJYF6V2a5WBk
	m81q4Ru4SbB3T4aGpASzx4x9aXxgcVVXtbPUUokIcaYt47GQGywKfXcj/TYu9FxeJrw
	Nzgkgx+S5xSV5APt2bRBiW2/JY+4frGqiqu5ZZao=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f42dbabe-f3ffcc5c-e1a4-43a8-9919-70d08970be05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e31f45b0e89cc4fbc2e40a29f868487991ad7b2b21ee05b78107e71986300e5b
Date: Tue, 24 May 2022 03:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653364079
