Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A2123CD
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 20:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658435812;
	h=To:Subject:From:Message-Id:Date;
	bh=LpiNnRwsni9vhPKmbCJ9rOJGh/PfnGw+T5sLZz0PkU0=;
	b=kerCUQhdsF9lGF3NcRSsdFLMFH+lVtXC177D8JRy5wGLKFG5iykA8MexP/3mqf38
	quQd5vUiHnWSPXWi5KE2H8MCHaipMLJs4BJJ504aqQucTor7544TXPIH5OTBXyPgdO5
	Iuec7bQ0Sp6meWdgAPSH83f4PJ7siLILreAjRklQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658435812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LpiNnRwsni9vhPKmbCJ9rOJGh/PfnGw+T5sLZz0PkU0=;
	b=X9J+YzFk639pBx1turdT03pILKDceC3iAYx2HXFhBoOcqXjmsv0n0fJ1CLNUd/7e
	qWHkEkEPq4f4E7xkuYbor5gMxs0O0H2q1xeGIB/D7kY0lEijXobObdD6JbCByr5Po60
	dYO3MvdXdIjd5KHBLolCy6fO7NZPpgCoRhKMEweY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182227a3bc9-936751ae-3ced-4d39-8f64-f587a1602bfa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52f5dae9591b7564c6cc95bbd80e5049b5a9b5ebc0adf1b1eaa019c1f2babe6b
Date: Thu, 21 Jul 2022 20:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658435812
