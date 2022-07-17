Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DC280F
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 12:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658059612;
	h=To:Subject:From:Message-Id:Date;
	bh=lJWeY6OSXrBDhsATF0UhsjBM7JPEvcpn85CUb0C/Vm8=;
	b=TvOtX0pi1m8HOMAXwWOS+YqsjGCG3xOlI96EIAVitOXDGR75ZngZOkuGCndkqcXR
	oE1yLfNL8L09Ro18fm3dfOFxTs1gsnG0ag7bYd/PL27OGB5MU3QLm7pQN7Dz+q8vjY0
	d56NQiKhNNM9pjjYUPvf/nzTm0ll46ufNf5esnGg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658059612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lJWeY6OSXrBDhsATF0UhsjBM7JPEvcpn85CUb0C/Vm8=;
	b=WcH2sIIMSio2/9VRS7zWIgfk3YMHZeVsk/3fT19mdVe+gDuumPcGfNLnIEe+PxQq
	FrsN/B8ai5LGdCBTkk5Y3v07lgcGPs78TdLHzPEkk03m/jFmvMKAdkbCUAK2gMB9uAG
	DBZgEaAeOFxFQ1OFlSU1JVtHIcBZcpo84H2vjM3E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820c0de0bf-90b92302-5c0e-4663-8a6a-cdcded6d2b2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f4ae6cf28dc9c9d12d48cd2cee6ef8d221a79684032c15bd857fd26967a15f0
Date: Sun, 17 Jul 2022 12:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658059612
