Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A6CFEBC
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660566652;
	h=To:Subject:From:Message-Id:Date;
	bh=+ohZyXSGTo1qYMfO4pp8/V9Z3+MRzADDjyB/nFVCCdA=;
	b=g3P9V//8vDVruzuK9eXKVRPjKm6R/YePHO2RRaWTOrwfEpu2HTrFDSg9kbdnRuoh
	VmtszHcbv/5tw1WVAfM1MN9HE5Gx0FzddbCN9dMDgvqDKA4hgYK4fOB87qjonnr6fRc
	m1f+OUYdljc/aWeiAcvBp3Kl3qs2f1Uv5PSmAlgo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660566652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+ohZyXSGTo1qYMfO4pp8/V9Z3+MRzADDjyB/nFVCCdA=;
	b=GTqj4RFY5BB2Apar5U2MhQLl5/w1i1O/YRuNJqq7MjxKpXnC6ES3+CErTWzuOzpO
	XwwFa/5LsUXuLHdWzrnkc9ycJHPE+qBg6nKceDLspMkUxqHzREARn8WfeNgCt9wLL/6
	Fq1MD/5ro6ViP1XP99X6EtTGm/PuHgJ5N9sQYDco=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a17c4708-116e37f7-f2a8-4550-beb6-9250ff084f4e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c40cb078a88b4b62ce493f38b0d3c7051c8c670a97da6a6d221412249c21a2a7
Date: Mon, 15 Aug 2022 12:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660566652
