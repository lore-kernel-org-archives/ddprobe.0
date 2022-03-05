Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B615D7C
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 12:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646484385;
	h=To:Subject:From:Message-Id:Date;
	bh=V0j9vQFoBS3N9IJ0X0kDeOjFdSS0P8gEWonpcT2z96I=;
	b=PMgK7NqYUxxmX9PPcQZO3efUZyAqf6jRfUqkjEdPuWesdnuD4LFOE4o10zVnC/kH
	nahfu0NabxiT7/hgQbGMGp6Qd7FfXPrk5lFqDvZgHWalI3fCX50KbeeEJl2NgbEBmOW
	RGV/9QgPaAMCe4a66zRWSpgzU6VIhUOxMZU+Nh5s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646484385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V0j9vQFoBS3N9IJ0X0kDeOjFdSS0P8gEWonpcT2z96I=;
	b=NHAb4q75Q4iSXZk0uBMft0YCuHIBiRUqBPqGNpz58OzNOk/lKuEphlewLHihamjr
	lzgZIy9Z/tEKuahEIcW7C1ssfeRjp9y51Gb7ZoVKhWTlzC2BzjnYR8rjhI5FBB0BFQI
	BA1Zqq1cT4J83gdIiq5z06kNAj4mw9L02+NfaKXU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5a1debc6-24a64607-954a-48c9-b4ee-2adb2a4024d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d412c698e2ce659998fe9c6821835ec65bd22b3ccbeef08e6c7e1f3518d3c297
Date: Sat, 5 Mar 2022 12:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646484384
