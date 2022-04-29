Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD5D1385
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 12:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651234978;
	h=To:Subject:From:Message-Id:Date;
	bh=VTE7h5WDk0YFHwLiDWRdIyw3Xj3xGcL9pTKw4Qa4SjU=;
	b=VZDyFlbrkfyhqo75PrmnDOD60DuzovaL+8znfP1r/+8Tm2HqQgiGSsKG825lTtJ5
	loY9vYRo8jzlVwZi4EDrDfd1Jsec+0r6gXP+4OxXVBWJv06eTEK+pGcTne6WHU6uQq4
	1V6EuLVaknhtYwdURbm+UQ/3OAvHhRL/B7BGolJ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651234978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VTE7h5WDk0YFHwLiDWRdIyw3Xj3xGcL9pTKw4Qa4SjU=;
	b=jCLUWRGqQuQMnWPVmKXdRYlPr/2I733CEEcNEXThC40zvJ+PnXdcUIn04LXR7y3/
	8jwubALpc3Dt0hyjO1FdtCF9shigd2xspS1s+ko+a3ac5hfy3ovo1p7rHofYGJZVG64
	wl813Wmy0PGXM6jD0YpSNX0A9PO3Mxj2zjoCKjTY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180754639f3-238f1980-051e-4c31-93be-6798e913af58-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7884c0676305398e279aff36c4360d5ec19ea502c5beaa1c3cdf5b45202c19f2
Date: Fri, 29 Apr 2022 12:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651234978
