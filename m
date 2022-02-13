Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 814FC365
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 13:50:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644760249;
	h=To:Subject:From:Message-Id:Date;
	bh=EN8Bh62I2aJ9kg5jrOGNFuppP1FQ/UJscc6ra1g3Rn0=;
	b=CAZXv0+2SgQbEDcpdQzJMHwh3NJ1GThS5iNCP6sSE+zNcl5h7UvvGpfwajbPQUZv
	E8QPm+4ut0tIQV9rPRqZPjGoeDiO/Uzt1tg92p3swjChyVyxWdZ9oIv3ediFjplVuxH
	pSRkRD1aihhUA/kWz1Eu/zkDfL4unIemay/FeQ4Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644760249;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EN8Bh62I2aJ9kg5jrOGNFuppP1FQ/UJscc6ra1g3Rn0=;
	b=daNvON3cVgN4WgpUrwXiO1oP/+Y1QbUhvmOAcpGbL0Tf9ql3Yecq+dMDNvkDL7tn
	D8CvWWODA9Yap+O4nxpO6aXW1K6LcMRrDw92zX2n3ksUkcPM0woI6gdtB7q6qgMROLy
	ZDU7bnUSVLqjdPfZLCC2f7T204Y4gUfz5ZwJnN6o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef359b335-5008898f-1c88-4055-a969-dc55b7b7940f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f3ab59482858466754dc4602bcb71607e21e5f4bb6fadd81255ed5e36266625
Date: Sun, 13 Feb 2022 13:50:49 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644760248
