Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AE091366
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 05:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647237385;
	h=To:Subject:From:Message-Id:Date;
	bh=swAId27GbPL9oi6SmQdxVrQnzPFkJn3RGunXwmD5V0w=;
	b=hUcw5S0yqoUPY+Ge2MDI//GB5uhAPDEsc04gI8Gdxob2mDcfGCW7a+fMHMGjT9iv
	ny+EzR3OAhUVloTM82i/i2Lot141li31bru4M7iyqfpJX/O+GdnyEGQb/47/G3ln45l
	Npx/a0NnDYaN6rKrIH9K+i8+7ZvccwV9VhSV16Cs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647237385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=swAId27GbPL9oi6SmQdxVrQnzPFkJn3RGunXwmD5V0w=;
	b=MkTSeRi4fKAxXX6K1qpnyqHvynSx9elw/uZNGIimm2vnvQDeH5Af/LkK//pVB1us
	8JsK+NtLvjIDE1h1YZCeDsDRtP/gLhTijb/9RiSwMffr0Mc+GYgoGsIoXjHRLfswnvG
	0w+bbNihdRE2yt1I5mjKHXmwMMM/27t0ZwxEzwTI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f86ffca31-2cadb680-1e9a-4536-be8a-708b36842bf2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f0f1a522af0d07c88293bacba6d3f8dd2105c9644cdb1ad7704182bd26ea0d5
Date: Mon, 14 Mar 2022 05:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647237384
