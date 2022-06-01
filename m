Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0020B33D6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 21:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654118099;
	h=To:Subject:From:Message-Id:Date;
	bh=o9xUG4kCdv7dSzIeo0k+2e44KoHvMpyqj2ZQTvRlnP4=;
	b=R6gRkZjjM/ZY/rP1CvHMzBsvQaD5+IMbcImY+0cZ8hXBU4M8KAlRhlHlGeEpvqcz
	lp6jNvS/ac6/Z3CPiQBt66MZ1w4y3/Nsxl1v7PZbFd1M1f2egh2QYHYRQVyVhUPnUpF
	YZi4xkm6PENhlis9h5Xqra0RSHGNXDMwKf16j1zs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654118099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o9xUG4kCdv7dSzIeo0k+2e44KoHvMpyqj2ZQTvRlnP4=;
	b=iI7Gzwt3HiJu8XI8FNfxUlMdZ06Kl3ETsf/IwYhednD6gY2T8pGBFWTPfQZGORNJ
	o16Tt26daBtvLr+RJEgogDgnn42yTGaR5tVgAQySJn57EUfwTsSWPW74hprAnTrUMpT
	j6Jk+jnTn5AxCgpHKwlbqTih6wzLlhTlZJ/5+4qQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181211f2947-eed2739a-0de9-4e28-b9b4-d5a7c5500221-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 471cac29ddbd3f1b15d8d768a79c4f38e7be921ea80827b9b9cc2253b53b3470
Date: Wed, 1 Jun 2022 21:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654118099
