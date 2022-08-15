Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5140F7E
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660557052;
	h=To:Subject:From:Message-Id:Date;
	bh=91Q1A4kUDoLYlR4GMjFSO2T0EltgPjyH8jjt3wDChro=;
	b=AT6swUCli5qoX6O51aMz4nT5/pnVr2k3nB4QsvqIHS3x4IuG/vC2nmQwgkt3Q3dI
	iu3cyMuT29WZ/ofvGSe2iElRCatBIu3drFpJLZbHC/QfUy4CYH4XklkiN5NG758/ZXS
	z6FEAlLPSX7va6+22D4+rAZ8xn+Qsra08xE6MRKo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660557052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=91Q1A4kUDoLYlR4GMjFSO2T0EltgPjyH8jjt3wDChro=;
	b=UWpuAdaGil4XhB2ksWE1ZzQQkQcQlDaCV7k4RLLKosAfxsRskUVfwcJmivFaMs1V
	BKXc6+qXx3MfeO5qD/oT58BfdsrSz2W+hdZxAeYCjXD/gYT9JfokBMPUvtjcopqyAQ1
	Qxhvxd4+Aqvek3at8lSVXw0oYuVICSCOJWiPUXyc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a0e9ca9d-5e0b2754-530a-4674-871e-c2cd61f135cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55248e91bbb6b7e9872e65f7625099c2628eab74684381ec66c592ac022b01ea
Date: Mon, 15 Aug 2022 09:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660557052
