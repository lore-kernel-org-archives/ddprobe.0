Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 029331854
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 01:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656812212;
	h=To:Subject:From:Message-Id:Date;
	bh=eQViPNDIeTHOzLZkgYU4l7Tcs8naSHDnFj+c9fapkok=;
	b=YsG0rTbdtv61hewIs30m46QjyUxFhRMCseTL7hn5UNI6A4iy6/8dgH4Q3z9ob+wV
	LsSnO/Hzy2uEHkI8IuIOq1ZY/KZwcolfpXoyohWTCORqss3pnye29LGt16pEJ01b55p
	OIh/8cvlKT30OMiJ+fq4PrIQwE6HmBT8UlDYfeVc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656812212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eQViPNDIeTHOzLZkgYU4l7Tcs8naSHDnFj+c9fapkok=;
	b=eIrKaR4VGhO6tfD4zTiYdkkU8aYQrCdbKn4H0eUHaZdLl+Cjsv15x159pqtdOdt5
	ecC3gbVmg6dL7AuWwdmh0tmCVXoEkf/e+0X99Fvu3djdLftYUtuhCqBz97383FFKSAS
	ejJxPb3wy1ZADK7Cjm2JqANOc7PORlUES6lTD3h0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c1b4105a-243152ff-d754-4d9f-9f5b-7b6bcd4ad32b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46fff8ab39e1fb26eb84dee02af55ceaf006bc70797eafd2cfd4a2a700553143
Date: Sun, 3 Jul 2022 01:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656812212
