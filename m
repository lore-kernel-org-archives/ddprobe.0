Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9AE97F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 03:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655434919;
	h=To:Subject:From:Message-Id:Date;
	bh=GQNqaoZ9sypm1tz1tyPKbJ+ae1g5AtBa80kt2bfnAw4=;
	b=KVXFfZAodJPhOzmbSwdnD8gEP4jz6EJ5rnidEsgTUBd/IOI9gBNPqiV4l1aolXtI
	c22bno/7jmYK+4KPft7Qrh/BY+1YMi2Osfv7VhCU8CQh5pZS3KJ7EUYCOz6DZsCRrIA
	NgYo39XU6t0b0SHqK/SYZln2Z0NGIh90FC6D6hSU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655434919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GQNqaoZ9sypm1tz1tyPKbJ+ae1g5AtBa80kt2bfnAw4=;
	b=hiiBPXrioK2Z7AGiqo+1MEAwRfDXPw8ddNITcCfriVEiBS/P14PS9Q79KPewNbuN
	0+kL+BTGfRSSoUJB7sYehG35exd/5IJ3Tn9YqfQY6H6MpvLZuz1WbikNBd2nfIptlkG
	G3Ah4xA+FP4ZtjQmy6HzR0MovsEHFrxV6cvOaRIo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816f9c3d5e-275dff7d-69ac-46f3-af02-fda5cc1f04ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f4fc95ea460241aef3dba7d652a0d667e3459597f7db0cf63f43824134e18eb
Date: Fri, 17 Jun 2022 03:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655434919
