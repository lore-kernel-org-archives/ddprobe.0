Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB1B23AA
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 22:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656802612;
	h=To:Subject:From:Message-Id:Date;
	bh=mMsipSSmyfz9lv9w6uwmpjRk5AxTJi5319ZUWFKDFZU=;
	b=OxQ7OwtzCoMHkJjJYr//RIcaUkGv1obmVHC52WRtGR0NLsHf3TgfsJuj90Y5sp6d
	C0e98cZ4x4zMLSo4mkwnJYdJZ/7D1fpqI7KWdpiE7cuJJDI7nMgxbrl3+BArFtRUtj2
	6Jdy8raGRW4QdlMi1Dfxm1C/XEzJuBmO3Xbm0s2M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656802612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mMsipSSmyfz9lv9w6uwmpjRk5AxTJi5319ZUWFKDFZU=;
	b=CTLQlmE83ziXJgQLhnbD5AU8vZk9V7fh1P3a9rSwW8aNZjUUdgOa27+wnLN1fAAm
	bLhPJBuy0bQynU4KDWJTyoO86Oo0iGb2iFDsRvTDaUl7Iqq2ZplMSl22HbLBcu0J2Xk
	k/93+HgZagCn/vDElIo+824ieFeRyRRBM9vCGi9I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c121943a-b3242747-8c9f-4e9a-aaad-978b92836a7a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a29056ded7e0716b447779e038b5edb6707ca1b77e4a82636c65b9bd34126c7a
Date: Sat, 2 Jul 2022 22:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656802612
