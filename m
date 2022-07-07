Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3867C
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 15:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657207012;
	h=To:Subject:From:Message-Id:Date;
	bh=DcpGQZu6lGOLfdwaDRRyV+yPcscvlVBcW8q6gUsfWfc=;
	b=Y39PgNaykiDSrRjtKy35fQUscpZfthjfVz0vUFyHVl+oTBhqw8OLvdCVZdQWdDu4
	f2yQBKA0UAQBMoewFJGRVa3o1GbZpQzM0RLUjUFnXUy6ffCq1iYUp6Wv9ZjVmXbCaed
	ALp8i+NLPRPuGDNbWnj7ChhL4mndcQIz8DGSNZv8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657207012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DcpGQZu6lGOLfdwaDRRyV+yPcscvlVBcW8q6gUsfWfc=;
	b=OYnUVWy/kMKjeHvv2IW99DNUZdsDdE0fZJBPF12Oty1TaDaHQVHz0+kWMYrJKliy
	olaWsEBjgi5KOgI+ur2YrciIKorL3hZbWUZCgV+mr+kkRvJr1A9jnQhG70MaPKXlGSf
	tHAjeQNjidpGMz01Zd3p4/j1DmgXBvaxatrbeu+M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d93c3bdf-2d57a4c0-b469-447c-af8a-72d8477bd8ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3211f96c1146a1c346bff14ac72eb8ab47e8faa1e3155ed9eed318a84b41367f
Date: Thu, 7 Jul 2022 15:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657207012
