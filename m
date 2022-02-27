Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 828582F2B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 07:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645947384;
	h=To:Subject:From:Message-Id:Date;
	bh=JB+zGX4s13c/EcFtNff7nqxdg0bS0Y+IUOdZDWp+98w=;
	b=BnY6GeZIzURZHYIz72S9vLIwumIEfLLdD57Ie2LD311ef1nZVDmf77Z8KJm+Tv7i
	VjqEwxeb2vgTSel9mKkTwTgsjMv+CqVZaRkYrAKh8ZjeOtKYoWs1HW7KEQCehNGKM6J
	GfRfgtu8vOEjEshpw/rpH79KgbtqCKewjDv7qZBw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645947384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JB+zGX4s13c/EcFtNff7nqxdg0bS0Y+IUOdZDWp+98w=;
	b=JMZ4ZtxGobZnOlSb1e0tCCubLCDDFAVlvkpzQjR3ZZvmLIlqANxEMlGGQ3opkh+m
	fLITkOGYrM4+HR0CuK9jT5mOahUVyhC/N91id2LOT8zLvF40Rb3i/370skwFM/OPmcU
	OA2881fKbQvK3AWaewfD/qE1+kDcxqhva0BYb11o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3a1bf3f6-66147a9d-9ace-4044-a46b-ce68b7028ebd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77d2af7e581851aea7b6821dc846ecfd445e4513ae2cfc00c7a0bf1a606400ef
Date: Sun, 27 Feb 2022 07:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645947384
