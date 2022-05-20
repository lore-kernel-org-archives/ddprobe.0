Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCB233C3
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 22:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653084719;
	h=To:Subject:From:Message-Id:Date;
	bh=yriU2nlQg3oxSXa3xjubFy+6VsIEPG7ZYsD0SpRW5u4=;
	b=P6SFlLy/VMcC2MhEwaH5B2Yt5Q+RoqNTzc+Y45dUInwJcq+jHH315yWSC+YA+0Uz
	QrXS40uhO3TO7XE3JdhE3EbMRWUFMtdDbeGp6IZ+euvPgEsKfMXg5e5xLbr83c8wi4C
	9nqjgv9wKUvjEYUK6YVWaHugXvaO2E89cxOeo0Sw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653084719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yriU2nlQg3oxSXa3xjubFy+6VsIEPG7ZYsD0SpRW5u4=;
	b=QezyOasbzuBss82rgGkLgK27GEeauRMBiJNGkDZ43f3OyXOLiPX5PUW+O7f4fVeS
	jaYMSQG7DuHK7oklIg03nxQQDO6PEz+7JWC3dgnX1c8lq+Nvp4T8xq38lhV1HhWh8h+
	GjnCDwOHKP3x3ydoiB41Sxolm5qyfcn1+zvzvJm8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e38708a2-155ebce7-d458-47f0-9f3d-20d7aebda211-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5eb5230cab7fe580295c989f30ebecd6ee01f1372ef5aff8fe44159717211cd2
Date: Fri, 20 May 2022 22:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653084719
